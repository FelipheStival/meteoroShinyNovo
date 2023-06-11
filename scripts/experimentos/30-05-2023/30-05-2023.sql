/* Criando coluna para referenciar as doenças */	
ALTER TABLE ensaios_doencas
ADD COLUMN id_cultura BIGINT REFERENCES cultura(id)

/* Colocando valor como feijão */
UPDATE ensaios_doencas SET id_cultura = 1;
