delete from cafe;
drop sequence sq_cafe;
create sequence sq_cafe start with 1 increment by 1;

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'Média', 'Média', 'Médio', 'Intenso', (select cd_produto from produto 
where nm_produto='CAFETERIE')); -- CAFETERIE

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'Média', 'Média', 'Médio', 'Intenso', (select cd_produto from produto 
where nm_produto='RITUAL ARALTO')); -- ARALTO

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'Média', 'Baixa', 'Médio', 'Característico', (select cd_produto from 
produto where nm_produto='DESCAFEINADO')); -- DESCAFEINADO

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'Média', 'Baixa', 'Médio', 'Intenso', (select cd_produto from produto 
where nm_produto='MOGIANA')); -- MOGIANA

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'Média', 'Alta', 'Médio', 'Médio Intenso', (select cd_produto from produto 
where nm_produto='SUL DE MINAS')); -- SUL DE MINAS

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'Média', 'Média', 'Médio', 'Médio Intenso', (select cd_produto from 
produto where nm_produto='CERRADO MINEIRO')); -- CERRADO MINEIRO

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'Média', 'Baixa', 'Médio', null, (select cd_produto from produto where 
nm_produto='AVELÃ')); -- AVELÃ

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'Média', 'Baixa', 'Médio', null, (select cd_produto from produto where 
nm_produto='AMÊNDOAS TORRADAS')); -- AMÊNDOAS TORRADAS

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'Média', 'Baixa', 'Médio', null, (select cd_produto from produto where 
nm_produto='BAUNILHA COM NOZES')); -- BAUNILHA COM NOZES

insert into cafe (cd_cafe, tp_torra, tp_acidez, tp_corpo, tp_aroma, cd_produto)
values (sq_cafe.nextval, 'Média', 'Baixa', 'Médio', null, (select cd_produto from produto where 
nm_produto='CHOCOLATE COM TRUFAS')); -- CHOCOLATE CON TRUFAS

COMMIT;