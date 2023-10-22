GO
use loja
INSERT INTO usuario (login,senha) VALUES ('op1','op1')
INSERT INTO usuario (login,senha) VALUES ('op2','op2')

INSERT INTO produto (idProduto,nome,preco_de_venda,quantidade) VALUES (1,'Banana',5.00,100)
INSERT INTO produto (idProduto,nome,preco_de_venda,quantidade) VALUES (3,'Laranja',2.00,500)
INSERT INTO produto (idProduto,nome,preco_de_venda,quantidade) VALUES (4,'Manga',4.10,800)

DECLARE @ID INT

SET @ID = next value for idPessoa_SEQ
INSERT INTO pessoa (idPessoa,nome,logradouro,cidade,estado,telefone,email) VALUES (@ID,'João','Rua 12, casa 3, Quitanda','Riacho do Sul','PA','1111-1111','joao@riacho.com') 
INSERT INTO pessoa_fisica (idPessoa,cpf) VALUES (@ID,'11111111111');

SET @ID = next value for idPessoa_SEQ
INSERT INTO pessoa (idPessoa,nome,logradouro,cidade,estado,telefone,email) VALUES (@ID,'JJC','Rua 11, Centro','Riacho do Norte','PA','1212-1212','jjc@riacho.com') 
INSERT INTO pessoa_juridica (idPessoa,cnpj) VALUES (@ID,'222222222222222');

INSERT INTO movimento (idUsuario,idPessoa,idProduto,quantidade,tipo,valor_unitario) VALUES (1,1,1,20,'S',4.00);
INSERT INTO movimento (idUsuario,idPessoa,idProduto,quantidade,tipo,valor_unitario) VALUES (1,1,3,15,'S',2.00);
INSERT INTO movimento (idUsuario,idPessoa,idProduto,quantidade,tipo,valor_unitario) VALUES (2,1,3,10,'S',3.00);
INSERT INTO movimento (idUsuario,idPessoa,idProduto,quantidade,tipo,valor_unitario) VALUES (1,2,3,15,'E',5.00);
INSERT INTO movimento VALUES (1,2,4,20,'E',4.00);
