1 - [ST_Centroid](http://postgis.net/docs/ST_Centroid.html) - Selecionar centróides de cada distrito de acordo com os airfields neles contidos

```sql

```

2 - [ST_Area](http://postgis.net/docs/ST_Area.html) - Selecione os distritos em ordem crescente de área

```sql
SELECT dis.dist_32_na
FROM afg_districts_329 as dis
ORDER BY ST_AREA(dis.geom) ASC;
```

3 - [ST_Length](http://postgis.net/docs/ST_Length.html) - Selecione as estradas em ordem crescente de distância percorrida

```sql
SELECT road.id_ as ROAD_ID, CONCAT(road.name1_,road.name2_) as ROAD_COMPLETE_NAME
FROM afg_all_roads as road
ORDER BY ST_LENGTH(road.geom) ASC;
```

4 - [ST_PointOnSurface](http://postgis.net/docs/ST_PointOnSurface.html) - Selecione 5 pontos na estrada R-C2807 que passam pelo distrito Chahar Burja

```sql
SELECT ST_AsText(ST_PointOnSurface(ST_INTERSECTION(road.geom,dis.geom)))
FROM afg_districts_329 as dis, afg_all_roads as road
WHERE dis.dist_32_na = 'Chahar Burja' and road.id_ = 'R-C2807';
```

5 - [ST_Boundary](http://postgis.net/docs/ST_Boundary.html) - Selecione o limite combinatório da intersecção dos distritos Shighnan e Khwahan

```sql
SELECT ST_Boundary(ST_INTERSECTION(dis1.geom,dis2.geom))
FROM afg_districts_329 as dis1
INNER JOIN afg_districts_329 as dis2
on dis1.dist_32_na = 'Shighnan' and dis2.dist_32_na = 'Khwahan';
```

6 - [ST_Buffer](http://postgis.net/docs/ST_Buffer.html) - Selecione todos os airfields que estão, no máximo, a uma distância de 50m da estrada A-87

```sql

```

7 - [ST_Intersection](http://postgis.net/docs/ST_Intersection.html) - Encontre as regiões de encontro das estradas AFG33230 e A-87

```sql

```

8 - [ST_Difference](http://postgis.net/docs/ST_Difference.html) - Selecione o nome de todas as estradas que não passam pelo distrito Bangi

```sql

```

9 - [ST_Union](http://postgis.net/docs/ST_Union.html) - Selecione a região formada pelos distritos Kunduz, Dihdadi e Taluqan

```sql

```
