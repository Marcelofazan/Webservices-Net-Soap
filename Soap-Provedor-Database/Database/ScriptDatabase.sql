CREATE DATABASE BancoTesteSoap
ON PRIMARY (
    NAME = BancoTesteSoap_Data,
    FILENAME = 'D:\SQLServer\BancoTesteSoap.mdf',
    SIZE = 10MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10%
)
LOG ON (
    NAME = BancoTesteSoap_Log,
    FILENAME = 'D:\SQLServer\BancoTesteSoap.ldf',
    SIZE = 5MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 1MB
);
GO

USE BancoTesteSoap
GO

CREATE TABLE Pessoas (
	IdPessoa UNIQUEIDENTIFIER DEFAULT NEWID() NOT NULL,
	Nome varchar(120) NOT NULL,
	email varchar(120) NOT NULL,
	senha varchar(40) NULL,
	CONSTRAINT PK_Pessoa PRIMARY KEY CLUSTERED (IdPessoa)
);

GO

CREATE NONCLUSTERED INDEX IX_Pessoas_Nome ON Pessoas (Nome);
GO

USE BancoTesteSoap
GO

INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Nunes Silva', 'nunes.silva56@email.com', 'v68vxf6r');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Quiteria Alves', 'quiteria.alves89@email.com', 'jmfn8ak8');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Isabela Souza', 'isabela.souza44@email.com', 'vixssqp4');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Gabriela Pereira', 'gabriela.pereira17@email.com', 'v2vsoelq');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Paulo Rodrigues', 'paulo.rodrigues75@email.com', 'j9n9133x');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Sandra Pereira', 'sandra.pereira92@email.com', '64tpciqt');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('João Lima', 'joão.lima14@email.com', 'dk96iows');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Daniel Gomes', 'daniel.gomes19@email.com', 'sqnh0yct');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Nunes Alves', 'nunes.alves23@email.com', 'kts2zlth');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Karen Pereira', 'karen.pereira31@email.com', '01frlavu');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Bruno Souza', 'bruno.souza16@email.com', '5s4x52d7');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('João Lima', 'joão.lima56@email.com', 'bigdevfw');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Ricardo Rodrigues', 'ricardo.rodrigues75@email.com', 'vulvmf5q');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Nunes Ferreira', 'nunes.ferreira58@email.com', 'zcqcksxf');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Isabela Gomes', 'isabela.gomes76@email.com', 'oq7k7uuy');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Tiago Lima', 'tiago.lima68@email.com', 'ks3omoky');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Lucas Santos', 'lucas.santos19@email.com', 'wzztrelz');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Quiteria Rodrigues', 'quiteria.rodrigues26@email.com', '89qlylvp');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Marina Oliveira', 'marina.oliveira52@email.com', '01tsp6ne');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Carla Souza', 'carla.souza53@email.com', 'atrszbxh');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Quiteria Alves', 'quiteria.alves80@email.com', 'yuetkmfv');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Eduarda Ferreira', 'eduarda.ferreira43@email.com', 'hazj5tlc');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('João Lima', 'joão.lima49@email.com', 'p2by679i');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Paulo Alves', 'paulo.alves50@email.com', '63ifw6o4');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Olivia Santos', 'olivia.santos51@email.com', 'kbh1wdbq');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Quiteria Alves', 'quiteria.alves61@email.com', '9a99cbmb');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Tiago Souza', 'tiago.souza48@email.com', 'yjk62ugl');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Eduarda Pereira', 'eduarda.pereira40@email.com', '17axw1ao');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('João Ferreira', 'joão.ferreira47@email.com', 'm0dg4f9q');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Gabriela Gomes', 'gabriela.gomes92@email.com', 'ydele1ot');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Eduarda Santos', 'eduarda.santos86@email.com', 't15sd4hw');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Tiago Ferreira', 'tiago.ferreira94@email.com', 'o4czd2r9');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Ana Alves', 'ana.alves54@email.com', 'o6ldlxx4');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Gabriela Gomes', 'gabriela.gomes77@email.com', '0bjr1t9y');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Ana Santos', 'ana.santos94@email.com', 'pkyumjej');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Sandra Silva', 'sandra.silva44@email.com', 'bl52y84k');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Quiteria Gomes', 'quiteria.gomes77@email.com', 'qpqkuqb7');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Olivia Gomes', 'olivia.gomes23@email.com', 'th8vpvjh');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Fabio Ferreira', 'fabio.ferreira68@email.com', 'idcqscdr');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Sandra Souza', 'sandra.souza98@email.com', 'dg8yka3v');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Nunes Gomes', 'nunes.gomes81@email.com', '92zqvy3z');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Olivia Alves', 'olivia.alves37@email.com', 'gm6zcixs');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Hugo Ferreira', 'hugo.ferreira74@email.com', 'iy50j0nx');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Nunes Santos', 'nunes.santos38@email.com', '4zo83cto');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Daniel Alves', 'daniel.alves93@email.com', 'ihu3ttk5');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('João Souza', 'joão.souza34@email.com', '1yu6k9bj');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Gabriela Rodrigues', 'gabriela.rodrigues98@email.com', 'wogghbvk');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Fabio Rodrigues', 'fabio.rodrigues72@email.com', 'lgax3j9g');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Lucas Gomes', 'lucas.gomes93@email.com', '5bwosnil');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Eduarda Lima', 'eduarda.lima55@email.com', 'zzx6cuey');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Nunes Santos', 'nunes.santos43@email.com', 'kmvims4y');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Marina Souza', 'marina.souza97@email.com', '4vacqulc');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Isabela Oliveira', 'isabela.oliveira29@email.com', 'zo585hh5');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Ana Santos', 'ana.santos29@email.com', 'wo2m0fkq');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Ricardo Lima', 'ricardo.lima93@email.com', 'te3qvune');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Tiago Lima', 'tiago.lima43@email.com', 'shstkrdq');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Sandra Souza', 'sandra.souza25@email.com', 'sr4ubwee');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Carla Silva', 'carla.silva21@email.com', '1nlulz3p');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Fabio Oliveira', 'fabio.oliveira30@email.com', '3ol9c8x3');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Sandra Gomes', 'sandra.gomes70@email.com', 'nbjfrmtw');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Lucas Santos', 'lucas.santos73@email.com', 'bayfyimc');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Marina Santos', 'marina.santos56@email.com', '60ah9seo');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Tiago Gomes', 'tiago.gomes60@email.com', '5a3rr996');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Nunes Rodrigues', 'nunes.rodrigues95@email.com', 'wszzdtav');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Marina Silva', 'marina.silva34@email.com', 'qyg6ha0k');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Eduarda Oliveira', 'eduarda.oliveira73@email.com', '3hg1g0dz');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Karen Lima', 'karen.lima99@email.com', 'k2w22yo8');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Ricardo Gomes', 'ricardo.gomes90@email.com', 'qnvj1989');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Bruno Pereira', 'bruno.pereira70@email.com', 'lye0eeqw');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Tiago Oliveira', 'tiago.oliveira83@email.com', '4nq217la');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Carla Silva', 'carla.silva67@email.com', 'm1euwkch');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Olivia Rodrigues', 'olivia.rodrigues36@email.com', '0wtyqjk4');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Tiago Gomes', 'tiago.gomes35@email.com', 'febgbllr');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Nunes Pereira', 'nunes.pereira58@email.com', 'tjtrm9p2');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Fabio Silva', 'fabio.silva19@email.com', 'n1vwq1h3');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Sandra Oliveira', 'sandra.oliveira82@email.com', 'vzovlobh');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Karen Pereira', 'karen.pereira26@email.com', 'cud620hd');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Paulo Ferreira', 'paulo.ferreira58@email.com', '38g147iv');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Nunes Alves', 'nunes.alves68@email.com', 'lgrrrm1u');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Sandra Silva', 'sandra.silva32@email.com', 'pfpe33kq');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Nunes Pereira', 'nunes.pereira74@email.com', 'yiputna0');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Bruno Silva', 'bruno.silva61@email.com', 'fik4iioz');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Sandra Pereira', 'sandra.pereira17@email.com', 'b5b0123n');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Fabio Pereira', 'fabio.pereira15@email.com', '1815wqvx');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Ana Lima', 'ana.lima77@email.com', '4v6qcqo3');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Carla Alves', 'carla.alves76@email.com', '9ie8spck');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Gabriela Rodrigues', 'gabriela.rodrigues14@email.com', 'hsv0jhmp');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Daniel Ferreira', 'daniel.ferreira66@email.com', 'e3ehqa6c');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Olivia Ferreira', 'olivia.ferreira77@email.com', 'xjhr83g2');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Isabela Lima', 'isabela.lima41@email.com', 'ht7ohod5');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Marina Gomes', 'marina.gomes15@email.com', 'ahyglqvd');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Ana Alves', 'ana.alves43@email.com', 't30nybfk');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Carla Ferreira', 'carla.ferreira24@email.com', 'hfwiauuj');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Ricardo Rodrigues', 'ricardo.rodrigues46@email.com', 'thep3p6m');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Nunes Pereira', 'nunes.pereira74@email.com', 'twllqhs5');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Karen Gomes', 'karen.gomes79@email.com', 'k0y4vzx6');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Isabela Lima', 'isabela.lima49@email.com', 'y9pmv1tj');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Quiteria Souza', 'quiteria.souza43@email.com', 'fhyllqhc');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Nunes Pereira', 'nunes.pereira94@email.com', 'yck13ffo');
INSERT INTO [BancoTesteSoap].[dbo].[Pessoas] ([Nome], [email], [senha]) VALUES ('Olivia Gomes', 'olivia.gomes70@email.com', 'f058au48');

