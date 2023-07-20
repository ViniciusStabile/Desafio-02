INSERT INTO tb_category(description) VALUES ('Curso')
INSERT INTO tb_category(description) VALUES ('Oficina')

INSERT INTO tb_activity(name,description,price,category_id) VALUES ('Curso de HTML','Aprenda HTML de forma pratica',80.0,1)
INSERT INTO tb_activity(name,description,price,category_id) VALUES ('Oficina de GitHub','Crontrole de versôes de seus projetos',50.0,2)

INSERT INTO tb_block(begin,finish) VALUES (TIMESTAMP WITH TIME ZONE '2017-09-25T08:00:00Z',TIMESTAMP WITH TIME ZONE '2017-09-25T11:00:00Z')
INSERT INTO tb_block(begin,finish) VALUES (TIMESTAMP WITH TIME ZONE '2017-09-25T14:00:00Z',TIMESTAMP WITH TIME ZONE '2017-09-25T18:00:00Z')
INSERT INTO tb_block(begin,finish) VALUES (TIMESTAMP WITH TIME ZONE '2017-09-25T08:00:00Z',TIMESTAMP WITH TIME ZONE '2017-09-25T11:00:00Z')

INSERT INTO tb_user(name,email) VALUES ('José Silva','jose@gmail.com')
INSERT INTO tb_user(name,email) VALUES ('Tiago Faria','tiago@gmail.com')
INSERT INTO tb_user(name,email) VALUES ('Maria do Rosario','Maria@gmail.com')
INSERT INTO tb_user(name,email) VALUES ('Teresa Silva','teresa@gmail.com')

INSERT INTO tb_block_activity(block_id,activity_id) VALUES (1,1)
INSERT INTO tb_block_activity(block_id,activity_id) VALUES (2,2)
INSERT INTO tb_block_activity(block_id,activity_id) VALUES (3,2)

INSERT INTO tb_user_activity(user_id,activity_id) VALUES (1,1)
INSERT INTO tb_user_activity(user_id,activity_id) VALUES (1,2)
INSERT INTO tb_user_activity(user_id,activity_id) VALUES (2,1)
INSERT INTO tb_user_activity(user_id,activity_id) VALUES (3,1)
INSERT INTO tb_user_activity(user_id,activity_id) VALUES (3,2)
INSERT INTO tb_user_activity(user_id,activity_id) VALUES (4,2)