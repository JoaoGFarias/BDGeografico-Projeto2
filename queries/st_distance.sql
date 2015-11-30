select distinct b.gid from afg_airports_airfields a, afg_districts_329 b
where ST_Distance (a.geom, b.geom) < 0.1 and a.nam = 'KABUL INTL';