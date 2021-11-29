-- criando o banco de dados
create database db_pizzaria_feliz;

-- criando a tabela categoria
use db_pizzaria_feliz;

create table tb_categoria (
	id bigint auto_increment,
    retirada varchar (30) not null,
    acompanhamento varchar (30),
    bonus varchar (30),
    ativo boolean,
    
    primary key (id)
);

-- populando tabela categoria
insert into tb_categoria (retirada, acompanhamento, bonus, ativo) values ("No local", "Refrigerante","Borda Recheada", true);
insert into tb_categoria (retirada, acompanhamento, bonus, ativo) values ("Entrega", "Nenhum","Borda Simples", true);
insert into tb_categoria (retirada, acompanhamento, bonus, ativo) values ("Entrega", "Suco","Borda Recheada", true);
insert into tb_categoria (retirada, acompanhamento, bonus, ativo) values ("No local", "Nenhum","Borda Simples", true);
insert into tb_categoria (retirada, acompanhamento, bonus, ativo) values ("Entrega", "Vinho","Borda Simples", true);

-- select da tabela categoria
select * from tb_categoria;

-- usando o banco de dados
use db_pizzaria_feliz;

-- criando a tabela pizzas
create table tb_pizzas (
	id bigint auto_increment,
	sabor varchar (50),
    preco decimal (5,2) not null, 
    opcao varchar (30),
    tamanho varchar (30),
    azeitona varchar (10),
    ativo boolean,
    categoria_id bigint not null,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

-- populando tabela pizzas
insert into tb_pizzas (sabor, preco, opcao, tamanho, azeitona, categoria_id) values ("Mussarela", 32.00, "Inteira", "Grande", "Extra", 1);
insert into tb_pizzas (sabor, preco, opcao, tamanho, azeitona, categoria_id) values ("Rúcula com Queijo e Tomate Seco", 40.00, "Meia" "Pequena", "Não", 2);
insert into tb_pizzas (sabor, preco, opcao, tamanho, azeitona, categoria_id) values ("Margerita", 38.00, "Inteira", "Grande", "Sim", 3);
insert into tb_pizzas (sabor, preco, opcao, tamanho, azeitona, categoria_id) values ("Frango com Catupiry e Quatro Queijos", 45.00, "Meia", "Média", "Não", 4);
insert into tb_pizzas (sabor, preco, opcao, tamanho, azeitona, categoria_id) values ("Chocolate com Morango", 55.00, "Inteira", "Pequena", "Não", 5);
insert into tb_pizzas (sabor, preco, opcao, tamanho, azeitona, categotia_id) values ("Calabresa", 32.00, "Inteira", "Grande", "Extra", 6);
insert into tb_pizzas (sabor, preco, opcao, tamanho, azeitona, categoria_id) values ("Moda da Casa", 40.00, "Inteira", "Média", "Sim", 7);
insert into tb_pizzas (sabor, preco, opcao, tamanho, azeitona, categoria_id) values ("Palmito", 50.00, "Inteira", "Pequena", "Sim", 8);

-- select da tabela pizza
select * from tb_pizza;

-- select preço > 45
select * from tb_pizzas where preco > 45;
-- select preço < 29 e < 60
select * from tb_pizzas where preco > 29 and preco < 60;

-- buscando pizza com inicial C 
select * from tb_pizzas where nome like "%c%";

-- usando inner join
select * from tb_pizzas inner join tb_categoria on tb_pizzas.id = tb_categoria.id;

-- trazendo todas as pizzas com caracteristicas iguais
select * from tb_pizzas where tamanho = "Média";
    
