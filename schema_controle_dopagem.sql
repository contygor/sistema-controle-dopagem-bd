create database controle_dopagem;
use controle_dopagem;

create table documento (
    id int auto_increment primary key,
    tipo_documento varchar(50),
    numero_documento varchar(50)
);

create table medico (
    id int auto_increment primary key,
    nome varchar(70),
    sobrenome varchar(100)
);

create table tecnico (
    id int auto_increment primary key,
    nome varchar(70),
    sobrenome varchar(100)
);

create table atleta (
    id int auto_increment primary key,
    id_documento int not null,
    foreign key (id_documento) references documento(id),
    id_tecnico int not null,
    foreign key (id_tecnico) references tecnico(id),
    id_medico int not null,
    foreign key (id_medico) references medico(id),
    nome varchar(70),
    sobrenome varchar(100),
    sexo char(1),
    nacionalidade varchar(50),
    email varchar(70),
    nascimento date,
    telefone varchar(17),
    assinatura blob
);

create table endereco (
    id int auto_increment primary key,
    id_atleta int not null,
    foreign key (id_atleta) references atleta(id),
    rua varchar(50),
    numero varchar(5),
    cep varchar(15),
    estado varchar(50),
    pais varchar(50)
);

create table escolta (
    id int auto_increment primary key,
    data_escolta date,
    hora_escolta time,
    nome_escolta varchar(170),
    assinatura_escolta blob
);

create table autoridades (
    id int auto_increment primary key,
    autoridade_teste varchar(50),
    autoridade_coleta varchar(50),
    autoridade_gestao varchar(50),
    autoridade_controle varchar(50)
);

create table equipamento (
    id int auto_increment primary key,
    marca_fabricante varchar(50),
    modelo varchar(50)
);

create table evento (
    id int auto_increment primary key,
    competicao varchar(80),
    esporte varchar(50),
    funcao_atleta varchar(70)
);

create table representante_do_atleta (
    id int auto_increment primary key,
    nome varchar(70),
    sobrenome varchar(100),
    funcao varchar(70),
    assinatura blob
);

create table confirmacao (
    id int auto_increment primary key,
    data_confirmacao date,
    hora_finalizacao_exames time,
    id_representante_do_atleta int,
    foreign key (id_representante_do_atleta) references representante_do_atleta(id)
);

create table oficial_de_controle (
    id int auto_increment primary key,
    nome varchar(150),
    assinatura blob
);

create table testemunha (
    id int auto_increment primary key,
    nome varchar(70),
    sobrenome varchar(100)
);

create table amostra_parcial (
    id int auto_increment primary key,
    volume_amostra varchar(7),
    dia_hora_selagem datetime
);

create table tipo_amostra (
    id int auto_increment primary key,
    nome_tipo varchar(100),
    data_hora_selagem datetime,
    densidade_amostra varchar(7),
    volume_amostra varchar(7)
);

create table amostra (
    id int auto_increment primary key,
    id_atleta int not null,
    foreign key (id_atleta) references atleta(id),
    id_escolta int not null,
    foreign key (id_escolta) references escolta(id),
    id_autoridades int not null,
    foreign key (id_autoridades) references autoridades(id),
    id_equipamento int not null,
    foreign key (id_equipamento) references equipamento(id),
    id_oficial_controle int not null,
    foreign key (id_oficial_controle) references oficial_de_controle(id),
    id_evento int not null,
    foreign key (id_evento) references evento(id),
    id_confirmacao int not null,
    foreign key (id_confirmacao) references confirmacao(id),
    data_coleta date,
    hora_chegada_atleta time,
    codigo_relatorio_suplementar varchar(15)
);

create table testemunhas_dos_tipos_amostra (
    id int auto_increment primary key,
    id_tipo_amostra int not null,
    foreign key (id_tipo_amostra) references tipo_amostra(id),
    id_testemunha int not null,
    foreign key (id_testemunha) references testemunha(id)
);

create table tipos_amostra_da_amostra (
    id int auto_increment primary key,
    id_amostra int not null,
    foreign key (id_amostra) references amostra(id),
    id_tipo_amostra int not null,
    foreign key (id_tipo_amostra) references tipo_amostra(id)
);

create table amostras_parciais_da_amostra (
    id int auto_increment primary key,
    id_amostra int not null,
    foreign key (id_amostra) references amostra(id),
    id_amostra_parcial int not null,
    foreign key (id_amostra_parcial) references amostra_parcial(id)
);

