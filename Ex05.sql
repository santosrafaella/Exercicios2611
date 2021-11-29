-- criando o banco de dados
create database db_construindo_a_nossa_vida,;

-- criando a tabela categoria
use db_construindo_a_nossa_vida,;

create table tb_categoria(
    id int auto_increment  primary key,
    tipo varchar(50),
    desconto varchar(50),
    retirada varchar (50),
    ativo boolean,
    
	primary key (id)
);

-- populando tabela categoria
	insert into tb_categoria(tipo, desconto, retirada, ativo) values ("Construção", "20%", "No Local", true);
	insert into tb_categoria(tipo, desconto, retirada, ativo) values ("Jardinagem", "10%", "Entrega", true);
	insert into tb_categoria(tipo, desconto, retirada, ativo) values ("Decoração", "30%", "Entrega", true);
	insert into tb_categoria(tipo, desconto, retirada, ativo) values ("Piscina", "15%", "No Local", true);
	insert into tb_categoria(tipo, desconto, retirada, ativo) values ("Externo", "45%", "No Local", true);
    
    -- select da tabela categoria
	select * from db_construindo_a_nossa_vida;
    
	-- usando o banco de dados
  use db_construindo_a_nossa_vida;
    
    -- criando a tabela produto
create table tb_produto(
    id_produto int not null auto_increment primary key,
    nome varchar(255),
    valor decimal(5,2),
    cor varchar(255),
    id_categoria int not null,
    foreign key(id_categoria) references tb_categoria(id_categoria)
    );
    
    
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Argamassa", 20.00, "N/A", 1);
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Banco", 80.00, "Vermelho", 2);
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Tinta", 100.00, "Cimento", 3);
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Pá de Jardim", 25.00, "Verde", 4);
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Maleta de Ferramentas", 120.00, "Preto", 5);
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Luvas", 13.00, "Roxo", 6);
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Azulejo", 13.00, "Creme", 7);
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Madeira", 15.00, "Marrom", 8);
     
	select * from tb_produto;
    
    select * from tb_produto where valor between 20.00 and 60.00;
    
    select * from tb_produto where nome like "%c%";
    
    select * from tb_produto inner join tb_categoria on tb_produto.id_produto = tb_categoria.id_categoria;
    
    select * from tb_produto where valor = 13.00;