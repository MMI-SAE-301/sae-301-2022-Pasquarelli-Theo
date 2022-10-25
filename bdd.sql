--
-- code pour la création des tables
--
CREATE TABLE montre ( 
id_montre uuid default uuid_generate_v4(), 
ecran varchar, 
bracelet varchar, 
boitier varchar, 
commande bool, 
id_materiaux uuid, 
id_user uuid , 
PRIMARY KEY (id_montre), 
FOREIGN KEY (id_materiaux) REFERENCES materiaux (id_materiaux),
FOREIGN KEY (id_user) REFERENCES auth.users (id) 
);

CREATE TABLE materiaux ( 
id_materiaux uuid default uuid_generate_v4(), 
libelle varchar, 
url varchar, 
PRIMARY KEY (id_materiaux) 
);
--
-- code pour la création des vues
--
create VIEW allCuir as 
select "montre".* 
from "materiaux", "montre" 
where "materiaux".id_materiaux = "montre".id_materiaux 
and "materiaux"."libelle" = 'cuir'; 

create VIEW allAluminium as 
select "montre".* 
from "materiaux", "montre"
where "materiaux".id_materiaux = "montre".id_materiaux 
and "materiaux"."libelle" = 'aluminium'; 

create VIEW allAcier as 
select "montre".*
from "materiaux", "montre" 
where "materiaux".id_materiaux = "montre".id_materiaux 
and "materiaux"."libelle" = 'acier';

create VIEW allMateriaux as 
select * 
from "materiaux";

--
-- code pour la création des policies
--