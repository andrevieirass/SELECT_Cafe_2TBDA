-- Gerado por Oracle SQL Developer Data Modeler 4.0.3.853
--   em:        2016-05-20 17:46:23 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g




CREATE TABLE BAIRRO
  (
    cd_bairro NUMBER (3) NOT NULL ,
    nm_bairro VARCHAR2 (60) NOT NULL ,
    cd_cidade NUMBER (3) NOT NULL
  ) ;
ALTER TABLE BAIRRO ADD CONSTRAINT PK_BAIRRO PRIMARY KEY ( cd_bairro ) ;

CREATE TABLE CAFE
  (
    cd_cafe    VARCHAR2 (9) NOT NULL ,
    tp_torra   CHAR (6) ,
    tp_acidez  CHAR (5) ,
    tp_corpo   CHAR (5) ,
    tp_aroma   CHAR (14) ,
    cd_produto NUMBER (6) NOT NULL
  ) ;
ALTER TABLE CAFE ADD CHECK ( tp_torra  IN ('Clara', 'Escura', 'Média')) ;
ALTER TABLE CAFE ADD CHECK ( tp_acidez IN ('Alta', 'Baixa', 'Média')) ;
ALTER TABLE CAFE ADD CHECK ( tp_corpo  IN ('Alto', 'Baixo', 'Médio')) ;
ALTER TABLE CAFE ADD CHECK ( tp_aroma  IN ('Achocolatado', 'Característico', 'Cítrico', 'Florado', 'Frutado', 'Intenso', 'Médio Intenso')) ;
CREATE UNIQUE INDEX CAFE__IDX ON CAFE ( cd_produto ASC ) ;
  ALTER TABLE CAFE ADD CONSTRAINT PK_CAFE PRIMARY KEY ( cd_cafe ) ;

CREATE TABLE CARGO
  (
    cd_cargo NUMBER (2) NOT NULL ,
    nm_cargo VARCHAR2 (30) NOT NULL
  ) ;
ALTER TABLE CARGO ADD CONSTRAINT PK_CARGO PRIMARY KEY ( cd_cargo ) ;

CREATE TABLE CATEGORIA
  (
    cd_categoria     NUMBER (3) NOT NULL ,
    nm_categoria     VARCHAR2 (50) NOT NULL ,
    cd_categoria_pai NUMBER (3) NOT NULL
  ) ;
ALTER TABLE CATEGORIA ADD CONSTRAINT PK_CATEGORIA PRIMARY KEY ( cd_categoria ) ;

ALTER TABLE CATEGORIA MODIFY CD_CATEGORIA_PAI NULL;

ALTER TABLE UNIDADE MODIFY NM_UNIDADE VARCHAR2(70);

CREATE TABLE CIDADE
  (
    cd_cidade NUMBER (3) NOT NULL ,
    nm_cidade VARCHAR2 (100) NOT NULL ,
    cd_estado NUMBER (3) NOT NULL
  ) ;
ALTER TABLE CIDADE ADD CONSTRAINT PK_CIDADE PRIMARY KEY ( cd_cidade ) ;

CREATE TABLE CLIENTE
  (
    cd_cliente      NUMBER (9) NOT NULL ,
    nm_cliente      VARCHAR2 (100) NOT NULL ,
    nu_rg_cliente   CHAR (12) NOT NULL ,
    nu_cpf_cliente  CHAR (14) NOT NULL ,
    dt_nasc_cliente DATE NOT NULL ,
    ds_sexo         CHAR (1) NOT NULL ,
    cd_endereco     NUMBER (6)
  ) ;
ALTER TABLE CLIENTE ADD CHECK ( ds_sexo IN ('F', 'M')) ;
CREATE UNIQUE INDEX CLIENTE__IDX ON CLIENTE ( cd_endereco ASC ) ;
  ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE PRIMARY KEY ( cd_cliente ) ;

CREATE TABLE COMBO
  (
    cd_combo        NUMBER (9) NOT NULL ,
    ds_combo        VARCHAR2 (30) NOT NULL ,
    dt_inicio_combo DATE NOT NULL ,
    dt_fim_combo    DATE NOT NULL ,
    vl_combo        NUMBER (6,2) NOT NULL
  ) ;
