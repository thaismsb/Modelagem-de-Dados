
CREATE TABLE categorias (
  id serial PRIMARY KEY ,
  nome varchar(50) NOT NULL
);

CREATE TABLE  produtos(
  id serial PRIMARY KEY ,
  nome varchar(100),
  descricao text,
  preco int,
  quantidade_em_estoque int,
  categoria_id int NOT NULL REFERENCES categorias(id)
);

CREATE TABLE clientes (
  cpf char(11) NOT NULL PRIMARY KEY UNIQUE,
  nome varchar(150) NOT NULL
);

CREATE TABLE  vendedores (
  cpf char(11) NOT NULL PRIMARY KEY UNIQUE,
  nome varchar(150) NOT NULL
);

CREATE TABLE pedidos (
  id serial  PRIMARY KEY ,
  valor int,
  cliente_cpf char(11)  NOT NULL REFERENCES clientes(cpf),
  vendedor_cpf char(11) NOT NULL REFERENCES vendedores(cpf)
);

CREATE TABLE itens_do_pedido (
  Id serial PRIMARY KEY,
  pedido_id int NOT NULL REFERENCES  pedidos(id),
  quantidade int NOT NULL,
  produto_id int NOT NULL REFERENCES produtos(id)
  
);

INSERT INTO categorias 
(nome)
VALUES
('frutas'),
('verduras'),
('bebidas'),
('utilidades'),
('massas');


INSERT INTO produtos
(nome,descricao,preco,quantidade_em_estoque,categoria_id)
VALUES
('Mamão','Rico em vitamina A, potássio e vitamina C',300,123,1),
('Maça','	Fonte de potássio e fibras.',90,34,1),
('Cebola','	Rico em quercetina, antocianinas, vitaminas do complexo B, C.',	50,76,2),
('Abacate','	NÃO CONTÉM GLÚTEN.',150,64,	1),
('Tomate','	Rico em vitaminas A, B e C.',125,88,2),
('Acelga','	NÃO CONTÉM GLÚTEN.',235,13,	2),
('Macarrão parafuso','	Sêmola de trigo enriquecida com ferro e ácido fólico, ovos e corantes naturais',690,5,	5),
('Massa para lasanha','	Uma reunião de família precisa ter comida boa e muita alegria.',875,19,5),
('Refrigerante coca cola lata','	Sabor original',350	,189,3),
('Refrigerante Pepsi 2l','	NÃO CONTÉM GLÚTEN. NÃO ALCOÓLICO.',700,12,3),
('Cerveja Heineken 600ml','	Heineken é uma cerveja lager Puro Malte, refrescante e de cor amarelo-dourado',1200,500,3),
('Agua mineral sem gás','	Smartwater é água adicionado de sais mineirais (cálcio, potássio e magnésio) livre de sódio e com pH neutro.',130,478,	3),
('Vassoura','	Pigmento, matéria sintética e metal.',2350,30,4),
('Saco para lixo','Reforçado para garantir mais segurança',1340,90,4),
('Escova dental','Faça uma limpeza profunda com a tecnologia inovadora',1000,44,4),
('Balde para lixo 50l','Possui tampa e fabricado com material reciclado',2290,55,4),
('Manga','Rico em Vitamina A, potássio e vitamina C',	198,176,1),
('Uva','NÃO CONTÉM GLÚTEN.',420,90,	1);

INSERT INTO clientes
(cpf,nome)
VALUES
('80371350042','José Augusto Silva'),
('67642869061','Antonio Oliveira'),
('63193310034','Ana Rodrigues'),
('75670505018','Maria da Conceição');


INSERT INTO vendedores
(cpf,nome)
VALUES
(' 82539841031','Rodrigo Sampaio'),
('23262546003','Beatriz Souza Santos'),
('28007155023','Carlos Eduardo');

INSERT INTO pedidos 
(valor, cliente_cpf, vendedor_cpf) 
VALUES
(9650, '80371350042', '28007155023');


INSERT INTO itens_do_pedido 
(pedido_id, quantidade, produto_id) 
VALUES
(1, 1, 1),
(1, 1, 10),
(1, 6, 11),
(1, 1, 15),
(1, 5, 2);

UPDATE produtos
SET quantidade_em_estoque = 122
WHERE id = 1;

UPDATE produtos
SET quantidade_em_estoque = 11
WHERE id = 10;

UPDATE produtos
SET quantidade_em_estoque = 494
WHERE id = 11;

UPDATE produtos
SET quantidade_em_estoque = 43
WHERE id = 15;


