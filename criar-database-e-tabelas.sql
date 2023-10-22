GO
CREATE DATABASE loja;

GO
use loja

CREATE TABLE usuario (
	idUsuario int identity(1,1) primary key not null,
	login varchar(40) not null,
	senha varchar(40) not null
)

CREATE TABLE pessoa (
	idPessoa int primary key not null,
	nome varchar(255) not null,
	logradouro varchar(255) not null,
	complemento varchar(255),
	cidade varchar(255) not null,
	estado varchar(2) not null,
	telefone varchar(11) not null,
	email varchar(255)
)

CREATE TABLE pessoa_Juridica (
	cnpj varchar(15) not null primary key,
	idPessoa int foreign key references pessoa(idPessoa)
)

CREATE TABLE pessoa_fisica (
	cpf varchar(11) not null primary key,
	idPessoa int foreign key references pessoa(idPessoa)
)

CREATE TABLE tipo (
	idTipo char(1) not null primary key,
	decricao varchar(100) not null
)

CREATE TABLE produto (
	idProduto int identity(1,1) primary key,
	nome varchar(255) not null,
	quantidade int not null,
	preco_de_venda float not null
)

CREATE TABLE movimento(
	idMovimento int identity(1,1) primary key,
	tipo char(1) foreign key references tipo(idTipo),
	usuario int foreign key references usuario(idUsuario),
	pessoa int foreign key references pessoa(idPessoa),
	produto int foreign key references produto(idProduto),
	quantidade int not null,
	valor_unitario float not null
)

CREATE SEQUENCE idPessoa_SEQ
		AS INT
		START WITH 1
		INCREMENT BY 1
