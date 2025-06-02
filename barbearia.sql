use barbearia_2ds;

create table if not exists Clientes (id bigint auto_increment primary key,
									nome varchar(55) not null,
									telefone varchar(55) not null,
									email varchar(55),
									data_cadastro date);
                            
create table if not exists Funcionarios (id bigint auto_increment primary key,
									nome varchar(55) not null,
									cargo VARCHAR(55),
									telefone VARCHAR(55),
									email VARCHAR(100),
									data_admissao DATE);
    
create table if not exists Servicos (id bigint auto_increment primary key,
									nome varchar(55) not null,
                                    preco float not null,
                                    duracao int not null);
                                    
create table if not exists Barbeiro (id bigint auto_increment primary key,
									nome varchar(55) not null);
                                    
create table if not exists Agendamentos (id bigint auto_increment primary key,
									foreign key (cliente_id) references cliente(id),
                                    foreign key (barbeiro_id) references barbeiro(id),
                                    foreign key (servico_id) references servico(id),
                                    data_hora datetime not null,
                                    horario
                                    
create table if not exists Produtos (id bigint auto_increment primary key,
									nome varchar(55) not null,
                                    preco float not null,
                                    estoque varchar(55) not null);
									
                                    
                                    
                                    
									