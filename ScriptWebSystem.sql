--CREATE DATABASE WebSystem
--USE WebSystem

CREATE TABLE CadEmpresa(
	CNPJ		 Bigint	  NOT NULL,
	RazaoSocial	 Varchar(255) NOT NULL,
	NomeFantasia Varchar(255),
	Email		 Varchar(100),
	EndRua		 Varchar(50),
	EndNum		 Varchar(15),
	EndBairro	 Varchar(50),
	CEP			 Int,
	Cidade		 Varchar(50),
	Estado		 Varchar(2),
	Telefone	 Bigint,
	DtCadastro	 Datetime Default GETDATE(),
	StatusEmp	 Bit,
	Agencia		 Int,
	Conta		 Int 
	CONSTRAINT PK_CNPJ PRIMARY KEY (CNPJ)
);

CREATE TABLE CategEmpresa(
	IdCateg	 BigInt NOT NULL IDENTITY(1,1), 
	CatDescrEmp  Varchar(50)	
	CONSTRAINT PK_IDCATEG PRIMARY KEY (IdCateg),
	CONSTRAINT FK_IDCNPJ FOREIGN KEY (IdCateg) REFERENCES CadEmpresa(CNPJ)
)

