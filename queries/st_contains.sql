﻿select d.geom from afg_districts_329 as d, afg_airports_airfields as a
where st_contains(d.geom, a.geom) and a.use_descri = 'Military';