INSERT INTO pedidos 
(valor, cliente_cpf, vendedor_cpf) 
VALUES
(6460, '63193310034', '23262546003');


INSERT INTO itens_do_pedido 
(pedido_id, quantidade, produto_id) 
VALUES
(2, 10, 17),
(2, 3, 18),
(2, 5, 1),
(2, 10, 5),
(2, 2, 6);


UPDATE produtos
SET quantidade_em_estoque = 166
WHERE id = 17;

UPDATE produtos
SET quantidade_em_estoque = 87
WHERE id = 18;

UPDATE produtos
SET quantidade_em_estoque = 117
WHERE id = 1;

UPDATE produtos
SET quantidade_em_estoque = 78
WHERE id = 5;

UPDATE produtos
SET quantidade_em_estoque = 11
WHERE id = 6;

INSERT INTO pedidos 
(valor, cliente_cpf, vendedor_cpf) 
VALUES
(4120, '75670505018', '23262546003');

INSERT INTO itens_do_pedido
(pedido_id, quantidade, produto_id) 
VALUES
(3, 1, 13),
(3, 6, 12),
(3, 5, 17);


UPDATE produtos
SET quantidade_em_estoque = 29
WHERE id = 13;

UPDATE produtos
SET quantidade_em_estoque = 472
WHERE id = 12;

UPDATE produtos
SET quantidade_em_estoque = 161
WHERE id = 17;

INSERT INTO pedidos 
(valor, cliente_cpf, vendedor_cpf) 
VALUES
(9370, '75670505018', ' 82539841031');

INSERT INTO itens_do_pedido 
(pedido_id, quantidade, produto_id) 
VALUES
(4, 1, 16),
(4, 6, 18),
(4, 1, 7),
(4, 3, 1),
(4, 20, 5),
(4, 2, 6);


UPDATE produtos
SET quantidade_em_estoque = 54
WHERE id = 16;

UPDATE produtos
SET quantidade_em_estoque = 81
WHERE id = 18;

UPDATE produtos
SET quantidade_em_estoque = 4
WHERE id = 7;

UPDATE produtos
SET quantidade_em_estoque = 114
WHERE id = 1;

UPDATE produtos
SET quantidade_em_estoque = 58
WHERE id = 5;

UPDATE produtos
SET quantidade_em_estoque = 9
WHERE id = 6;


INSERT INTO pedidos 
(valor, cliente_cpf, vendedor_cpf) 
VALUES
(8229, '67642869061', ' 82539841031');

INSERT INTO itens_do_pedido 
(pedido_id, quantidade, produto_id) 
VALUES
(5, 8, 18),
(5, 1, 8),
(5, 3, 17),
(5, 8, 5),
(5, 2, 11);


UPDATE produtos
SET quantidade_em_estoque = 79
WHERE id = 18;

UPDATE produtos
SET quantidade_em_estoque = 18
WHERE id = 8;

UPDATE produtos
SET quantidade_em_estoque = 163
WHERE id = 17;

UPDATE produtos
SET quantidade_em_estoque = 50
WHERE id = 5;

UPDATE produtos
SET quantidade_em_estoque = 492
WHERE id = 11;


--a) Faça uma listagem de todos os produtos cadastrados com o nome da sua respectiva categoria.

SELECT produtos.nome, categorias.nome FROM produtos
JOIN categorias ON produtos.categoria_id = categorias.id;

--b) Faça uma listagem de todos os pedidos com o nome do vendedor e o nome do cliente relacionado 
--a venda.
SELECT pedidos.id, clientes.nome AS nome_cliente ,vendedores.nome AS nome_vendedor FROM pedidos
JOIN clientes ON pedidos.cliente_cpf = clientes.cpf
JOIN vendedores ON pedidos.vendedor_cpf = vendedores.cpf;

--c)Faça uma listagem de todas as categorias e a soma do estoque disponível de todos os produtos de cada categoria.

SELECT categorias.nome, (sum(produtos.quantidade_em_estoque)) AS  soma_estoque FROM produtos
JOIN categorias ON produtos.categoria_id= categorias.id
GROUP BY categorias.nome;

--d) Faça uma listagem de todos os produtos e a quantidade vendida de cada produto.

SELECT produtos.nome, (sum(itens_do_pedido.quantidade)) AS quantidade_vendida FROM produtos
FULL JOIN itens_do_pedido ON produtos.id= itens_do_pedido.produto_id
GROUP BY produtos.id;