ALTER TABLE COMBO ADD CONSTRAINT PK_COMBO PRIMARY KEY ( cd_combo ) ;

CREATE TABLE COMBO_ITEM
  (
    cd_combo_item NUMBER (9) NOT NULL ,
    qt_combo_item NUMBER (9) NOT NULL ,
    vl_combo_item NUMBER (6,2) NOT NULL ,
    cd_produto    NUMBER (6) NOT NULL
  ) ;
ALTER TABLE COMBO_ITEM ADD CONSTRAINT PK_COMBO_ITEM PRIMARY KEY ( cd_combo_item ) ;

CREATE TABLE COMBO_ITEM_COMBO
  (
    cd_combo_item NUMBER (9) NOT NULL ,
    cd_combo      NUMBER (9) NOT NULL
  ) ;
ALTER TABLE COMBO_ITEM_COMBO ADD CONSTRAINT FK_COMBO_ITEM_COMBO_PK PRIMARY KEY ( cd_combo_item, cd_combo ) ;

CREATE TABLE ENDERECO
  (
    cd_endereco    NUMBER (6) NOT NULL ,
    tp_logradouro  CHAR (7) NOT NULL ,
    nm_endereco    VARCHAR2 (100) NOT NULL ,
    ds_complemento VARCHAR2 (100) ,
    cd_bairro      NUMBER (3) NOT NULL ,
    cd_cliente     NUMBER (9) ,
    cd_unidade     NUMBER (3)
  ) ;
ALTER TABLE ENDERECO ADD CHECK ( tp_logradouro IN ('Avenida', 'Estrada', 'Praça', 'Rua','Rodovia')) ;
ALTER TABLE ENDERECO ADD CONSTRAINT FKArc_2 CHECK ( ( (cd_cliente IS NOT NULL) AND (cd_unidade IS NULL) ) OR ( (cd_unidade IS NOT NULL) AND (cd_cliente IS NULL) ) OR ( (cd_cliente IS NULL) AND (cd_unidade IS NULL) ) ) ;
CREATE UNIQUE INDEX ENDERECO__IDX ON ENDERECO ( cd_cliente ASC ) ;
CREATE UNIQUE INDEX ENDERECO__IDXv1 ON ENDERECO ( cd_unidade ASC ) ;
  ALTER TABLE ENDERECO ADD CONSTRAINT PK_ENDERECO PRIMARY KEY ( cd_endereco ) ;

CREATE TABLE ESTADO
  (
    cd_estado NUMBER (3) NOT NULL ,
    nm_estado VARCHAR2 (80) NOT NULL ,
    sg_estado CHAR (2) NOT NULL ,
    cd_pais   NUMBER (3) NOT NULL
  ) ;
ALTER TABLE ESTADO ADD CONSTRAINT PK_ESTADO PRIMARY KEY ( cd_estado ) ;

CREATE TABLE FUNCIONARIO
  (
    cd_funcionario      NUMBER (9) NOT NULL ,
    nm_funcionario      VARCHAR2 (100) NOT NULL ,
    nu_rg_funcionario   CHAR (12) NOT NULL ,
    nu_cpf_funcionario  CHAR (14) NOT NULL ,
    dt_nasc_funcionario DATE NOT NULL ,
    ds_sexo_funcionario CHAR (1) NOT NULL ,
    vl_salario          NUMBER (9,2) NOT NULL ,
    vl_comissao         NUMBER (9,2) ,
    dt_admissao         DATE ,
    dt_demissao         DATE ,
    ds_usuario          VARCHAR2 (100) NOT NULL ,
    ds_senha            VARCHAR2 (100) NOT NULL ,
    cd_gerente          NUMBER (9) NOT NULL ,
    cd_cargo            NUMBER (2) NOT NULL ,
    cd_unidade          NUMBER (3) NOT NULL
  ) ;
ALTER TABLE FUNCIONARIO ADD CHECK ( ds_sexo_funcionario IN ('F', 'M')) ;
ALTER TABLE FUNCIONARIO ADD CONSTRAINT PK_FUNCIONARIO PRIMARY KEY ( cd_funcionario ) ;

CREATE TABLE PAGAMENTO
  (
    cd_pagamento NUMBER (9) NOT NULL ,
    tp_pagamento CHAR (15) NOT NULL ,
    tp_cartao    CHAR (7) ,
    dt_pagamento DATE NOT NULL ,
    vl_pagamento NUMBER (7,2) NOT NULL ,
    cd_venda     NUMBER (9)
  ) ;
