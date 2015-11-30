1 - Selecione todos os destritos que est‹o no m‡ximo a 100m de "KABUL INTL"

```sql
select * from afg_airports_airfields, afg_districts_329
where ST_Distance (afg_airports_airfields.geom, afg_districts_329.geom) < 100
```