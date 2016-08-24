delete from cafe;
drop sequence sq_cafe;
create sequence sq_cafe start with 1 increment by 1;

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'M�dia', 'M�dia', 'M�dio', 'Intenso', (select cd_produto from produto 
where nm_produto='CAFETERIE')); -- CAFETERIE

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'M�dia', 'M�dia', 'M�dio', 'Intenso', (select cd_produto from produto 
where nm_produto='RITUAL ARALTO')); -- ARALTO

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'M�dia', 'Baixa', 'M�dio', 'Caracter�stico', (select cd_produto from 
produto where nm_produto='DESCAFEINADO')); -- DESCAFEINADO

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'M�dia', 'Baixa', 'M�dio', 'Intenso', (select cd_produto from produto 
where nm_produto='MOGIANA')); -- MOGIANA

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'M�dia', 'Alta', 'M�dio', 'M�dio Intenso', (select cd_produto from produto 
where nm_produto='SUL DE MINAS')); -- SUL DE MINAS

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'M�dia', 'M�dia', 'M�dio', 'M�dio Intenso', (select cd_produto from 
produto where nm_produto='CERRADO MINEIRO')); -- CERRADO MINEIRO

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'M�dia', 'Baixa', 'M�dio', null, (select cd_produto from produto where 
nm_produto='AVEL�')); -- AVEL�

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'M�dia', 'Baixa', 'M�dio', null, (select cd_produto from produto where 
nm_produto='AM�NDOAS TORRADAS')); -- AM�NDOAS TORRADAS

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'M�dia', 'Baixa', 'M�dio', null, (select cd_produto from produto where 
nm_produto='BAUNILHA COM NOZES')); -- BAUNILHA COM NOZES

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'M�dia', 'Baixa', 'M�dio', null, (select cd_produto from produto where 
nm_produto='CHOCOLATE COM TRUFAS')); -- CHOCOLATE CON TRUFAS

COMMIT;