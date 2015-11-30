select distinct d2.gid from afg_districts_329 d1, afg_all_roads d2 
where d1.dist_32_na = 'Shighnan' and st_within (d2.geom, d1.geom);