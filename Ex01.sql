-- criando o banco de dados
create database db_generation_game_online;

-- usando o banco de dados
use db_generation_game_online;

-- criando a tabela classe
create table tb_classe (
	id bigint auto_increment,
    jogador varchar (30) not null,
    nivel varchar (30),
    cenario varchar (30),
    ativo boolean,
    
    primary key (id)
);

-- populando tabela classe
insert into tb_classe (jogador, nivel, cenario, ativo) values ("João", "Iniciante", "Montanhas", true);
insert into tb_classe (jogador, nivel, cenario, ativo) values ("Fernanda", "Avançado", "Floresta", true);
insert into tb_classe (jogador, nivel, cenario, ativo) values ("Gabriela", "Intermediário", "Urbano", true);
insert into tb_classe (jogador, nivel, cenario, ativo) values ("Cris", "Intermediário", "Praia", true);
insert into tb_classe (jogador, nivel, cenario, ativo) values ("Isabel", "Iniciante", "Deserto", true);

-- select da tabela classe
select * from tb_classe;

-- criando a tabela personagens
use db_generation_game_online;

create table tb_personagens (
	id bigint auto_increment,
    nome varchar (30),
    ataque varchar (30),
    resistencia varchar (30),
    dominio varchar (10),
	bonus varchar (30),
    classe_id bigint not null,
    
    primary key (id),
    foreign key (classe_id) references tb_classe (id)
);

-- populando tabela personagens
insert into tb_personagens (nome, ataque, resistencia, dominio, bonus, classe_id) values ("Ágata", 2300, "Baixa", "Água", "Martelo", 1);
insert into tb_personagens (nome, ataque, resistencia, dominio, bonus, classe_id) values ("Citrino", 2500, "Baixa", "Fogo", "Bola de Fogo", 2);
insert into tb_personagens (nome, ataque, resistencia, dominio, bonus, classe_id) values ("Quartzo", 5000, "Máxima", "Ar", "Redemoinho", 3);
insert into tb_personagens (nome, ataque, resistencia, dominio, bonus, classe_id) values ("Selenita", 4600, "Forte", "Terra", "3x Velocidade", 4);
insert into tb_personagens (nome, ataque, resistencia, dominio, bonus, classe_id) values ("Turmalina Negra", 4900, "Forte", "Fogo", "Raio de Energia", 5);
insert into tb_personagens (nome, ataque, resistencia, dominio, bonus, classe_id) values ("Opalina", 3700, "Média", "Ar", "Levitação", 6);
insert into tb_personagens (nome, ataque, resistencia, dominio, bonus, classe_id) values ("Topázio", 3100, "Média", "Água", "Onda Gigante", 7);
insert into tb_personagens (nome, ataque, resistencia, dominio, bonus, classe_id) values ("Ametista", 5000, "Máxima", "Terra", "Raízes", 8);

-- select da tabela personagens
select * from tb_personagens;
-- select ataque > 2000
select * from tb_personagens where ataque > 2000;
-- select ataque < 2000
select * from tb_personagens where ataque > 1000 and ataque < 2000;

-- buscando personagem com inicial C 
select * from tb_personagens where nome like "%c%";

-- usando inner join
select * from tb_personagens inner join tb_classe on tb_personagens.id = tb_classe.id;

-- trazendo todos os personagens de uma classe especifica
select * from tb_personagens where dominio = "Fogo";
    
