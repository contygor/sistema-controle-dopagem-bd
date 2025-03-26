-- Os dados inseridos abaixo foram gerados por Inteligência Artificial (IA) para fins de teste e desenvolvimento,
-- com o objetivo de trabalhar com o banco de dados. Esses dados não correspondem a informações reais e são 
-- utilizados para verificar a integridade do banco de dados e testar os relacionamentos entre as tabelas.

-- Inserindo documentos
INSERT INTO documento (tipo_documento, numero_documento) VALUES
('Passaporte', 'A1234567'),
('Passaporte', 'B2345678'),
('Passaporte', 'C3456789'),
('Passaporte', 'D4567890'),
('Passaporte', 'E5678901'),
('Passaporte', 'F6789012'),
('Passaporte', 'G7890123');

-- Inserindo técnicos
INSERT INTO tecnico (nome, sobrenome) VALUES
('Carlos', 'Silva'),
('Mariana', 'Souza'),
('Roberto', 'Ferreira'),
('Ana', 'Pereira'),
('João', 'Lima'),
('Fernanda', 'Costa'),
('Ricardo', 'Almeida');

-- Inserindo médicos
INSERT INTO medico (nome, sobrenome, crm) VALUES
('Paulo', 'Oliveira', 'CRM12345'),
('Tatiana', 'Ramos', 'CRM67890'),
('Gustavo', 'Mendes', 'CRM11223'),
('Luciana', 'Alves', 'CRM44556'),
('Felipe', 'Rodrigues', 'CRM78901'),
('Cláudia', 'Martins', 'CRM23456'),
('André', 'Carvalho', 'CRM34567');

-- Inserindo endereços dos atletas
INSERT INTO endereco (rua, numero, cep, cidade, estado, pais) VALUES
('Rua A', '123', '01000-000', 'São Paulo', 'SP', 'Brasil'),
('Rua B', '456', '20000-000', 'Buenos Aires', 'Buenos Aires', 'Argentina'),
('Rua C', '789', '30000-000', 'Rio de Janeiro', 'RJ', 'Brasil'),
('Rua D', '101', '40000-000', 'Lisboa', 'Lisboa', 'Portugal'),
('Rua E', '202', '50000-000', 'Madrid', 'Madrid', 'Espanha'),
('Rua F', '303', '60000-000', 'Belo Horizonte', 'MG', 'Brasil'),
('Rua G', '404', '70000-000', 'Santiago', 'Santiago Metropolitan Region', 'Chile');

-- Inserindo atletas
INSERT INTO atleta (id_documento, id_tecnico, id_medico, id_endereco, nome, sobrenome, sexo, nacionalidade, email, nascimento, telefone, assinatura) VALUES
(1, 1, 1, 1, 'Gabriel', 'Santos', 'M', 'Brasil', 'gabriel@email.com', '1998-05-21', '+55 11 98765-4321', NULL),
(2, 2, 2, 2, 'Lucas', 'Ferreira', 'M', 'Argentina', 'lucas@email.com', '1996-08-14', '+54 9 1234-5678', NULL),
(3, 3, 3, 3, 'Fernanda', 'Almeida', 'F', 'Brasil', 'fernanda@email.com', '2000-01-10', '+55 21 99999-8888', NULL),
(4, 4, 4, 4, 'Mariana', 'Lima', 'F', 'Portugal', 'mariana@email.com', '1997-07-30', '+351 91234-5678', NULL),
(5, 5, 5, 5, 'Rafael', 'Rodrigues', 'M', 'Espanha', 'rafael@email.com', '1995-12-25', '+34 67890-1234', NULL),
(6, 6, 6, 6, 'Beatriz', 'Mendes', 'F', 'Brasil', 'beatriz@email.com', '1999-03-18', '+55 31 91234-5678', NULL),
(7, 7, 7, 7, 'Diego', 'Costa', 'M', 'Chile', 'diego@email.com', '2001-06-05', '+56 9 8765-4321', NULL);

