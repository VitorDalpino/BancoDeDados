create TABLE CLIENTE
(
    IDCLIENTE number(5) PRIMARY key
  , NMCLIENTE VARCHAR2(100)
)
;

CREATE TABLE VENDA
(
    CODVENDA NUMBER(6)   PRIMARY key
  , DTVENDA  DATE        NOT NULL
  , IDCLIENTE  NUMBER(5) NOT NULL REFERENCES CLIENTE
  , DTCANCELAMENTO DATE
)
;

CREATE TABLE PRODUTO
(
    iDPRODUTO  NUMBER(5) PRIMARY key
  , DSPRODUTO  VARCHAR2(100) NOT NULL
  , QTDPRODUTOESTOQUE NUMBER(15,2) NOT NULL
  , PRECOPRODUTO      NUMBER(7,2) NOT NULL
);


CREATE TABLE VENDAITEM
(
    CODVENDA  NUMBER(6) REFERENCES venda
  , iDPRODUTO NUMBER(5) REFERENCES produTO
  , QTDVENDA   NUMBER(15,2) NOT NULL
  , PRECOVENDA NUMBER(7,2) NOT NULL
  , DTCANCELAMENTO  DATE
) ;


ALTER TABLE VENDAITEM
  ADD CONSTRAINTS VENDAITEM_PK PRIMARY KEY (CODVENDA, iDPRODUTO);
 
;  



CREATE OR REPLACE TRIGGER TG_VENDAITEM_ESTOQUE
BEFORE INSERT or UPDATE OR DELETE ON VENDAITEM
FOR EACH ROW
DECLARE
   V_PRECOPRODUTO PRODUTO.PRECOPRODUTO%TYPE;
BEGIN
   
   if inserting then
       SELECT P.PRECOPRODUTO
         INTO V_PRECOPRODUTO
       FROM PRODUTO P
       WHERE P.IDPRODUTO = nvl(:NEW.iDPRODUTO, :old.idproduto);
       
      :NEW.PRECOVENDA := V_PRECOPRODUTO;
   end if;
   
   if deleting then    
        update produTO
          set QTDPRODUTOESTOQUE = QTDPRODUTOESTOQUE + :old.QTDVENDA
        where iDPRODUTO = :old.idproduto;  
    elsif inserting then    
        update produTO
          set QTDPRODUTOESTOQUE = QTDPRODUTOESTOQUE - :new.QTDVENDA
        where iDPRODUTO = :new.idproduto;  
    ELSE
        update produTO
          set QTDPRODUTOESTOQUE = QTDPRODUTOESTOQUE + :old.QTDVENDA - :new.QTDVENDA
        where iDPRODUTO = :new.idproduto;          
   end if;
END;
/


insert into CLIENTE values(1, 'Danilo Aono');
insert into CLIENTE values(2, 'Carlos Papai');




insert into PRODUTO values(1, 'Fralda', 80, 15);

insert into PRODUTO values(2, 'Caneta', 10, 1.5);

insert into PRODUTO values(3, 'Bala', 100, 0.5);

update PRODUTO
  set PRECOPRODUTO = PRECOPRODUTO*1.5;




insert into VENDA values(1, sysdate, 1, null);


insert into VENDAITEM
(
    CODVENDA  
  , iDPRODUTO
  , QTDVENDA  
)
values(
    1
  , 3
  , 15  
) ;

insert into VENDAITEM
(
    CODVENDA  
  , iDPRODUTO
  , QTDVENDA  
)
values(
    1
  , 1
  , 1  
) ;