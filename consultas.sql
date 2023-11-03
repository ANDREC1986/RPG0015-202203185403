use loja
SELECT * FROM pessoa, pessoa_fisica WHERE pessoa.idPessoa = pessoa_fisica.idPessoa;
SELECT * FROM pessoa, pessoa_juridica WHERE pessoa.idPessoa = pessoa_juridica.idPessoa;
SELECT *, quantidade * valor_unitario as valor_total FROM movimento WHERE tipo = 'E' 
SELECT *, quantidade * valor_unitario as valor_total FROM movimento WHERE tipo = 'S' 
SELECT idProduto, SUM(quantidade * valor_unitario) as valor_total FROM movimento WHERE tipo = 'E' Group by idProduto
SELECT idProduto, SUM(quantidade * valor_unitario) as valor_total FROM movimento WHERE tipo = 'S' Group by idProduto

SELECT idUsuario from movimento EXCEPT SELECT idUsuario from movimento WHERE tipo = 'E'

SELECT idUsuario, SUM(quantidade * valor_unitario) as valor_total FROM movimento WHERE tipo = 'E' Group by idUsuario
SELECT idUsuario, SUM(quantidade * valor_unitario) as valor_total FROM movimento WHERE tipo = 'S' Group by idUsuario

SELECT idProduto, AVG(valor_unitario) as valor_medigo FROM movimento WHERE tipo = 'S' Group by idProduto