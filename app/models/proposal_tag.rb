class ProposalTag < ActiveRecord::Base
  belongs_to :proposal, class_name: 'Proposal'
  belongs_to :tag, class_name: 'Tag'

  after_create :increment_counter_cache
  after_destroy :decrement_counter_cache

  private

  def decrement_counter_cache
    add_to_counters(-1)
  end

  def increment_counter_cache
    add_to_counters(1)
  end

  protected

  def add_to_counters(val)
    if proposal.interest_borders.any? { |ib| ib.key.starts_with? InterestBorder::SHORT_COUNTRY }
      proposal.interest_borders.select { |ib| ib.key.starts_with? InterestBorder::SHORT_COUNTRY }.each do |state_key|
        tag_counter = tag.tag_counters.find_or_create_by(territory: Country.find(state_key.split('-')[1]))
        tag_counter.update(proposals_count: tag_counter.proposals_count + val)
      end
    else
      proposal.interest_borders.select { |ib| ib.key.starts_with? InterestBorder::SHORT_CONTINENT }.each do |continent_key|
        tag_counter = tag.tag_counters.find_or_create_by(territory: Continent.find(continent_key.split('-')[1]))
        tag_counter.update(proposals_count: tag_counter.proposals_count + val)
      end
    end
  end
end
