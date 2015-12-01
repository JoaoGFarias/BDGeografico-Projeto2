select d2.geom
from afg_districts_329 d1, afg_districts_329 d2
where st_equals(st_union(d1.geom, d2.geom), st_union(d2.geom, d1.geom)) limit 10;