-- Inserindo escolta com nomes e horários diferentes para cada atleta e datas distintas
INSERT INTO escolta (data_escolta, hora_escolta, nome_escolta, assinatura_escolta) VALUES
('2025-03-20', '09:00:00', 'Pedro Santos', 'assinatura1'),  -- Atleta 1 escoltado em 2025-03-20
('2025-03-21', '10:00:00', 'Carlos Alberto', 'assinatura2'),  -- Atleta 2 escoltado em 2025-03-21
('2025-03-22', '11:00:00', 'Laura Silva', 'assinatura3'),  -- Atleta 3 escoltado em 2025-03-22
('2025-03-23', '12:00:00', 'Joaquim Lima', 'assinatura4'),  -- Atleta 4 escoltado em 2025-03-23
('2025-03-24', '13:00:00', 'Ricardo Costa', 'assinatura5'),  -- Atleta 5 escoltado em 2025-03-24
('2025-03-25', '14:00:00', 'Fernanda Oliveira', 'assinatura6'),  -- Atleta 6 escoltado em 2025-03-25
('2025-03-26', '15:00:00', 'Marcelo Pereira', 'assinatura7');  -- Atleta 7 escoltado em 2025-03-26

-- Inserindo autoridades
INSERT INTO autoridades (autoridade_teste, autoridade_coleta, autoridade_gestao, autoridade_controle) VALUES
('WADA', 'COI', 'Comitê Brasileiro', 'Agência Antidoping');

-- Inserindo equipamentos
INSERT INTO equipamento (marca_fabricante, modelo) VALUES
('Omega', 'X100'),
('Siemens', 'D200');

-- Inserindo eventos
INSERT INTO evento (competicao, esporte, funcao_atleta) VALUES
('Olimpíadas 2024', 'Atletismo', 'Corredor'),
('Mundial 2025', 'Natação', 'Nadador');

-- Inserindo representantes do atleta, um para cada atleta
INSERT INTO representante_do_atleta (nome, sobrenome, funcao, assinatura) VALUES
('Ricardo', 'Pereira', 'Treinador', NULL),
('Ana', 'Costa', 'Mentor', NULL),
('Roberto', 'Lima', 'Gerente', NULL),
('Juliana', 'Oliveira', 'Consultora', NULL),
('Carlos', 'Rodrigues', 'Assistente', NULL),
('Fernanda', 'Almeida', 'Supervisor', NULL),
('João', 'Mendes', 'Líder de Equipe', NULL);

-- Inserindo confirmações com horários diferentes para cada atleta
INSERT INTO confirmacao (data_confirmacao, hora_finalizacao_exames, id_representante_do_atleta) VALUES
('2025-03-20', '12:00:00', 1),
('2025-03-20', '13:00:00', 2),
('2025-03-20', '14:00:00', 3),
('2025-03-20', '15:00:00', 4),
('2025-03-20', '16:00:00', 5),
('2025-03-20', '17:00:00', 6),
('2025-03-20', '18:00:00', 7);

-- Inserindo oficiais de controle
INSERT INTO oficial_de_controle (nome, assinatura) VALUES
('Joana Marques', NULL),
('Ricardo Silva', NULL);

-- Relacionando amostras com atletas
INSERT INTO amostra (id_atleta, id_escolta, id_autoridades, id_equipamento, id_oficial_controle, id_evento, id_confirmacao, data_coleta, hora_chegada_atleta, codigo_relatorio_suplementar) VALUES
(1, 1, 1, 1, 1, 1, 1, '2025-03-20', '09:30:00', 'ABC123'),
(2, 2, 1, 2, 1, 2, 2, '2025-03-20', '09:45:00', 'DEF456'),
(3, 3, 1, 1, 2, 1, 3, '2025-03-20', '10:00:00', 'GHI789'),
(4, 4, 1, 2, 2, 2, 4, '2025-03-20', '10:15:00', 'JKL012'),
(5, 5, 1, 1, 1, 1, 5, '2025-03-20', '10:30:00', 'MNO345'),
(6, 6, 1, 2, 1, 2, 6, '2025-03-20', '10:45:00', 'PQR678'),
(7, 7, 1, 1, 1, 1, 7, '2025-03-20', '11:00:00', 'STU901');

