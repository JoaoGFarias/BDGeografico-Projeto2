--faz uma consulta que mostra os distritos que contem aéroportos com a descrição militar
﻿select d.geom from afg_districts_329 as d, afg_airports_airfields as a
<<<<<<< .merge_file_mBo7Dv
where st_contains(d.geom, a.geom) and a.use_descri = 'Military';
=======
where st_contains(d.geom, a.geom) and a.use_descri = 'Military';
>>>>>>> .merge_file_ixOj18
