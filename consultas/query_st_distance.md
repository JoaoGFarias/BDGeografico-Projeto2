1 - Selecione todos os destritos que est�o no m�ximo a 100m de "KABUL INTL"

```sql
select * from afg_airports_airfields, afg_districts_329
where ST_Distance (afg_airports_airfields.geom, afg_districts_329.geom) < 100
<<<<<<< HEAD:consultas de relacionamentos/query_st_distance.txt


(2. st_equals) - selecione os 


(3. st_disjoint) - Mostre os aeroportos que n�o est�o nos distritos com popula��o menor que 1000 habitantes

select * from afg_airports_airfields, afg_districts_329 
where ST_disjoint (afg_airports_airfields.geom, afg_districts_329.geom) and


-- Todos as provincias com mais de 1000 pessoas


select a.prov_nam from "07_03_settlements" as a
group by a.prov_nam
having count(*) > 1000


(4. st_intersect) - Mostre os aeroportos que est�o na fronteira com o distrito "xx"



(5. st_touches) - Fa�a uma consulta para retornar os distritos adjacentes �queles com mais de um aeroporto.



(6. st_crosses) - Fa�a uma



(7. st_within) - Fa�a uma consulta que mostre as pessoas que residem no distrito "xx"


(8. st_
=======
```
>>>>>>> 127d22ff87cd8ad08601cfeab78888e69039252a:consultas/query_st_distance.md
