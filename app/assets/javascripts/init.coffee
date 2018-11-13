$ ->
  checkCharacters = (field) ->
    button = $(this).nextAll('.search-by-text')
    if field.val().length > 1
      button.removeAttr 'disabled'
      true
    else
      button.attr 'disabled', 'disabled'
      false

  $(document).foundation()
  new eiresisFormValidation($('form:not("[data-disable-form-validator]")'))
  Facebook.load()
  if eiresis.environment == 'production'
    GoogleAnalytics.load()
  if eiresis.environment == 'test'
    $.fx.off = true
  # ajax requests
  $.ajaxPrefilter (options, originalOptions, jqXHR)->
    if eiresis.i18n.l isnt ''
      options.data = $.param($.extend(originalOptions.data, { l: eiresis.i18n.l }))
    return true
  #polling alerts
  if eiresis.signed_in
    PrivatePub.subscribe '/notifications/' + eiresis.id, (data, channel) ->
      if eiresis.resource_viewable
        #if I am in a page with a viewable object, sign it has view and then poll for alerts
        $.ajax
          url: window.location
          complete: poll_if_not_recent
      else
        #otherwise, just poll for alerts
        poll_if_not_recent()
      return
    poll()
  #feedback configuration
  feedback_options = Feedback(
    h2cPath: eiresis.i18n.feedback.h2cPath
    url: '/send_feedback'
    label: eiresis.i18n.feedback.label
    header: eiresis.i18n.feedback.header
    nextLabel: eiresis.i18n.feedback.nextLabel
    reviewLabel: eiresis.i18n.feedback.reviewLabel
    sendLabel: eiresis.i18n.feedback.sendLabel
    closeLabel: eiresis.i18n.feedback.closeLabel
    messageSuccess: eiresis.i18n.feedback.messageSuccess
    messageError: eiresis.i18n.feedback.messageError
    appendTo: $('footer .feedback_space')[0]
    btnClass: 'feedbackBtn'
    pages: [
      new (window.Feedback.Form)([ {
        type: 'textarea'
        name: 'message'
        label: eiresis.i18n.feedback.describeProblem
        required: true
      } ])
      new (window.Feedback.Screenshot)(
        h2cPath: eiresis.i18n.feedback.h2cPath
        blackoutButtonMessage: eiresis.i18n.feedback.blackoutButtonMessage
        highlightButtonMessage: eiresis.i18n.feedback.highlightButtonMessage
        highlightOrBlackout: eiresis.i18n.feedback.highlightOrBlackout)
      new (window.Feedback.Review)
    ])
  #remove attributes for introjs from aside hidden menu. so they can work correctly
  $('aside [data-ijs]').removeAttr 'data-ijs'

  $.fn.qtip.defaults = $.extend(true, {}, $.fn.qtip.defaults, style: classes: 'qtip-light qtip-shadow')

  eiresis.viewport = $('html, body')

  disegnaProgressBar()

  if $('.sticky-anchor').length > 0
    $(window).scroll sticky_relocate
    sticky_relocate()
  $('#menu-group .menu-activator').click ->
    menu_ = $('#menu-left')
    if menu_.attr('data-expshow') == 'true'
      menu_.removeClass 'small-show'
      menu_.attr 'data-expshow', false
    else
      menu_.addClass 'small-show'
      menu_.attr 'data-expshow', true
  mybox_animate()

  # search in the website!
  new eiresis.Searcher

  $('.submenu a div').qtip position:
    at: 'bottom center'
    my: 'top center'
    effect: false
  $('.cur.love').qtip
    position:
      at: 'bottom center'
      my: 'top center'
      viewport: $(window)
      effect: false
      adjust:
        method: 'shift'
        x: 0
        y: 0
    style: classes: 'qtip-light qtip-shadow qtip-cur'
    show: solo: true

  $('[data-qtip]').qtip style: classes: 'qtip-light qtip-shadow'

  $(document).on 'focus', '[data-datetimepicker]', ->
    $(this).fdatetimepicker()

  $('input[data-datepicker]').fdatetimepicker format: $.fn.fdatetimepicker.defaults.dateFormat

  $(document).on 'click', '[data-reveal-close]', ->
    $('.reveal-modal:visible').foundation 'reveal', 'close'

  $(document).on 'click', '[data-login]', ->
    $('#login-panel').foundation 'reveal', 'open'

  $('.create_proposal').on 'click', ->
    link = $(this)
    create_proposal_ = $('<div class="dynamic_container reveal-modal large" data-reveal></div>')
    create_proposal_.append $(this).next('.choose_model').clone().show()
    $('.proposal_model_option', create_proposal_).click ->
      create_proposal_inner_ = $('.choose_model', create_proposal_)
      type_id = $(this).data('id')
      create_proposal_inner_.hide 1000, ->
        create_proposal_inner_.remove()
        create_proposal_.append $('#loading-fragment').clone()
        $.ajax
          url: link.attr('href')
          data:
            proposal_type_id: type_id
          dataType: 'script'
    eiresis_reveal create_proposal_
    false
  $.fn.tagcloud.defaults =
    size:
      start: 12
      end: 24
      unit: 'pt'
    color:
      start: '#fff'
      end: '#fff'

  $('[data-tag-cloud] a').tagcloud()

  # proposals index, search by text field
  $('.search-by-text').on 'click', ->
    field = $(this).prevAll('.field-by-text')
    condition = $(this).prevAll('.condition-for-text:checked')
    if checkCharacters(field)
      loc_ = addQueryParam(location.href, 'search', field.val())
      if condition.length > 0
        loc_ = addQueryParam(loc_, 'or', condition.val())
      else
        loc_ = addQueryParam(loc_, 'or', '')
      window.location = loc_
    false
  #initialize textntags when needed
  $(document).on 'focus', '[data-textntags]', ->
    if $(this).data('textntags') != 1
      $(this).textntags
        triggers: '@': uniqueTags: false
        onDataRequest: (mode, query, triggerChar, callback) ->
          data = ProposalsShow.nicknames
          query = query.toLowerCase()
          found = _.filter(data, (item) ->
            item.name.toLowerCase().indexOf(query) > -1
          )
          callback.call this, found
      $(this).data 'textntags', 1
      $(this).focus()

  #executes page specific js
  page = $('body').data('page')
  execute_page_js page

  #select fdatetimepicker mode in according to All day checkbox
  $(document).on 'change', '#event_all_day', ->
    if $(this).is(':checked')
      fdatetimepicker_only_date $('#event_starttime'), $("#event_endtime")
    else
      fdatetimepicker_date_and_time $('#event_starttime'), $("#event_endtime")

