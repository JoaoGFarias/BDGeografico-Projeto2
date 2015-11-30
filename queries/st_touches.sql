select d1.gid from afg_districts_329 d1, afg_districts_329 d2
where st_Touches(d1.geom, d2.geom) and d2.dist_32_na = 'Shighnan';