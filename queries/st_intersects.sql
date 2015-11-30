select distinct r.geom from afg_districts_329 d, afg_all_roads r
where st_intersects(r.geom, d.geom) and d.dist_32_na = 'Ragh';