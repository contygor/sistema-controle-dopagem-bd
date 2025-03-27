CREATE DATABASE controle_dopagem;
USE controle_dopagem;

CREATE TABLE documento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_documento VARCHAR(50),
    numero_documento VARCHAR(50)
);

CREATE TABLE medico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(70),
    sobrenome VARCHAR(100)
);

CREATE TABLE tecnico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(70),
    sobrenome VARCHAR(100)
);

CREATE TABLE endereco (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rua VARCHAR(50),
    numero VARCHAR(5),
    cep VARCHAR(15),
    estado VARCHAR(50),
    pais VARCHAR(50)
);

CREATE TABLE atleta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_documento INT NOT NULL,
    FOREIGN KEY (id_documento) REFERENCES documento(id),
    id_tecnico INT NOT NULL,
    FOREIGN KEY (id_tecnico) REFERENCES tecnico(id),
    id_medico INT NOT NULL,
    FOREIGN KEY (id_medico) REFERENCES medico(id),
    nome VARCHAR(70),
    sobrenome VARCHAR(100),
    sexo CHAR(1),
    nacionalidade VARCHAR(50),
	id_endereco INT NOT NULL,
    FOREIGN KEY (id_endereco) REFERENCES endereco(id),
    email VARCHAR(70),
    nascimento DATE,
    telefone VARCHAR(17),
    assinatura BLOB
);

CREATE TABLE escolta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_escolta DATE,
    hora_escolta TIME,
    nome_escolta VARCHAR(170),
    assinatura_escolta BLOB
);

CREATE TABLE autoridades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    autoridade_teste VARCHAR(50),
    autoridade_coleta VARCHAR(50),
    autoridade_gestao VARCHAR(50),
    autoridade_controle VARCHAR(50)
);

CREATE TABLE equipamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca_fabricante VARCHAR(50),
    modelo VARCHAR(50)
);

CREATE TABLE evento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    competicao VARCHAR(80),
    esporte VARCHAR(50),
    funcao_atleta VARCHAR(70)
);

CREATE TABLE representante_do_atleta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(70),
    sobrenome VARCHAR(100),
    funcao VARCHAR(70),
    assinatura BLOB
);

CREATE TABLE confirmacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_confirmacao DATE,
	hora_finalizacao_exames TIME, 
	id_representante_do_atleta INT, 
	FOREIGN KEY (id_representante_do_atleta) REFERENCES representante_do_atleta(id)
);

CREATE TABLE oficial_de_controle (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150),
    assinatura BLOB
);

CREATE TABLE testemunha (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(70),
    sobrenome VARCHAR(100)
);

CREATE TABLE amostra_parcial (
    id INT AUTO_INCREMENT PRIMARY KEY,
    volume_amostra VARCHAR(7),
    dia_hora_selagem DATETIME
);

CREATE TABLE tipo_amostra (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_tipo VARCHAR(100),
    data_hora_selagem DATETIME,
    densidade_amostra VARCHAR(7),
    volume_amostra VARCHAR(7)
);

CREATE TABLE amostra (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_atleta INT NOT NULL,
    FOREIGN KEY (id_atleta) REFERENCES atleta(id),
    id_escolta INT NOT NULL,
    FOREIGN KEY (id_escolta) REFERENCES escolta(id),
    id_autoridades INT NOT NULL,
    FOREIGN KEY (id_autoridades) REFERENCES autoridades(id),
    id_equipamento INT NOT NULL,
    FOREIGN KEY (id_equipamento) REFERENCES equipamento(id),
    id_oficial_controle INT NOT NULL,
    FOREIGN KEY (id_oficial_controle) REFERENCES oficial_de_controle(id),
    id_evento INT NOT NULL,
    FOREIGN KEY (id_evento) REFERENCES evento(id),
    id_confirmacao INT NOT NULL,
    FOREIGN KEY (id_confirmacao) REFERENCES confirmacao(id),
    data_coleta DATE,
    hora_chegada_atleta TIME,
    codigo_relatorio_suplementar VARCHAR(15)
);

CREATE TABLE testemunhas_dos_tipos_amostra (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_tipo_amostra INT NOT NULL,
    FOREIGN KEY (id_tipo_amostra) REFERENCES tipo_amostra(id),
    id_testemunha INT NOT NULL,
    FOREIGN KEY (id_testemunha) REFERENCES testemunha(id)
);

CREATE TABLE tipos_amostra_da_amostra (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_amostra INT NOT NULL,
    FOREIGN KEY (id_amostra) REFERENCES amostra(id),
    id_tipo_amostra INT NOT NULL,
    FOREIGN KEY (id_tipo_amostra) REFERENCES tipo_amostra(id)
);

CREATE TABLE amostras_parciais_da_amostra (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_amostra INT NOT NULL,
    FOREIGN KEY (id_amostra) REFERENCES amostra(id),
    id_amostra_parcial INT NOT NULL,
    FOREIGN KEY (id_amostra_parcial) REFERENCES amostra_parcial(id)
);

ALTER TABLE endereco
ADD COLUMN cidade VARCHAR(50) AFTER rua;

ALTER TABLE medico
ADD COLUMN crm VARCHAR(20);
