GO
use loja
INSERT INTO usuario (login,senha) VALUES ('op1','op1')
INSERT INTO usuario (login,senha) VALUES ('op2','op2')

INSERT INTO produto (nome,preco_de_venda,quantidade) VALUES ('Banana',5.00,100)
INSERT INTO produto (nome,preco_de_venda,quantidade) VALUES ('UVA',5.00,100)
INSERT INTO produto (nome,preco_de_venda,quantidade) VALUES ('Laranja',2.00,500)
INSERT INTO produto (nome,preco_de_venda,quantidade) VALUES ('Manga',4.10,800)
DELETE FROM produto WHERE idProduto=2

DECLARE @ID INT

SET @ID = next value for idPessoa_SEQ
INSERT INTO pessoa (idPessoa,nome,logradouro,cidade,estado,telefone,email) VALUES (@ID,'Joao','Rua 12, casa 3, Quitanda','Riacho do Sul','PA','1111-1111','joao@riacho.com') 
INSERT INTO pessoa_fisica (idPessoa,cpf) VALUES (@ID,'11111111111');

DECLARE @ID2 INT
SET @ID2 = next value for idPessoa_SEQ
INSERT INTO pessoa (idPessoa,nome,logradouro,cidade,estado,telefone,email) VALUES (@ID2,'JJC','Rua 11, Centro','Riacho do Norte','PA','1212-1212','jjc@riacho.com') 
INSERT INTO pessoa_juridica (idPessoa,cnpj) VALUES (@ID2,'222222222222222');

INSERT INTO movimento (idUsuario,idPessoa,idProduto,quantidade,tipo,valor_unitario) VALUES (1,7,1,20,'S',4.00);
INSERT INTO movimento (idUsuario,idPessoa,idProduto,quantidade,tipo,valor_unitario) VALUES (1,7,3,15,'S',2.00);
INSERT INTO movimento (idUsuario,idPessoa,idProduto,quantidade,tipo,valor_unitario) VALUES (2,7,3,10,'S',3.00);
INSERT INTO movimento (idUsuario,idPessoa,idProduto,quantidade,tipo,valor_unitario) VALUES (1,15,3,15,'E',5.00);
INSERT INTO movimento (idUsuario,idPessoa,idProduto,quantidade,tipo,valor_unitario) VALUES (1,15,4,20,'E',4.00);
