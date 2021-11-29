-- criando o banco de dados
create database db_construindo_a_nossa_vida;

-- criando a tabela categoria
use db_construindo_a_nossa_vida;

create table tb_categoria(
    id int auto_increment  primary key,
    formato varchar(50),
    aulas bigint (50),
    idioma varchar (50),
    ativo boolean,
    
	primary key (id)
);

-- populando tabela categoria
	insert into tb_categoria(formato, aulas, idioma, ativo) values ("Presencial", "20", "Português", true);
	insert into tb_categoria(formato, aulas, idioma, ativo) values ("Online", "10", "Português", true);
	insert into tb_categoria(formato, aulas, idioma, ativo) values ("Online", "24", "Inglês", true);
	insert into tb_categoria(formato, aulas, idioma, ativo) values ("Presencial", "10", "Italiano", true);
	insert into tb_categoria(formato, aulas, idioma, ativo) values ("Online", "12", "Português", true);
    
    -- select da tabela categoria
	select * from db_construindo_a_nossa_vida;
    
	-- usando o banco de dados
  use db_construindo_a_nossa_vida;
    
    -- criando a tabela cursos
create table tb_cursos(
    id_cursos int not null auto_increment primary key,
    nome varchar(255),
    valor decimal(5,2),
    desconto varchar(255),
    id_categoria int not null,
    foreign key(id_categoria) references tb_categoria(id_categoria)
    );
    
    
    insert into tb_cursos(nome, valor, desconto, id_categoria) values ("Programação", 600.00, "40%", 1);
    insert into tb_cursos(nome, valor, desconto, id_categoria) values ("Análise de Dados", 800.00, "35%", 2);
    insert into tb_cursos(nome, valor, desconto, id_categoria) values ("Fotografia", 400.00, "15%", 3);
    insert into tb_cursos(nome, valor, desconto, id_categoria) values ("Confeitaria", 200.00, "20%", 4);
    insert into tb_cursos(nome, valor, desconto, id_categoria) values ("Churrasco", 320.00, "10%", 5);
    insert into tb_cursos(nome, valor, desconto, id_categoria) values ("Pintura", 150.00, "20%", 6);
    insert into tb_cursos(nome, valor, desconto, id_categoria) values ("Costura", 100.00, "30%", 7);
    insert into tb_cursos(nome, valor, desconto, id_categoria) values ("Jardinagem", 150.00, "30%", 8);
     
	select * from tb_cursos;
    
    select * from tb_cursos where valor between 20.00 and 60.00;
    
    select * from tb_cursos where nome like "%c%";
    
    select * from tb_cursos inner join tb_categoria on tb_cursos.id_cursos = tb_categoria.id_categoria;
    
    select * from tb_cursos where desconto = "30%";