ALTER TABLE PAGAMENTO ADD CHECK ( tp_pagamento IN ('Cartão', 'Cartão/Dinheiro', 'Dinheiro')) ;
ALTER TABLE PAGAMENTO ADD CHECK ( tp_cartao    IN ('Crédito', 'Débito')) ;
ALTER TABLE PAGAMENTO ADD CONSTRAINT PK_PAGAMENTO PRIMARY KEY ( cd_pagamento ) ;

CREATE TABLE PAIS
  (
    cd_pais NUMBER (3) NOT NULL ,
    nm_pais VARCHAR2 (100) NOT NULL
  ) ;
ALTER TABLE PAIS ADD CONSTRAINT PK_PAIS PRIMARY KEY ( cd_pais ) ;

CREATE TABLE PRODUTO
  (
    cd_produto   NUMBER (6) NOT NULL ,
    nm_produto   VARCHAR2 (70) NOT NULL ,
    ds_produto   VARCHAR2 (400) ,
    vl_produto   NUMBER (6,2) NOT NULL ,
    cd_categoria NUMBER (3) NOT NULL
  ) ;
ALTER TABLE PRODUTO ADD CONSTRAINT PK_PRODUTO PRIMARY KEY ( cd_produto ) ;

CREATE TABLE PROMOCAO
  (
    cd_promocao     NUMBER (9) NOT NULL ,
    nm_promocao     VARCHAR2 (30) NOT NULL ,
    tp_promocao     VARCHAR2 (20) NOT NULL ,
    dt_inicio_promo DATE NOT NULL ,
    dt_fim_promo    DATE NOT NULL ,
    vl_promocao     NUMBER (9,2) NOT NULL
  ) ;
ALTER TABLE PROMOCAO ADD CONSTRAINT PK_PROMOCAO PRIMARY KEY ( cd_promocao ) ;

CREATE TABLE PROMOCAO_ITEM
  (
    cd_promo_item NUMBER (9) NOT NULL ,
    vl_promo_item NUMBER (5,2) NOT NULL ,
    qt_promo_item NUMBER (3) NOT NULL ,
    cd_venda_item NUMBER (9) NOT NULL ,
    cd_produto    NUMBER (6) NOT NULL ,
    cd_combo      NUMBER (9) NOT NULL
  ) ;
ALTER TABLE PROMOCAO_ITEM ADD CONSTRAINT PK_PROMOCAO_ITEM PRIMARY KEY ( cd_promo_item ) ;

CREATE TABLE PROMOCAO_ITEM_PROMOCAO
  (
    cd_promo_item NUMBER (9) NOT NULL ,
    cd_promocao   NUMBER (9) NOT NULL
  ) ;
ALTER TABLE PROMOCAO_ITEM_PROMOCAO ADD CONSTRAINT FK_PROMOCAO_ITEM_PROMOCAO_PK PRIMARY KEY ( cd_promo_item, cd_promocao ) ;

CREATE TABLE PROMO_PROD
  (
    cd_produto  NUMBER (6) NOT NULL ,
    cd_promocao NUMBER (9) NOT NULL ,
    vl_promocao NUMBER (9,2) NOT NULL
  ) ;
ALTER TABLE PROMO_PROD ADD CONSTRAINT FK_PROMOCAO_PRODUTO_PK PRIMARY KEY ( cd_produto, cd_promocao ) ;

CREATE TABLE TELEFONE
  (
    cd_telefone NUMBER (9) NOT NULL ,
    tp_telefone CHAR (5) ,
    nu_ddd      CHAR (3) NOT NULL ,
    nu_telefone CHAR (9) NOT NULL ,
    cd_cliente  NUMBER (9) NOT NULL
  ) ;
ALTER TABLE TELEFONE ADD CHECK ( tp_telefone IN ('Fixo', 'Móvel')) ;
ALTER TABLE TELEFONE ADD CONSTRAINT PK_TELEFONE PRIMARY KEY ( cd_telefone ) ;

CREATE TABLE UNIDADE
  (
    cd_unidade  NUMBER (3) NOT NULL ,
    nm_unidade  VARCHAR2 (40) NOT NULL ,
    cd_endereco NUMBER (6)
  ) ;
