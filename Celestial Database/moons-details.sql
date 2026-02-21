select moon.name,moon.description,moon_type.name as type_of_moon,moon.distance_from_planet,moon.age_in_millions_of_years,planet.name as planet_of_moon from moon 
left join planet on moon.planet_id=planet.planet_id
left join moon_type on moon.moon_type_id=moon_type.moon_type_id
order by planet_of_moon,name;