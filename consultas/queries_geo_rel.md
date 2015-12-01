1 - [ST_Distance](http://postgis.net/docs/ST_Distance.html) - Todos os aeroportos que estão a no máximo 0.5 de distância de algum outro aeroporto
```sql
select distinct b.geom 
from afg_airports_airfields a, afg_airports_airfields b 
where ST_Distance (a.geom, b.geom) < 0.5 AND a <> b;
```

2 - [ST_Equals](http://postgis.net/docs/ST_Equals.html) - Todos os aeroportos que estão a, no máximo, 0.5 de dos distritos Shighnan e Khwahan

```sql
SELECT DISTINCT air1.nam
FROM afg_airports_airfields as air1, afg_airports_airfields as air2, afg_districts_329 as dis1, afg_districts_329 as dis2
WHERE dis1.dist_32_na = 'Shighnan' and dis2.dist_32_na = 'Khwahan' 
and ST_DISTANCE(air1.geom,dis1.geom) < 0.5 and ST_DISTANCE(air2.geom,dis2.geom) < 0.5 
and ST_EQUALS(air1.geom, air2.geom);
```


3 - [ST_Disjoint](http://postgis.net/docs/ST_Disjoint.html) - Todas as estradas que não passam por Bangi
```sql
SELECT road.geom
FROM afg_all_roads as road, afg_districts_329 as dist
WHERE dist.dist_32_na = 'Bangi' AND ST_DISJOINT(road.geom,dist.geom);
```

4 - [ST_Intersects](http://postgis.net/docs/ST_Intersects.html) - Todas as estradas que passam por Ragh

```sql
select distinct r.geom from afg_districts_329 d, afg_all_roads r
where st_intersects(r.geom, d.geom) and d.dist_32_na = 'Ragh';
```

5 - [ST_Touches](http://postgis.net/docs/ST_Touches.html) - Todos distritos vizinhos de distritos que contém aeroportos

```sql
SELECT d1.geom FROM afg_districts_329 d2, afg_districts_329 d1, afg_airports_airfields a
WHERE st_contains(d2.geom, a.geom) AND st_Touches(d1.geom, d2.geom);
```


6 - [ST_Crosses](http://postgis.net/docs/ST_Crosses.html) - Todas as estradas que cortam algum distrito que contém aeroporto
```sql
SELECT b.geom
FROM afg_districts_329 a, afg_all_roads b, afg_airports_airfields c
WHERE ST_Crosses(a.geom, b.geom) AND ST_Contains(a.geom, c.geom);
```

7 - [ST_Within](http://postgis.net/docs/ST_Within.html) - Todas as estradas contidas em Kabul

```sql
select d2.geom from afg_districts_329 d1, afg_all_roads d2 
where d1.dist_32_na = 'Kabul' and st_within (d2.geom, d1.geom);
```

8 - [ST_Overlaps](http://postgis.net/docs/ST_Overlaps.html) - Mostre as estradas que se sobrepoem sobre a estrada "R-A"

```sql
select r2.geom from afg_all_roads r1, afg_all_roads r2
where st_overlaps (r1.geom, r2.geom) and r2.name1_ = 'R-A';
```

9 - [ST_Contains](http://postgis.net/docs/ST_Contains.html) - Todos os distritos que contém algum aeroporto militar

```sql
select d.geom from afg_districts_329 as d, afg_airports_airfields as a
where st_contains(d.geom, a.geom) and a.use_descri = 'Military';
```
