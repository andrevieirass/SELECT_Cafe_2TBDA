delete from produto;
drop sequence sq_produto;
create sequence sq_produto start with 1 increment by 1;

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAFETERIE', 'Um blend de gr�os provenientes das regi�es nobres de Mogiana, Cerrado Mineiro e Sul de Minas. Seu ponto de torra lhe confere um sabor levemente adocicado, arom�tico e um excelente residual  de sabor que convida a uma nova x�cara.', 4.50, 4);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'RITUAL ARALTO', 'Um blend que possui em sua composi��o gr�os cultivados em altitudes acima de 1000 metros no Cerrado Mineiro e parte do Sul de Minas. Nessas altitudes, os gr�os crescem lentamente, resultando em um caf� de sabor rico e de maior acidez, que � servido com uma toalha quente para que voc� possa relaxar e aproveitar melhor o seu espresso.', 5.60, 4);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'DESCAFEINADO', 'Os melhores gr�os selecionados para voc� que gosta de apreciar um caf� forte e encorpado sem restri��o, j� que o prazer na vida � fundamental. Bebida levemente caramelizada e com baix�ssimo teor de cafe�na.', 5.20, 4);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'AVEL�', 'Uma combina��o de caf� com avel�s.', 5.20, 5);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'AM�NDOAS TORRADAS', 'Uma combina��o de caf� com am�ndoas.', 5.20, 5);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'BAUNILHA COM NOZES', 'Uma perfeita combina��o entre caf�, baunilha e nozes.', 5.20, 5);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CHOCOLATE COM TRUFAS', 'Caf� com um toque de trufas de chocolate.', 5.20, 5);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'MOGIANA', 'Gr�os cultivados na regi�o do estado de S�o Paulo, em altitudes m�dias entre 800 e 1000 metros. O caf� � seco ao sol sem o uso de m�quinas, o que faz com que ocorra maior transfer�ncia de a��cares para os gr�os, tornando a bebida levemente adocicada.', 5.20, 6);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'SUL DE MINAS', 'Gr�os cultivados em um dos solos mais ricos do Brasil, no Estado de Minas Gerais, considerado o maior produtor de caf�. Proporcionam uma bebida arom�tica, sabor adocicado e not�vel acidez.', 5.20, 6);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CERRADO MINEIRO', 'Gr�os cultivados nas melhores regi�es do Cerrado Mineiro em solo irrigado e altitudes m�dias elevadas.', 5.20, 6);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'MACCHIATO', null, 6.90, 7);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'MACCHIATO AROMATIZADO', null, 7.15, 7);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'MACCHIATO DESCAFEINADO', null, 7.15, 7);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CH� (quente)', null, 3.90, 7);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAPPUCCINO', null, 7.50, 7);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAPPUCCINO AROMATIZADO', null, 8.90, 7);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAPUCCINO DESCAFEINADO', null, 8.90, 7);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'POR��O DE CHANTILLY', null, 4.20, 7);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CHOCOLATE QUENTE PEQUENO', null, 4.70, 8);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CHOCOLATE QUENTE GRANDE', null, 7.10, 8);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CHOCOLATE BATIDO GELADO', null, 7.20, 8);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CHOCOLATE CREMOSO PEQUENO', null, 6.20, 8);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CHOCOLATE CREMOSO GRANDE', null, 8.50, 8);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'POR��O MINI MARSHMALLOW', null, 3.50, 8);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAF� HARMONIA', 'Caf� espresso, leite, espuma de leite e raspas de chocolate.', 10.90, 9);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAF� BRIGADEIRO', 'Caf� espresso curto, leite, chantilly, brigadeiro cremoso e chocolate granulado.', 11.50, 9);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAF� AVEL�', 'Caf� espresso aromatizado com avel�, chocolate quente cremoso, espuma de leite e raspas de chocolate.', 11.90, 9);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAF� SOBERANO', 'Caf� espresso, gotas de conhaque, licor de cacau, leite condensado e chantilly.', 17.50, 9);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CH� MATE GELADO COM XAROPE DE FRUTAS', 'Sabores, lim�o siciliano, p�ssego e cramberry.', 6.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'LIMONADA COM XAROPE DE FRAMBOESA (PINK LEMONADE)', 'Suco de lim�o, xarope de framboesa e gelo.', 6.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAF� GELADO (ICED COFFEE)', 'Caf� aromatizado, leite e gelo.', 4.00, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAPPUCCINO FROZEN', 'Leite, caf� gelado, chocolate em p� e gelo.', 6.90, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAF� VIENENSE', 'Caf� gelado, sorvete de chocolate, creme de leite, chocolate em p�, canela em p�, chantilly e chocolate granulado.', 17.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'FRAPP� BROWNIE', 'O famoso brownie do Caf� do Ponto na vers�o Frapp�, com chantilly e peda�os de brownie.', 17.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'FRAPP� TIRAMISU', 'Uma deliciosa e refrescante bebida inspirada na vers�o Frapp�, com chantilly e peda�os de brownie.', 17.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAF� CARAMELO', 'Caf� espresso, sorvete de creme, doce de leite, chantilly e castanha-de-caju.', 17.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'ICE MOKACCINO', 'Caf� gelado, chocolate em p�, a��car, calda de chocolate, licor n�o alco�lico, gelo e chantilly.', 17.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'AFRICAN BREEZE', 'Caf� espresso, licor de marula, gelo, sorvete de creme, chantilly e noz-moscada.', 17.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'SHAKE COFFE', 'Caf� gelado, leite, sorvete de chocolate, licor de cacau, chantilly e cereja.', 17.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, '�GUA', null, 4.00, 11);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'REFRIGERANTE (LATA)', null, 4.20, 11);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'SUCO (LATA)', null, 5.20, 11);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'SUCO (integral ou polpa)', null, 6.20, 11);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CH� GELADO (LATA)', null, 6.20, 11);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'SODA ITALIANA', null, 7.60, 11);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'P�o de queijo', null, 3.90, 2);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'P�o de queijo mini (10 unidades)', null, 6.50, 2);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Coxinha de frango com cream cheese', null, 6.50, 2);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'P�o de batata', null, 6.00, 2);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Croissant', null, 6.00, 2);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Empada', null, 6.00, 2);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Quiche', null, 6.50, 2);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Empanada', null, 6.90, 2);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Folhado', null, 6.00, 2);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Mini torta salgada', null, 6.90, 2);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Croque Franc�s', null, 10.90, 2);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Brownie', null, 6.00, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Muffin', null, 6.00, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Bolo Caseiro', null, 4.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Bolo Veludo Vermelho', null, 7.90, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Mini Cheesecake com calda de frutas vermelhas', null, 7.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Tartelete Vanilla Br�l�e', null, 9.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Tartelete crocante de noz pec� com mousse de cookies', null, 9.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Mini torta de chocolate com mousse de avel�', null, 7.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Tartelete de pistache com chocolate branco', null, 9.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Torta folhada integral de ma�� com creme de baunilha (light)', null, 9.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Torta Doce', null, 8.00, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Sorvete (1 bola)', null, 6.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Sorvete (2 bolas)', null, 11.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Brownie com sorvete', null, 13.90, 3);

COMMIT;