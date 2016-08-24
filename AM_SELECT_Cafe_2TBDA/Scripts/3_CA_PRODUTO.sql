delete from produto;
drop sequence sq_produto;
create sequence sq_produto start with 1 increment by 1;

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAFETERIE', 'Um blend de grãos provenientes das regiões nobres de Mogiana, Cerrado Mineiro e Sul de Minas. Seu ponto de torra lhe confere um sabor levemente adocicado, aromático e um excelente residual  de sabor que convida a uma nova xícara.', 4.50, 4);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'RITUAL ARALTO', 'Um blend que possui em sua composição grãos cultivados em altitudes acima de 1000 metros no Cerrado Mineiro e parte do Sul de Minas. Nessas altitudes, os grãos crescem lentamente, resultando em um café de sabor rico e de maior acidez, que é servido com uma toalha quente para que você possa relaxar e aproveitar melhor o seu espresso.', 5.60, 4);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'DESCAFEINADO', 'Os melhores grãos selecionados para você que gosta de apreciar um café forte e encorpado sem restrição, já que o prazer na vida é fundamental. Bebida levemente caramelizada e com baixíssimo teor de cafeína.', 5.20, 4);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'AVELÃ', 'Uma combinação de café com avelãs.', 5.20, 5);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'AMÊNDOAS TORRADAS', 'Uma combinação de café com amêndoas.', 5.20, 5);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'BAUNILHA COM NOZES', 'Uma perfeita combinação entre café, baunilha e nozes.', 5.20, 5);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CHOCOLATE COM TRUFAS', 'Café com um toque de trufas de chocolate.', 5.20, 5);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'MOGIANA', 'Grãos cultivados na região do estado de São Paulo, em altitudes médias entre 800 e 1000 metros. O café é seco ao sol sem o uso de máquinas, o que faz com que ocorra maior transferência de açúcares para os grãos, tornando a bebida levemente adocicada.', 5.20, 6);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'SUL DE MINAS', 'Grãos cultivados em um dos solos mais ricos do Brasil, no Estado de Minas Gerais, considerado o maior produtor de café. Proporcionam uma bebida aromática, sabor adocicado e notável acidez.', 5.20, 6);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CERRADO MINEIRO', 'Grãos cultivados nas melhores regiões do Cerrado Mineiro em solo irrigado e altitudes médias elevadas.', 5.20, 6);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'MACCHIATO', null, 6.90, 7);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'MACCHIATO AROMATIZADO', null, 7.15, 7);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'MACCHIATO DESCAFEINADO', null, 7.15, 7);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CHÁ (quente)', null, 3.90, 7);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAPPUCCINO', null, 7.50, 7);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAPPUCCINO AROMATIZADO', null, 8.90, 7);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAPUCCINO DESCAFEINADO', null, 8.90, 7);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'PORÇÃO DE CHANTILLY', null, 4.20, 7);

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
values (sq_produto.nextval, 'PORÇÃO MINI MARSHMALLOW', null, 3.50, 8);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAFÉ HARMONIA', 'Café espresso, leite, espuma de leite e raspas de chocolate.', 10.90, 9);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAFÉ BRIGADEIRO', 'Café espresso curto, leite, chantilly, brigadeiro cremoso e chocolate granulado.', 11.50, 9);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAFÉ AVELÃ', 'Café espresso aromatizado com avelã, chocolate quente cremoso, espuma de leite e raspas de chocolate.', 11.90, 9);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAFÉ SOBERANO', 'Café espresso, gotas de conhaque, licor de cacau, leite condensado e chantilly.', 17.50, 9);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CHÁ MATE GELADO COM XAROPE DE FRUTAS', 'Sabores, limão siciliano, pêssego e cramberry.', 6.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'LIMONADA COM XAROPE DE FRAMBOESA (PINK LEMONADE)', 'Suco de limão, xarope de framboesa e gelo.', 6.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAFÉ GELADO (ICED COFFEE)', 'Café aromatizado, leite e gelo.', 4.00, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAPPUCCINO FROZEN', 'Leite, café gelado, chocolate em pó e gelo.', 6.90, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAFÉ VIENENSE', 'Café gelado, sorvete de chocolate, creme de leite, chocolate em pó, canela em pó, chantilly e chocolate granulado.', 17.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'FRAPPÉ BROWNIE', 'O famoso brownie do Café do Ponto na versão Frappé, com chantilly e pedaços de brownie.', 17.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'FRAPPÉ TIRAMISU', 'Uma deliciosa e refrescante bebida inspirada na versão Frappé, com chantilly e pedaços de brownie.', 17.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CAFÉ CARAMELO', 'Café espresso, sorvete de creme, doce de leite, chantilly e castanha-de-caju.', 17.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'ICE MOKACCINO', 'Café gelado, chocolate em pó, açúcar, calda de chocolate, licor não alcoólico, gelo e chantilly.', 17.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'AFRICAN BREEZE', 'Café espresso, licor de marula, gelo, sorvete de creme, chantilly e noz-moscada.', 17.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'SHAKE COFFE', 'Café gelado, leite, sorvete de chocolate, licor de cacau, chantilly e cereja.', 17.50, 10);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'ÁGUA', null, 4.00, 11);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'REFRIGERANTE (LATA)', null, 4.20, 11);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'SUCO (LATA)', null, 5.20, 11);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'SUCO (integral ou polpa)', null, 6.20, 11);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'CHÁ GELADO (LATA)', null, 6.20, 11);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'SODA ITALIANA', null, 7.60, 11);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Pão de queijo', null, 3.90, 2);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Pão de queijo mini (10 unidades)', null, 6.50, 2);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Coxinha de frango com cream cheese', null, 6.50, 2);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Pão de batata', null, 6.00, 2);

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
values (sq_produto.nextval, 'Croque Francês', null, 10.90, 2);

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
values (sq_produto.nextval, 'Tartelete Vanilla Brûlée', null, 9.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Tartelete crocante de noz pecã com mousse de cookies', null, 9.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Mini torta de chocolate com mousse de avelã', null, 7.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Tartelete de pistache com chocolate branco', null, 9.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Torta folhada integral de maçã com creme de baunilha (light)', null, 9.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Torta Doce', null, 8.00, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Sorvete (1 bola)', null, 6.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Sorvete (2 bolas)', null, 11.50, 3);

insert into produto (cd_produto, nm_produto, ds_produto, vl_produto, cd_categoria)
values (sq_produto.nextval, 'Brownie com sorvete', null, 13.90, 3);

COMMIT;