INSERT INTO amostra_parcial (volume_amostra, dia_hora_selagem) VALUES
('50ml', '2025-03-26 11:59:46.882450'),
('60ml', '2025-03-26 11:59:46.882450'),
('70ml', '2025-03-26 11:59:46.882450'),
('80ml', '2025-03-26 11:59:46.882450'),
('90ml', '2025-03-26 11:59:46.882450'),
('100ml', '2025-03-26 11:59:46.882450'),
('110ml', '2025-03-26 11:59:46.882450');

INSERT INTO amostras_parciais_da_amostra (id_amostra, id_amostra_parcial) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

INSERT INTO tipo_amostra (nome_tipo, data_hora_selagem, densidade_amostra, volume_amostra) VALUES
('Urina', '2025-03-26 12:00:00', '1.020', '50ml'), -- Atleta 1
('Sangue', '2025-03-26 12:10:00', '1.045', '10ml'), -- Atleta 2
('Urina', '2025-03-26 12:20:00', '1.015', '60ml'), -- Atleta 3
('DSS', '2025-03-26 12:30:00', '1.030', '70ml'), -- Atleta 4
('Urina', '2025-03-26 12:40:00', '1.025', '80ml'), -- Atleta 5
('Sangue', '2025-03-26 12:50:00', '1.040', '15ml'), -- Atleta 6
('DSS', '2025-03-26 13:00:00', '1.035', '100ml'), -- Atleta 7
('Urina', '2025-03-26 13:10:00', '1.018', '55ml'), -- Atleta 7 (segunda amostra)
('Sangue', '2025-03-26 13:20:00', '1.042', '20ml'), -- Atleta 6 (segunda amostra)
('DSS', '2025-03-26 13:30:00', '1.032', '90ml'); -- Atleta 3 (segunda amostra)

INSERT INTO tipos_amostra_da_amostra (id_amostra, id_tipo_amostra) VALUES
(1, 1), -- Urina para Atleta 1
(2, 2), -- Sangue para Atleta 2
(3, 3), -- Urina para Atleta 3
(4, 4), -- DSS para Atleta 4
(5, 5), -- Urina para Atleta 5
(6, 6), -- Sangue para Atleta 6
(7, 7), -- DSS para Atleta 7
(7, 8), -- Urina para Atleta 7 (segunda amostra)
(6, 9), -- Sangue para Atleta 6 (segunda amostra)
(3, 10); -- DSS para Atleta 3 (segunda amostra)

INSERT INTO testemunha (nome, sobrenome) VALUES
('Carlos', 'Silva'),
('Mariana', 'Souza'),
('Roberto', 'Ferreira'),
('Ana', 'Pereira'),
('João', 'Lima'),
('Fernanda', 'Costa'),
('Ricardo', 'Almeida'),
('Laura', 'Mendes'),
('Pedro', 'Oliveira'),
('Tatiana', 'Ramos'),
('Gustavo', 'Mendes');

INSERT INTO testemunhas_dos_tipos_amostra (id_testemunha, id_tipo_amostra) VALUES
(1, 1), -- Testemunha 1 vinculada ao tipo de amostra 1 (Urina para Atleta 1)
(2, 2), -- Testemunha 2 vinculada ao tipo de amostra 2 (Sangue para Atleta 2)
(3, 3), -- Testemunha 3 vinculada ao tipo de amostra 3 (Urina para Atleta 3)
(4, 4), -- Testemunha 4 vinculada ao tipo de amostra 4 (DSS para Atleta 4)
(5, 5), -- Testemunha 5 vinculada ao tipo de amostra 5 (Urina para Atleta 5)
(6, 6), -- Testemunha 6 vinculada ao tipo de amostra 6 (Sangue para Atleta 6)
(7, 7), -- Testemunha 7 vinculada ao tipo de amostra 7 (DSS para Atleta 7)
(8, 8), -- Testemunha 8 vinculada ao tipo de amostra 8 (Urina para Atleta 7)
(9, 9), -- Testemunha 9 vinculada ao tipo de amostra 9 (Sangue para Atleta 6)
(10, 10); -- Testemunha 10 vinculada ao tipo de amostra 10 (DSS para Atleta 3)



