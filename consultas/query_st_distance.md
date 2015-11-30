1 - Selecione todos os destritos que est‹o no m‡ximo a 100m de "KABUL INTL"

```sql
select * from afg_airports_airfields, afg_districts_329
where ST_Distance (afg_airports_airfields.geom, afg_districts_329.geom) < 100
```


(2. st_equals) - selecione os 


(3. st_disjoint) - Mostre os aeroportos que não estão nos distritos com população menor que 1000 habitantes
```sql
select * from afg_airports_airfields, afg_districts_329 
where ST_disjoint (afg_airports_airfields.geom, afg_districts_329.geom) and
```

-- Todos as provincias com mais de 1000 pessoas

```sql
select a.prov_nam from "07_03_settlements" as a
group by a.prov_nam
having count(*) > 1000
```

(4. st_intersect) - Mostre os aeroportos que estão na fronteira com o distrito "xx"



(5. st_touches) - Faça uma consulta para retornar os distritos adjacentes àqueles com mais de um aeroporto.



(6. st_crosses) - Faça uma



(7. st_within) - Faça uma consulta que mostre as pessoas que residem no distrito "xx"

