delete from cafe;
delete from produto;
delete from categoria;

insert into categoria (cd_categoria, nm_categoria, cd_categoria_pai) values (1, 'Bebidas', null);
insert into categoria (cd_categoria, nm_categoria, cd_categoria_pai) values (2, 'Salgados', null);
insert into categoria (cd_categoria, nm_categoria, cd_categoria_pai) values (3, 'Doces', null);
insert into categoria (cd_categoria, nm_categoria, cd_categoria_pai) values (4, 'Espressos', 1);
insert into categoria (cd_categoria, nm_categoria, cd_categoria_pai) values (5, 'Aromatizados', 1);
insert into categoria (cd_categoria, nm_categoria, cd_categoria_pai) values (6, 'Regionais', 1);
insert into categoria (cd_categoria, nm_categoria, cd_categoria_pai) values (7, 'Clássicos', 1);
insert into categoria (cd_categoria, nm_categoria, cd_categoria_pai) values (8, 'Bebidas à Base de Chocolate', 1);
insert into categoria (cd_categoria, nm_categoria, cd_categoria_pai) values (9, 'Drinks Quentes', 1);
insert into categoria (cd_categoria, nm_categoria, cd_categoria_pai) values (10, 'Drinks Gelados', 1);
insert into categoria (cd_categoria, nm_categoria, cd_categoria_pai) values (11, 'Outras Bebidas', 1);

COMMIT;