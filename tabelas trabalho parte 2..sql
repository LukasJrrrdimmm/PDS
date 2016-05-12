CREATE TABLE Professor
(
  id integer PRIMARY KEY,
  nome character varying(255),
  data_nascimento character varying(255),
  endereço character varying(255),
  formação character varying(255)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE Professor
  OWNER TO postgres;
  CREATE TABLE Disciplina
(
  id integer PRIMARY KEY,
  nome character varying(255),
  conteudo character varying(1000)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE Disciplina
  OWNER TO postgres;
  CREATE TABLE Leciona
(
  id_professor integer REFERENCES Professor (id),
  id_disciplina integer REFERENCES Disciplina (id),
  sala character varying(255),
  hora character varying(255)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE Leciona
  OWNER TO postgres;
  CREATE TABLE Funcionário(
  id integer PRIMARY KEY,
  nome character varying(255),
  função character varying(255)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE Funcionário
  OWNER TO postgres;
   CREATE TABLE Turma
(
  id integer PRIMARY KEY,
  id_disciplina integer REFERENCES Disciplina(id),
  ano character varying(255)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE Turma
OWNER TO postgres;
  CREATE TABLE Ensina
(
  id_professor integer REFERENCES Professor (id),
  id_turma integer REFERENCES Turma(id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE Ensina
  
  
 
  OWNER TO postgres;
  CREATE TABLE Aluno
(
  id integer PRIMARY KEY,
  nome character varying(255),
  data_nascimento character varying(255),
  pai character varying(255),
  mãe character varying(255),
  endereço character varying(255),
  martícula integer,
  hora character varying(255),
  id_turma integer REFERENCES Turma(id)
 
)
WITH (
  OIDS=FALSE
);
ALTER TABLE Aluno
  OWNER TO postgres;
  CREATE TABLE Calendário_Acadêmico
(
  id integer PRIMARY KEY,
  ano character varying(255),
  datas_importantes character varying(255)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE Calendário_Acadêmico
  OWNER TO postgres;