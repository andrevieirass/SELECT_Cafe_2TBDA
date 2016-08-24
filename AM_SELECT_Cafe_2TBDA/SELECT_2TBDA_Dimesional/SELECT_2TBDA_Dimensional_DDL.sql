-- Gerado por Oracle SQL Developer Data Modeler 4.0.3.853
--   em:        2016-05-20 15:38:00 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g




CREATE TABLE DIM_CLIENTE
  (
    sk_cliente          NUMBER (9) NOT NULL ,
    nk_cliente          NUMBER (9) NOT NULL ,
    nm_cliente          VARCHAR2 (100) NOT NULL ,
    dt_nasc_cliente     DATE NOT NULL ,
    nu_dia_nasc_cliente CHAR (2) NOT NULL ,
    nu_mes_nasc_cliente CHAR (2) NOT NULL ,
    nu_ano_nasc_cliente CHAR (4) NOT NULL ,
    ds_sexo_cliente     CHAR (1) NOT NULL ,
    ds_endereco_cliente VARCHAR2 (100) NOT NULL ,
    ds_bairro_cliente   VARCHAR2 (60) NOT NULL ,
    ds_zona_cliente     VARCHAR2 (20) NOT NULL ,
    ds_cidade_cliente   VARCHAR2 (100) NOT NULL ,
    ds_estado_cliente   VARCHAR2 (30) NOT NULL ,
    ds_regiao_cliente   VARCHAR2 (20) NOT NULL ,
    dt_ultima_compra    DATE
  ) ;
ALTER TABLE DIM_CLIENTE ADD CONSTRAINT DIM_CLIENTE_PK PRIMARY KEY ( sk_cliente ) ;

CREATE TABLE DIM_DATA
  (
    sk_data              NUMBER (9) NOT NULL ,
    data                 DATE NOT NULL ,
    data_extenso         VARCHAR2 (80) NOT NULL ,
    ano                  CHAR (4) NOT NULL ,
    mes                  CHAR (2) NOT NULL ,
    mes_extenso          VARCHAR2 (20) NOT NULL ,
    mes_abreviado        CHAR (3) NOT NULL ,
    seman_mes            CHAR (2) NOT NULL ,
    semana_ano           CHAR (2) NOT NULL ,
    dia_mes              CHAR (2) NOT NULL ,
    dia_semana           CHAR (1) NOT NULL ,
    dia_semana_extenso   VARCHAR2 (15) NOT NULL ,
    dia_seman_abreviado  CHAR (3) NOT NULL ,
    dia_final_de_semana  CHAR (3) NOT NULL ,
    dia_ano              NUMBER (3) NOT NULL ,
    ano_bissexto         CHAR (1) NOT NULL ,
    feriado              VARCHAR2 (50) NOT NULL ,
    feriado_extenso      VARCHAR2 (50) NOT NULL ,
    pre_feriado          DATE NOT NULL ,
    pos_feriado          DATE NOT NULL ,
    quinzena_mes         CHAR (1) NOT NULL ,
    quinzena_ano         CHAR (2) NOT NULL ,
    bimestre             CHAR (1) NOT NULL ,
    trimestre            CHAR (1) NOT NULL ,
    semestre             CHAR (1) NOT NULL ,
    estacao_ano          VARCHAR2 (15) NOT NULL ,
    ultimo_dia_mes       CHAR (2) NOT NULL ,
    ultimo_dia_bimestre  CHAR (2) NOT NULL ,
    ultimo_dia_trimestre CHAR (2) NOT NULL ,
    ultimo_dia_semestre  CHAR (2) NOT NULL ,
    campanha             VARCHAR2 (30) NOT NULL ,
    pre_campanha         DATE NOT NULL ,
    pos_campanha         DATE NOT NULL
  ) ;
ALTER TABLE DIM_DATA ADD CONSTRAINT DIM_DATA_PK PRIMARY KEY ( sk_data ) ;

CREATE TABLE DIM_FUNCIONARIO
  (
    sk_funcionario       NUMBER (9) NOT NULL ,
    nk_funcionario       NUMBER (9) NOT NULL ,
    nm_funcionario       VARCHAR2 (100) NOT NULL ,
    nk_cargo_funcionario NUMBER (2) NOT NULL ,
    ds_cargo_funcionario VARCHAR2 (30) NOT NULL ,
    nk_gerente           NUMBER (9) NOT NULL ,
    nm_gerente           VARCHAR2 (100) NOT NULL ,
    ds_sexo              CHAR (1) NOT NULL ,
    dt_contratacao       DATE NOT NULL ,
    dt_demissao          DATE
  ) ;
ALTER TABLE DIM_FUNCIONARIO ADD CONSTRAINT DIM_FUNCIONARIO_PK PRIMARY KEY ( sk_funcionario ) ;

