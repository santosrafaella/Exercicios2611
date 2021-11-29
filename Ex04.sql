-- criando o banco de dados
create database db_cidade_das_frutas;

-- criando a tabela categoria
use db_cidade_das_frutas;

create table tb_categoria(
    id int auto_increment  primary key,
    semente varchar(50),
    tipo varchar(50),
    embalagem varchar (50),
    ativo boolean,
    
	primary key (id)
);

-- populando tabela categoria
	insert into tb_categoria(semente, tipo, embalagem, ativo) values ("Sim", "Cacho", "Caixa", true);
	insert into tb_categoria(semente, tipo, embalagem, ativo) values ("Não", "Penca", "Sacola", true);
	insert into tb_categoria(semente, tipo, embalagem, ativo) values ("Sim", "Unidade", "Sacola", true);
	insert into tb_categoria(semente, tipo, embalagem, ativo) values ("Sim", "Unidade", "Caixa", true);
	insert into tb_categoria(semente, tipo, embalagem, ativo) values ("Sim", "Cacho", "Caixa", true);
    
    -- select da tabela categoria
	select * from tb_cidade_das_frutas;
    
	-- usando o banco de dados
  use db_cidade_das_frutas;
    
    -- criando a tabela produto
create table tb_produto(
    id_produto int not null auto_increment primary key,
    nome varchar(255),
    valor decimal(5,2),
    cor varchar(255),
    id_categoria int not null,
    foreign key(id_categoria) references tb_categoria(id_categoria)
    );
    
    
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Banana", 8.00, "Amarelo", 1);
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Maracujá", 15.00, "Amarelo", 2);
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Maçã", 5.00, "Vermelho", 3);
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Maçã", 8.00, "Verde", 4);
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Banana da Terra", 10.00, "Verde", 5);
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Uva", 13.00, "Roxo", 6);
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Laranja", 5.00, "Verde", 7);
    insert into tb_produto(nome, valor, cor, id_categoria) values ("Ameixa", 15.00, "Roxo", 8);
     
	select * from tb_produto;
    
    select * from tb_produto where valor between 20.00 and 60.00;
    
    select * from tb_produto where nome like "%p%";
    
    select * from tb_produto inner join tb_categoria on tb_produto.id_produto = tb_categoria.id_categoria;
    
    select * from tb_produto where valor = 5.00;