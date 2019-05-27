continent = Continent.find_by(description: 'America')
state = Country.find_by(description: 'Ecuador')
region = Region.create(description: "Bolívar", country: state, continent: continent, geoname_id: 3660130)
province = region.provinces.create(description: "Canton Caluma", country: state, continent: continent,  geoname_id: 9155070, population: 0)
province = region.provinces.create(description: "Canton Echeandia", country: state, continent: continent,  geoname_id: 9155072, population: 0)
province = region.provinces.create(description: "Canton Las Naves", country: state, continent: continent,  geoname_id: 9155660, population: 0)
province = region.provinces.create(description: "Chillanes", country: state, continent: continent,  geoname_id: 3659255, population: 0)
province = region.provinces.create(description: "Chimbo", country: state, continent: continent,  geoname_id: 3659242, population: 0)
province = region.provinces.create(description: "Guaranda", country: state, continent: continent,  geoname_id: 3657570, population: 0)
province = region.provinces.create(description: "San Miguel", country: state, continent: continent,  geoname_id: 3651621, population: 0)
region = Region.create(description: "Cotopaxi", country: state, continent: continent, geoname_id: 3658766)
province = region.provinces.create(description: "Latacunga", country: state, continent: continent,  geoname_id: 3654869, population: 0)
province = region.provinces.create(description: "Pangua", country: state, continent: continent,  geoname_id: 3653474, population: 0)
province = region.provinces.create(description: "Pujilí", country: state, continent: continent,  geoname_id: 3652683, population: 0)
province = region.provinces.create(description: "Salcedo", country: state, continent: continent,  geoname_id: 3652108, population: 0)
province = region.provinces.create(description: "Sigchos", country: state, continent: continent,  geoname_id: 8522615, population: 0)
region = Region.create(description: "El Oro", country: state, continent: continent, geoname_id: 3658195)
province = region.provinces.create(description: "Arenillas", country: state, continent: continent,  geoname_id: 3660558, population: 0)
province = region.provinces.create(description: "Guabo", country: state, continent: continent,  geoname_id: 3657721, population: 0)
province = region.provinces.create(description: "Huaquillas", country: state, continent: continent,  geoname_id: 3655719, population: 0)
province = region.provinces.create(description: "Machala", country: state, continent: continent,  geoname_id: 3654532, population: 0)
province = region.provinces.create(description: "Pasaje", country: state, continent: continent,  geoname_id: 3653402, population: 0)
province = region.provinces.create(description: "Piñas", country: state, continent: continent,  geoname_id: 3653129, population: 0)
province.municipalities.create(description: "Moromoro", region: region, country: state, continent: continent, geoname_id: 3654009, population: 0)
province.municipalities.create(description: "Patagrande", region: region, country: state, continent: continent, geoname_id: 3653386, population: 0)
province = region.provinces.create(description: "Portovelo", country: state, continent: continent,  geoname_id: 3652942, population: 0)
province = region.provinces.create(description: "Santa Rosa", country: state, continent: continent,  geoname_id: 3651355, population: 0)
province = region.provinces.create(description: "Zaruma", country: state, continent: continent,  geoname_id: 3649913, population: 0)
region = Region.create(description: "Esmeraldas", country: state, continent: continent, geoname_id: 3657986)
province = region.provinces.create(description: "Eloy Alfaro", country: state, continent: continent,  geoname_id: 3658191, population: 0)
province = region.provinces.create(description: "Esmeraldas", country: state, continent: continent,  geoname_id: 3657987, population: 0)
province = region.provinces.create(description: "Muisne", country: state, continent: continent,  geoname_id: 3653966, population: 0)
province = region.provinces.create(description: "Quinindé", country: state, continent: continent,  geoname_id: 3652499, population: 0)
province.municipalities.create(description: "Cube", region: region, country: state, continent: continent, geoname_id: 3658701, population: 0)
province.municipalities.create(description: "Juncal", region: region, country: state, continent: continent, geoname_id: 8470112, population: 0)
province = region.provinces.create(description: "San Lorenzo", country: state, continent: continent,  geoname_id: 3651686, population: 0)
region = Region.create(description: "Francisco de Orellana", country: state, continent: continent, geoname_id: 3830306)
province = region.provinces.create(description: "Aguarico", country: state, continent: continent,  geoname_id: 3660839, population: 0)
province = region.provinces.create(description: "Urellana", country: state, continent: continent,  geoname_id: 3650339, population: 0)
region = Region.create(description: "Galápagos", country: state, continent: continent, geoname_id: 3657879)
province = region.provinces.create(description: "Isabela", country: state, continent: continent,  geoname_id: 3655572, population: 0)
province.municipalities.create(description: "Puerto Villamil", region: region, country: state, continent: continent, geoname_id: 3652694, population: 2200)
province = region.provinces.create(description: "San Cristóbal", country: state, continent: continent,  geoname_id: 3651947, population: 0)
province = region.provinces.create(description: "Santa Cruz", country: state, continent: continent,  geoname_id: 3651446, population: 0)
region = Region.create(description: "Imbabura", country: state, continent: continent, geoname_id: 3655635)
province = region.provinces.create(description: "Antonio Ante", country: state, continent: continent,  geoname_id: 3660592, population: 0)
province = region.provinces.create(description: "Cotacachi", country: state, continent: continent,  geoname_id: 3658780, population: 0)
province.municipalities.create(description: "Santa Isabel", region: region, country: state, continent: continent, geoname_id: 9257731, population: 0)
province = region.provinces.create(description: "Otavalo", country: state, continent: continent,  geoname_id: 3653692, population: 0)
province = region.provinces.create(description: "Pimampiro", country: state, continent: continent,  geoname_id: 3653145, population: 0)
province = region.provinces.create(description: "Ibarra", country: state, continent: continent,  geoname_id: 3655672, population: 0)
province = region.provinces.create(description: "San Miguel de Urcuqui Canton", country: state, continent: continent,  geoname_id: 9165820, population: 0)
region = Region.create(description: "Loja", country: state, continent: continent, geoname_id: 3654665)
province = region.provinces.create(description: "Calvas", country: state, continent: continent,  geoname_id: 3659882, population: 0)
province = region.provinces.create(description: "Catamayo", country: state, continent: continent,  geoname_id: 3659598, population: 0)
province = region.provinces.create(description: "Celica", country: state, continent: continent,  geoname_id: 3659543, population: 0)
province = region.provinces.create(description: "Espindola", country: state, continent: continent,  geoname_id: 3657967, population: 0)
province = region.provinces.create(description: "Gonzanamá", country: state, continent: continent,  geoname_id: 3657777, population: 0)
province = region.provinces.create(description: "Loja", country: state, continent: continent,  geoname_id: 3654666, population: 0)
province = region.provinces.create(description: "Macará", country: state, continent: continent,  geoname_id: 3654544, population: 0)
province = region.provinces.create(description: "Paltas", country: state, continent: continent,  geoname_id: 3653515, population: 0)
province = region.provinces.create(description: "Puyango", country: state, continent: continent,  geoname_id: 3652587, population: 0)
province = region.provinces.create(description: "Saraguro", country: state, continent: continent,  geoname_id: 3651244, population: 0)
province = region.provinces.create(description: "Sozoranga", country: state, continent: continent,  geoname_id: 3650979, population: 0)
region = Region.create(description: "Los Ríos", country: state, continent: continent, geoname_id: 3654592)
province = region.provinces.create(description: "Baba", country: state, continent: continent,  geoname_id: 3660421, population: 0)
province = region.provinces.create(description: "Babahoyo", country: state, continent: continent,  geoname_id: 3660417, population: 0)
province = region.provinces.create(description: "Buena Fe", country: state, continent: continent,  geoname_id: 8471975, population: 0)
province.municipalities.create(description: "Patricia Pilar", region: region, country: state, continent: continent, geoname_id: 8471974, population: 0)
province = region.provinces.create(description: "Puebloviejo", country: state, continent: continent,  geoname_id: 3652785, population: 0)
province = region.provinces.create(description: "Quevedo", country: state, continent: continent,  geoname_id: 3652566, population: 0)
province = region.provinces.create(description: "Urdaneta", country: state, continent: continent,  geoname_id: 3650340, population: 0)
province = region.provinces.create(description: "Valencia", country: state, continent: continent,  geoname_id: 8471961, population: 0)
province = region.provinces.create(description: "Ventanas", country: state, continent: continent,  geoname_id: 3650264, population: 0)
province = region.provinces.create(description: "Vinces", country: state, continent: continent,  geoname_id: 3650185, population: 0)
region = Region.create(description: "Manabí", country: state, continent: continent, geoname_id: 3654451)
province = region.provinces.create(description: "Canton Pedernales", country: state, continent: continent,  geoname_id: 9156089, population: 0)
province = region.provinces.create(description: "Bolívar", country: state, continent: continent,  geoname_id: 3660131, population: 0)
province = region.provinces.create(description: "Chone", country: state, continent: continent,  geoname_id: 3659138, population: 0)
province = region.provinces.create(description: "El Carmen", country: state, continent: continent,  geoname_id: 3658324, population: 0)
province.municipalities.create(description: "Wilfrido Loor Moreira", region: region, country: state, continent: continent, geoname_id: 9255326, population: 0)
province = region.provinces.create(description: "Jipijapa", country: state, continent: continent,  geoname_id: 3655445, population: 0)
province = region.provinces.create(description: "Junín", country: state, continent: continent,  geoname_id: 3655383, population: 0)
province = region.provinces.create(description: "Manta", country: state, continent: continent,  geoname_id: 3654408, population: 0)
province = region.provinces.create(description: "Montecristi", country: state, continent: continent,  geoname_id: 3654054, population: 0)
province = region.provinces.create(description: "Paján", country: state, continent: continent,  geoname_id: 3653608, population: 0)
province = region.provinces.create(description: "Portoviejo", country: state, continent: continent,  geoname_id: 3652940, population: 0)
province = region.provinces.create(description: "Rocafuerte", country: state, continent: continent,  geoname_id: 3652312, population: 0)
province = region.provinces.create(description: "Santa Ana", country: state, continent: continent,  geoname_id: 3651484, population: 0)
province = region.provinces.create(description: "Sucre", country: state, continent: continent,  geoname_id: 3650958, population: 0)
province = region.provinces.create(description: "Veinticuatro de Mayo", country: state, continent: continent,  geoname_id: 3650277, population: 0)
region = Region.create(description: "Morona-Santiago", country: state, continent: continent, geoname_id: 3654005)
province = region.provinces.create(description: "Gualaquiza", country: state, continent: continent,  geoname_id: 3657660, population: 0)
province = region.provinces.create(description: "Limón Indanza", country: state, continent: continent,  geoname_id: 3654737, population: 0)
province = region.provinces.create(description: "Morona", country: state, continent: continent,  geoname_id: 3654006, population: 0)
province = region.provinces.create(description: "Palora", country: state, continent: continent,  geoname_id: 3653522, population: 0)
province = region.provinces.create(description: "Santiago", country: state, continent: continent,  geoname_id: 3651317, population: 0)
province.municipalities.create(description: "Logroño", region: region, country: state, continent: continent, geoname_id: 3654668, population: 0)
province.municipalities.create(description: "Patuca", region: region, country: state, continent: continent, geoname_id: 3653348, population: 0)
province.municipalities.create(description: "San Luis de El Acho", region: region, country: state, continent: continent, geoname_id: 3651659, population: 0)
province = region.provinces.create(description: "Sucúa", country: state, continent: continent,  geoname_id: 3650955, population: 0)
region = Region.create(description: "Napo", country: state, continent: continent, geoname_id: 3653890)
province = region.provinces.create(description: "Archidona", country: state, continent: continent,  geoname_id: 3660572, population: 0)
province = region.provinces.create(description: "Chaco", country: state, continent: continent,  geoname_id: 8472358, population: 0)
province = region.provinces.create(description: "Quijos", country: state, continent: continent,  geoname_id: 3652561, population: 0)
province = region.provinces.create(description: "Tena", country: state, continent: continent,  geoname_id: 3650720, population: 0)
region = Region.create(description: "Pichincha", country: state, continent: continent, geoname_id: 3653224)
province = region.provinces.create(description: "Canton Pedro Vicente Maldonado", country: state, continent: continent,  geoname_id: 9155917, population: 0)
province = region.provinces.create(description: "Cayambe", country: state, continent: continent,  geoname_id: 3659576, population: 0)
province = region.provinces.create(description: "Mejía", country: state, continent: continent,  geoname_id: 3654259, population: 0)
province = region.provinces.create(description: "Pedro Moncayo", country: state, continent: continent,  geoname_id: 3653294, population: 0)
province = region.provinces.create(description: "Quito", country: state, continent: continent,  geoname_id: 3652461, population: 0)
province = region.provinces.create(description: "Rumiñahui", country: state, continent: continent,  geoname_id: 3652228, population: 0)
region = Region.create(description: "Santa Elena", country: state, continent: continent, geoname_id: 7062138)
province = region.provinces.create(description: "Salinas", country: state, continent: continent,  geoname_id: 3652097, population: 0)
province.municipalities.create(description: "Chinchipe", region: region, country: state, continent: continent, geoname_id: 3659210, population: 0)
province.municipalities.create(description: "Salinas", region: region, country: state, continent: continent, geoname_id: 3652100, population: 43862)
province = region.provinces.create(description: "Santa Elena", country: state, continent: continent,  geoname_id: 3651436, population: 0)
province.municipalities.create(description: "Santa Elena", region: region, country: state, continent: continent, geoname_id: 3651438, population: 42214)
region = Region.create(description: "Santo Domingo de los Tsáchilas", country: state, continent: continent, geoname_id: 7062136)
province = region.provinces.create(description: "Santo Domingo de los Colorados", country: state, continent: continent,  geoname_id: 3651296, population: 0)
province.municipalities.create(description: "Santo Domingo de los Colorados", region: region, country: state, continent: continent, geoname_id: 3651297, population: 200421)
region = Region.create(description: "Sucumbíos", country: state, continent: continent, geoname_id: 3830305)
province = region.provinces.create(description: "Lago Agrio", country: state, continent: continent,  geoname_id: 3655184, population: 0)
province = region.provinces.create(description: "Putumayo", country: state, continent: continent,  geoname_id: 3652592, population: 0)
province = region.provinces.create(description: "Sucumbíos", country: state, continent: continent,  geoname_id: 3650954, population: 0)
province.municipalities.create(description: "San Francisco", region: region, country: state, continent: continent, geoname_id: 3651915, population: 0)
region = Region.create(description: "Zamora-Chinchipe", country: state, continent: continent, geoname_id: 3649953)
province = region.provinces.create(description: "Chinchipe", country: state, continent: continent,  geoname_id: 3659209, population: 0)
province = region.provinces.create(description: "Yacuambi", country: state, continent: continent,  geoname_id: 3650141, population: 0)
province = region.provinces.create(description: "Yantzaza", country: state, continent: continent,  geoname_id: 3650052, population: 0)
province = region.provinces.create(description: "Zamora", country: state, continent: continent,  geoname_id: 3649958, population: 0)
province.municipalities.create(description: "Toscón", region: region, country: state, continent: continent, geoname_id: 3746433, population: 0)
region = Region.create(description: "Azuay", country: state, continent: continent, geoname_id: 3660431)
province = region.provinces.create(description: "Cuenca", country: state, continent: continent,  geoname_id: 3658665, population: 0)
province.municipalities.create(description: "Hacienda Lazareto", region: region, country: state, continent: continent, geoname_id: 3656668, population: 0)
province = region.provinces.create(description: "Girón", country: state, continent: continent,  geoname_id: 3657793, population: 0)
province = region.provinces.create(description: "Gualaceo", country: state, continent: continent,  geoname_id: 3657669, population: 0)
province = region.provinces.create(description: "Nabón", country: state, continent: continent,  geoname_id: 7648116, population: 0)
province = region.provinces.create(description: "Paute", country: state, continent: continent,  geoname_id: 3653330, population: 0)
province = region.provinces.create(description: "San Fernando", country: state, continent: continent,  geoname_id: 7626219, population: 5000)
province = region.provinces.create(description: "Santa Isabel", country: state, continent: continent,  geoname_id: 3651417, population: 0)
province = region.provinces.create(description: "Sigsig", country: state, continent: continent,  geoname_id: 3651065, population: 0)
region = Region.create(description: "Carchi", country: state, continent: continent, geoname_id: 3659718)
province = region.provinces.create(description: "Canton Bolivar", country: state, continent: continent,  geoname_id: 9155065, population: 0)
province = region.provinces.create(description: "Espejo", country: state, continent: continent,  geoname_id: 3657981, population: 0)
province = region.provinces.create(description: "Mira", country: state, continent: continent,  geoname_id: 3654172, population: 0)
province = region.provinces.create(description: "Montúfar", country: state, continent: continent,  geoname_id: 3654038, population: 0)
province = region.provinces.create(description: "Tulcán", country: state, continent: continent,  geoname_id: 3650471, population: 0)
province.municipalities.create(description: "Hacienda Tanyolpud", region: region, country: state, continent: continent, geoname_id: 3655957, population: 0)
province.municipalities.create(description: "La Estrella", region: region, country: state, continent: continent, geoname_id: 9174582, population: 0)
region = Region.create(description: "Cañar", country: state, continent: continent, geoname_id: 3659849)
province = region.provinces.create(description: "Canton Cumanda", country: state, continent: continent,  geoname_id: 9155071, population: 0)
province = region.provinces.create(description: "Canton El Tambo", country: state, continent: continent,  geoname_id: 9155281, population: 0)
province = region.provinces.create(description: "Azogues", country: state, continent: continent,  geoname_id: 3660433, population: 0)
province = region.provinces.create(description: "Biblián", country: state, continent: continent,  geoname_id: 3660210, population: 0)
province = region.provinces.create(description: "Cañar", country: state, continent: continent,  geoname_id: 3659851, population: 0)
region = Region.create(description: "Chimborazo", country: state, continent: continent, geoname_id: 3659237)
province = region.provinces.create(description: "Alausí", country: state, continent: continent,  geoname_id: 3660797, population: 0)
province = region.provinces.create(description: "Chunchi", country: state, continent: continent,  geoname_id: 3659071, population: 0)
province = region.provinces.create(description: "Colta", country: state, continent: continent,  geoname_id: 3658919, population: 0)
province = region.provinces.create(description: "Guamote", country: state, continent: continent,  geoname_id: 3657620, population: 0)
province = region.provinces.create(description: "Guano", country: state, continent: continent,  geoname_id: 3657593, population: 0)
province = region.provinces.create(description: "Riobamba", country: state, continent: continent,  geoname_id: 3652349, population: 0)
province = region.provinces.create(description: "Cumanda", country: state, continent: continent,  geoname_id: 9155063, population: 0)
region = Region.create(description: "Guayas", country: state, continent: continent, geoname_id: 3657505)
province = region.provinces.create(description: "Canton Colimes", country: state, continent: continent,  geoname_id: 9155068, population: 0)
province = region.provinces.create(description: "Balzar", country: state, continent: continent,  geoname_id: 3660360, population: 0)
province = region.provinces.create(description: "Daule", country: state, continent: continent,  geoname_id: 3658498, population: 0)
province = region.provinces.create(description: "El Empalme", country: state, continent: continent,  geoname_id: 3658266, population: 0)
province = region.provinces.create(description: "Guayaquil", country: state, continent: continent,  geoname_id: 3657508, population: 0)
province = region.provinces.create(description: "Milagro", country: state, continent: continent,  geoname_id: 3654213, population: 0)
province = region.provinces.create(description: "Naranjal", country: state, continent: continent,  geoname_id: 3653880, population: 0)
province = region.provinces.create(description: "Naranjito", country: state, continent: continent,  geoname_id: 3653872, population: 0)
province = region.provinces.create(description: "Samborondón", country: state, continent: continent,  geoname_id: 3652064, population: 0)
province = region.provinces.create(description: "Urbina Jado", country: state, continent: continent,  geoname_id: 3650347, population: 0)
province = region.provinces.create(description: "Yaguachi", country: state, continent: continent,  geoname_id: 3650124, population: 0)
region = Region.create(description: "Pastaza", country: state, continent: continent, geoname_id: 3653392)
province = region.provinces.create(description: "Mera", country: state, continent: continent,  geoname_id: 3654246, population: 0)
province = region.provinces.create(description: "Pastaza", country: state, continent: continent,  geoname_id: 3653394, population: 0)
province.municipalities.create(description: "Montalvo", region: region, country: state, continent: continent, geoname_id: 3654063, population: 0)
region = Region.create(description: "Tungurahua", country: state, continent: continent, geoname_id: 3650445)
province = region.provinces.create(description: "Ambato", country: state, continent: continent,  geoname_id: 3660688, population: 0)
province = region.provinces.create(description: "Baños", country: state, continent: continent,  geoname_id: 3660343, population: 0)
province = region.provinces.create(description: "Patate", country: state, continent: continent,  geoname_id: 3653370, population: 0)
province = region.provinces.create(description: "Pelileo", country: state, continent: continent,  geoname_id: 3653286, population: 0)
province = region.provinces.create(description: "Píllaro", country: state, continent: continent,  geoname_id: 3653158, population: 0)
province = region.provinces.create(description: "Quero", country: state, continent: continent,  geoname_id: 3652572, population: 0)
province.municipalities.create(description: "Quero", region: region, country: state, continent: continent, geoname_id: 3652573, population: 0)