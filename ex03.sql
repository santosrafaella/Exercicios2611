-- criando o banco de dados
create database db_farmacia_do_bem;

-- criando a tabela categoria
use db_farmacia_do_bem;

create table tb_categoria(
    id_categoria int auto_increment  primary key,
    categoria varchar(50),
    tipo varchar(50),
    receita varchar (50),
    ativo boolean,
    
	primary key (id)
);

-- populando tabela categoria
	insert into tb_categoria(retirada, embalagem, receita, ativo) values ("No Local", "Caixa", "Sim", true);
	insert into tb_categoria(retirada, embalagem, receita, ativo) values ("Entrega", "Cartela", "Não", true);
	insert into tb_categoria(retirada, embalagem, receita, ativo) values ("Entrega", "Garrafa", "Não", true);
	insert into tb_categoria(retirada, embalagem, receita, ativo) values ("No Local", "Caixa", "Sim", true);
	insert into tb_categoria(retirada, embalagem, receita, ativo) values ("No Local", "Caixa", "Sim", true);
    
    -- select da tabela categoria
	select * from tb_categoria;
    
	-- usando o banco de dados
  use db_farmacia_do_bem;
    
    -- criando a tabela produto
create table tb_produto(
    id_produto int not null auto_increment primary key,
    nome varchar(255),
    valor decimal(5,2),
    validade varchar(255),
    lote varchar(255),
    id_categoria int not null,
    foreign key(id_categoria) references tb_categoria(id_categoria)
    );
    
    
    insert into tb_produto(nome, valor, validade, lote, id_categoria) values ("Dipirona", 7.00, "26/03/2026", "02012021", 1);
    insert into tb_produto(nome, valor, validade, lote, id_categoria) values ("Paracetamol", 10.00, "26/03/2026", "30052029", 2);
    insert into tb_produto(nome, valor, validade, lote, id_categoria) values ("Advil", 2.00, "26/03/2026", "30052029", 3);
    insert into tb_produto(nome, valor, validade, lote, id_categoria) values ("Dorflex", 5.00, "26/03/2026", "30052029", 4);
    insert into tb_produto(nome, valor, validade, lote, id_categoria) values ("Colírio", 20.00, "26/03/2026", "30052029", 5);
    insert into tb_produto(nome, valor, validade, lote, id_categoria) values ("Gaze", 5.00, "26/03/2026", "30052029", 6);
    insert into tb_produto(nome, valor, validade, lote, id_categoria) values ("Soro Fisiológico", 5.00, "26/03/2026", "30052029", 7);
    insert into tb_produto(nome, valor, validade, lote, id_categoria) values ("Pomada", 25.00, "26/03/2026", "30052029", 8);
     
	select * from tb_produto;
    
    select * from tb_produto where valor between 20.00 and 60.00;
    
    select * from tb_produto where nome like "%p%";
    
    select * from tb_produto inner join tb_categoria on tb_produto.id_produto = tb_categoria.id_categoria;
    
    select * from tb_produto where valor = 5.00;