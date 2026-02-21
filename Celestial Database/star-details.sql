select star.name,star.description,star_type.name as type_of_star,star.age_in_millions_of_years,star.distance_from_earth_au,galaxy.name as galaxy_of_star from star 
left join galaxy on star.galaxy_id=galaxy.galaxy_id
left join star_type on star.star_type_id=star_type.star_type_id
order by galaxy_of_star,name;