# Jon Sonderman, 11/2/2016
#
# importFormatScript.sql
#

use pathfinder;

# create gene_info
drop table if exists magic_items; 
create table magic_items ( 
Name varchar(48), 
Purchase_Price varchar(48), 
Aura_Strenth varchar(1000), 
Aura_School1 varchar(512), 
Aura_School2 varchar(48), 
Aura_School3 varchar(48), 
Aura_School4 varchar(4000), 
subschool1 varchar(48), 
subschool2 varchar(48), 
Descriptor1 varchar(64), 
Descriptor2 varchar(64), 
Descriptor3 varchar(64), 
CL int, 
slot varchar(24), 
Weight float, 
Crafting_Requirements varchar(64), 
Craft_Cost int, 
type varchar(64), 
Source varchar(64)) ENGINE=INNODB; 

Load Data local Infile 
'/Users/sondermanjj/Dropbox/School/CS 386 Database Systems/Lab 6/gene_info50000.csv' into table 
pathfinder.magic_items fields terminated by ',' lines terminated by '\n' ignore 1 lines; 
