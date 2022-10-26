--
-- code pour la création des tables
--
CREATE TABLE montre ( 
id_montre uuid default uuid_generate_v4(), 
ecran varchar, 
bracelet varchar, 
cadrant varchar, 
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

create VIEW allTissu as 
select "montre".* 
from "materiaux", "montre"
where "materiaux".id_materiaux = "montre".id_materiaux 
and "materiaux"."libelle" = 'tissu'; 

create VIEW allCaoutchouc as 
select "montre".*
from "materiaux", "montre" 
where "materiaux".id_materiaux = "montre".id_materiaux 
and "materiaux"."libelle" = 'caoutchouc';

create VIEW allMateriaux as 
select * 
from "materiaux";

--
-- code pour la création des policies
--
Table montre : Editing policy from public.montre
Enable read access for all users
/
true

Enable insert for authenticated users only
authenticated
true

Enable update for users based on email
/
(uid() = id_user)
(uid() IN ( SELECT montre_1.id_user
		FROM montre montre_1))