CREATE UNIQUE INDEX UNIDADE__IDX ON UNIDADE
  (
    cd_endereco ASC
  )
  ;
  ALTER TABLE UNIDADE ADD CONSTRAINT PK_UNIDADE PRIMARY KEY ( cd_unidade ) ;

CREATE TABLE VENDA
  (
    cd_venda       NUMBER (9) NOT NULL ,
    dt_venda       DATE NOT NULL ,
    vl_venda       NUMBER (6,2) NOT NULL ,
    cd_cliente     NUMBER (9) ,
    cd_funcionario NUMBER (9) NOT NULL ,
    cd_unidade     NUMBER (3) NOT NULL
  ) ;
ALTER TABLE VENDA ADD CONSTRAINT PK_VENDA PRIMARY KEY ( cd_venda ) ;

CREATE TABLE VENDA_ITEM
  (
    cd_venda_item NUMBER (9) NOT NULL ,
    qt_venda_item NUMBER (3) NOT NULL ,
    vl_venda_item NUMBER (6,2) NOT NULL ,
    cd_venda      NUMBER (9) NOT NULL ,
    cd_produto    NUMBER (6) NOT NULL ,
    cd_combo      NUMBER (9)
  ) ;
ALTER TABLE VENDA_ITEM ADD CONSTRAINT PK_VENDA_ITEM PRIMARY KEY ( cd_venda_item ) ;

ALTER TABLE BAIRRO ADD CONSTRAINT FK_BAIRRO_CIDADE FOREIGN KEY ( cd_cidade ) REFERENCES CIDADE ( cd_cidade ) ;

ALTER TABLE CATEGORIA ADD CONSTRAINT FK_CATEGORIA_CATEGORIA FOREIGN KEY ( cd_categoria_pai ) REFERENCES CATEGORIA ( cd_categoria ) ;

ALTER TABLE CIDADE ADD CONSTRAINT FK_CIDADE_ESTAD0 FOREIGN KEY ( cd_estado ) REFERENCES ESTADO ( cd_estado ) ;

ALTER TABLE ENDERECO ADD CONSTRAINT FK_CLIENTE_ENDERECO FOREIGN KEY ( cd_cliente ) REFERENCES CLIENTE ( cd_cliente ) ;

ALTER TABLE COMBO_ITEM_COMBO ADD CONSTRAINT FK_COMBO FOREIGN KEY ( cd_combo ) REFERENCES COMBO ( cd_combo ) ;

ALTER TABLE COMBO_ITEM_COMBO ADD CONSTRAINT FK_COMBO_ITEM FOREIGN KEY ( cd_combo_item ) REFERENCES COMBO_ITEM ( cd_combo_item ) ;

ALTER TABLE COMBO_ITEM ADD CONSTRAINT FK_COMBO_ITEM_PRODUTO FOREIGN KEY ( cd_produto ) REFERENCES PRODUTO ( cd_produto ) ;

ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_BAIRRO FOREIGN KEY ( cd_bairro ) REFERENCES BAIRRO ( cd_bairro ) ;

ALTER TABLE CLIENTE ADD CONSTRAINT FK_ENDERECO_CLIENTE FOREIGN KEY ( cd_endereco ) REFERENCES ENDERECO ( cd_endereco ) ;

ALTER TABLE UNIDADE ADD CONSTRAINT FK_ENDERECO_UNIDADE FOREIGN KEY ( cd_endereco ) REFERENCES ENDERECO ( cd_endereco ) ;

ALTER TABLE ESTADO ADD CONSTRAINT FK_ESTADO_PAIS FOREIGN KEY ( cd_pais ) REFERENCES PAIS ( cd_pais ) ;

ALTER TABLE FUNCIONARIO ADD CONSTRAINT FK_FUNCIONARIO_FUNCIONARIO FOREIGN KEY ( cd_gerente ) REFERENCES FUNCIONARIO ( cd_funcionario ) ;

ALTER TABLE FUNCIONARIO ADD CONSTRAINT FK_FUNCIONARIO_UNIDADE FOREIGN KEY ( cd_unidade ) REFERENCES UNIDADE ( cd_unidade ) ;

