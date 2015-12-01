-- Mostre as estradas que se sobrepoem sobre a estrada "R-A"

select r2.geom from afg_all_roads r1, afg_all_roads r2
where st_overlaps (r1.geom, r2.geom) and r2.name1_ = 'R-A';