CREATE TABLE DIM_PRODUTO
  (
    sk_produto      NUMBER (9) NOT NULL ,
    nk_produto      NUMBER (9) NOT NULL ,
    nm_produto      VARCHAR2 (70) NOT NULL ,
    ds_produto      VARCHAR2 (400) NOT NULL ,
    nk_categoria    VARCHAR2 (3) NOT NULL ,
    nm_categoria    VARCHAR2 (50) NOT NULL ,
    nk_subcategoria NUMBER (9) NOT NULL ,
    nm_subcategoria VARCHAR2 (50) NOT NULL ,
    tp_torra_cafe   VARCHAR2 (20) NOT NULL ,
    tp_acidez_cafe  VARCHAR2 (20) NOT NULL ,
    tp_corpo_cafe   VARCHAR2 (20) NOT NULL ,
    tp_aroma_cafe   VARCHAR2 (20) NOT NULL ,
    bo_combo        VARCHAR2 (30) NOT NULL
  ) ;
ALTER TABLE DIM_PRODUTO ADD CONSTRAINT DIM_PRODUTO_PK PRIMARY KEY ( sk_produto ) ;

CREATE TABLE DIM_PROMOCAO
  (
    sk_promocao           NUMBER (9) NOT NULL ,
    nk_promocao           NUMBER (9) NOT NULL ,
    nm_promocao           VARCHAR2 (50) NOT NULL ,
    ds_tipo_promocao      VARCHAR2 (20) NOT NULL ,
    ds_categoria_promocao VARCHAR2 (30) NOT NULL ,
    ds_tipo_midia         VARCHAR2 (30) NOT NULL ,
    dt_inicio_promocao    DATE NOT NULL ,
    dt_final_promocao     DATE NOT NULL
  ) ;
ALTER TABLE DIM_PROMOCAO ADD CONSTRAINT DIM_PROMOCAO_PK PRIMARY KEY ( sk_promocao ) ;

CREATE TABLE DIM_UNIDADE
  (
    sk_unidade          NUMBER (9) NOT NULL ,
    nk_unidade          NUMBER (9) NOT NULL ,
    nm_unidade          VARCHAR2 (40) NOT NULL ,
    ds_unidade          VARCHAR2 (30) NOT NULL ,
    ds_endereco_unidade VARCHAR2 (100) NOT NULL ,
    ds_bairro_unidade   VARCHAR2 (60) NOT NULL ,
    ds_zona_unidade     VARCHAR2 (20) NOT NULL ,
    ds_cidade_unidade   VARCHAR2 (100) ,
    ds_estado_unidade   VARCHAR2 (30) ,
    ds_regiao_unidade   VARCHAR2 (20) NOT NULL ,
    ds_tipo_unidade     VARCHAR2 (30) NOT NULL ,
    nm_gerente_unidade  VARCHAR2 (100)
  ) ;
ALTER TABLE DIM_UNIDADE ADD CONSTRAINT DIM_UNIDADE_PK PRIMARY KEY ( sk_unidade ) ;

CREATE TABLE FAT_VENDA
  (
    sk_cliente           NUMBER (9) NOT NULL ,
    sk_data              NUMBER (9) NOT NULL ,
    sk_funcionario       NUMBER (9) NOT NULL ,
    sk_unidade           NUMBER (9) NOT NULL ,
    sk_produto           NUMBER (9) NOT NULL ,
    sk_promocao          NUMBER (9) NOT NULL ,
    dd_transacao         CHAR (2) NOT NULL ,
    qt_venda             NUMBER (9) NOT NULL ,
    vl_preco_unitario    NUMBER (6,2) NOT NULL ,
    vl_desconto_unitario NUMBER (6,2) NOT NULL ,
    vl_total_preco       NUMBER (6,2) NOT NULL ,
    vl_total_desconto    NUMBER (6,2) NOT NULL
  ) ;
ALTER TABLE FAT_VENDA ADD CONSTRAINT FAT_VENDA_PK PRIMARY KEY ( sk_produto, sk_data, sk_unidade, sk_promocao, sk_funcionario, dd_transacao, sk_cliente ) ;

ALTER TABLE FAT_VENDA ADD CONSTRAINT FAT_VENDA_DIM_CLIENTE_FK FOREIGN KEY ( sk_cliente ) REFERENCES DIM_CLIENTE ( sk_cliente ) ;

ALTER TABLE FAT_VENDA ADD CONSTRAINT FAT_VENDA_DIM_DATA_FK FOREIGN KEY ( sk_data ) REFERENCES DIM_DATA ( sk_data ) ;

ALTER TABLE FAT_VENDA ADD CONSTRAINT FAT_VENDA_DIM_FUNCIONARIO_FK FOREIGN KEY ( sk_funcionario ) REFERENCES DIM_FUNCIONARIO ( sk_funcionario ) ;

ALTER TABLE FAT_VENDA ADD CONSTRAINT FAT_VENDA_DIM_PRODUTO_FK FOREIGN KEY ( sk_produto ) REFERENCES DIM_PRODUTO ( sk_produto ) ;

ALTER TABLE FAT_VENDA ADD CONSTRAINT FAT_VENDA_DIM_PROMOCAO_FK FOREIGN KEY ( sk_promocao ) REFERENCES DIM_PROMOCAO ( sk_promocao ) ;

ALTER TABLE FAT_VENDA ADD CONSTRAINT FAT_VENDA_DIM_UNIDADE_FK FOREIGN KEY ( sk_unidade ) REFERENCES DIM_UNIDADE ( sk_unidade ) ;


-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             13
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