ALTER TABLE FUNCIONARIO ADD CONSTRAINT FK_FUNIONARIO_CARGO FOREIGN KEY ( cd_cargo ) REFERENCES CARGO ( cd_cargo ) ;

ALTER TABLE PAGAMENTO ADD CONSTRAINT FK_PAGAMENTO_VENDA FOREIGN KEY ( cd_venda ) REFERENCES VENDA ( cd_venda ) ;

ALTER TABLE CAFE ADD CONSTRAINT FK_PRODUTO_CAFE FOREIGN KEY ( cd_produto ) REFERENCES PRODUTO ( cd_produto ) ;

ALTER TABLE PRODUTO ADD CONSTRAINT FK_PRODUTO_CATEGORIA FOREIGN KEY ( cd_categoria ) REFERENCES CATEGORIA ( cd_categoria ) ;

ALTER TABLE PROMOCAO_ITEM_PROMOCAO ADD CONSTRAINT FK_PROMOCAO FOREIGN KEY ( cd_promocao ) REFERENCES PROMOCAO ( cd_promocao ) ;

ALTER TABLE PROMOCAO_ITEM_PROMOCAO ADD CONSTRAINT FK_PROMOCAO_ITEM FOREIGN KEY ( cd_promo_item ) REFERENCES PROMOCAO_ITEM ( cd_promo_item ) ;

ALTER TABLE PROMOCAO_ITEM ADD CONSTRAINT FK_PROMOCAO_ITEM_COMBO FOREIGN KEY ( cd_combo ) REFERENCES COMBO ( cd_combo ) ;

ALTER TABLE PROMOCAO_ITEM ADD CONSTRAINT FK_PROMOCAO_ITEM_PRODUTO FOREIGN KEY ( cd_produto ) REFERENCES PRODUTO ( cd_produto ) ;

ALTER TABLE PROMOCAO_ITEM ADD CONSTRAINT FK_PROMOCAO_ITEM_VENDA_ITEM FOREIGN KEY ( cd_venda_item ) REFERENCES VENDA_ITEM ( cd_venda_item ) ;

ALTER TABLE PROMO_PROD ADD CONSTRAINT FK_PROMO_PROD_PRODUTO FOREIGN KEY ( cd_produto ) REFERENCES PRODUTO ( cd_produto ) ;

ALTER TABLE PROMO_PROD ADD CONSTRAINT FK_PROMO_PROD_PROMOCAO FOREIGN KEY ( cd_promocao ) REFERENCES PROMOCAO ( cd_promocao ) ;

ALTER TABLE TELEFONE ADD CONSTRAINT FK_TELEFONE_CLIENTE FOREIGN KEY ( cd_cliente ) REFERENCES CLIENTE ( cd_cliente ) ;

ALTER TABLE ENDERECO ADD CONSTRAINT FK_UNIDADE_ENDERECO FOREIGN KEY ( cd_unidade ) REFERENCES UNIDADE ( cd_unidade ) ;

ALTER TABLE VENDA ADD CONSTRAINT FK_VENDA_CLIENTE FOREIGN KEY ( cd_cliente ) REFERENCES CLIENTE ( cd_cliente ) ;

ALTER TABLE VENDA ADD CONSTRAINT FK_VENDA_FUNCIONARIO FOREIGN KEY ( cd_funcionario ) REFERENCES FUNCIONARIO ( cd_funcionario ) ;

ALTER TABLE VENDA_ITEM ADD CONSTRAINT FK_VENDA_ITEM_COMBO FOREIGN KEY ( cd_combo ) REFERENCES COMBO ( cd_combo ) ;

ALTER TABLE VENDA_ITEM ADD CONSTRAINT FK_VENDA_ITEM_PRODUTO FOREIGN KEY ( cd_produto ) REFERENCES PRODUTO ( cd_produto ) ;

ALTER TABLE VENDA_ITEM ADD CONSTRAINT FK_VENDA_ITEM_VENDA FOREIGN KEY ( cd_venda ) REFERENCES VENDA ( cd_venda ) ;

ALTER TABLE VENDA ADD CONSTRAINT VENDA_UNIDADE FOREIGN KEY ( cd_unidade ) REFERENCES UNIDADE ( cd_unidade ) ;


-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            23
-- CREATE INDEX                             5
-- ALTER TABLE                             66
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
