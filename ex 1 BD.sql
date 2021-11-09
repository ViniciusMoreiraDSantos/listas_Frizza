create database escola_de_idiomas;
use escola_de_idiomas;



create table ator(
id int primary key auto_increment,
nome varchar(45),
dtnasc date 
)auto_increment 100;

create table diretor (
id int primary key auto_increment,
nome varchar(45),
pais varchar(45) 
) auto_increment 1;

create table filmes(
id int primary key auto_increment,
nome varchar(45),
genero varchar(45),
fkdiretor int,
foreign key (fkdiretor) references diretor(id)
)auto_increment 1000;

create table papel (
idPapel int primary key auto_increment,
fkNomeAtor int,
foreign key (fkNomeAtor) references ator(id),
fkfilme int, 
foreign key (fkfilme) references filmes(id),
personagem varchar(45),
salario decimal(10,2)
)auto_increment 1100;

insert into ator(nome, dtnasc) values 
('kaio lisboa', '1990-09-10'),
('Luiza', '1996-07-21'),
('Lucia', '1987-04-27'),
('Claudio', '1999-04-17'),
('Lucio', '2000-06-21'),
('humbert','2006-05-08');

insert into filmes(nome, genero, fkdiretor) values 
('As tranças do rei careca','Comédia', 2),
('As crônicas de Narnia', 'Ação', 1),
('Os sem florestas', 'Animação', 3),
('Toy story', 'Animação', 1),
('Invocação do Mal', 'Terror', 4);

insert into diretor (Nome, pais) values 
('Tarantino', 'USA'),
('Mario', 'Croácia'),
('Juliani','Senegal'),
('Wagner Moura', 'Brasil');

insert into papel(fkfilme, fkNomeAtor, personagem, salario) values
(100, 1000, 'Jota', 12000.90),
(101, 1003, 'Buzz', 120000.90),
(102, 1003, 'Wood', 12000.90),
(103, 1002, 'RJ', 12000.90),
(104, 1004, 'Jota', 12000.90);

select filmes.nome, papel.personagem, papel.salario 
	from papel 
		join filmes 
			on fkfilme = filmes.id;
            
select * from diretor join filmes on fkdiretor = diretor.id;