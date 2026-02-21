select planet.name,planet.description,planet_type.name as type_of_planet,planet.is_spherical,planet.has_life,planet.distance_from_star_au,planet.age_in_millions_of_years,star.name as star_of_planet from planet 
left join star on planet.star_id=star.star_id
left join planet_type on planet.planet_type_id=planet_type.planet_type_id
order by star_of_planet,name;