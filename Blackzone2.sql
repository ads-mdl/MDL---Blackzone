-- ==============================================================================
-- PROJETO: Barbearia Black Zone Celso 5065
-- SGBD: MySQL
-- ==============================================================================

CREATE DATABASE IF NOT EXISTS blackzone_barbearia;
USE blackzone_barbearia;

-- ------------------------------------------------------------------------------
-- 1. ENTIDADES INDEPENDENTES
-- ------------------------------------------------------------------------------

CREATE TABLE unidade (
    id_unidade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL COMMENT 'RN10: Nome da unidade',
    endereco VARCHAR(200) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    hr_abertura TIME NOT NULL COMMENT 'RN18: Início do funcionamento',
    hr_fechamento TIME NOT NULL COMMENT 'RN18: Fim do funcionamento',
    status ENUM('ATIVA', 'INATIVA') DEFAULT 'ATIVA',
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    limite_orcamento DECIMAL(10,2),
    preferencia_corte TEXT,
    in_penalizado_ausencia BOOLEAN DEFAULT FALSE COMMENT 'Faltas sem aviso (RN08)',
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE produto_insumo (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    finalidade ENUM('VENDA', 'CONSUMO_INTERNO', 'MISTO') NOT NULL,
    unidade_medida VARCHAR(20) NOT NULL COMMENT 'Ex: Unidade, ml, gramas',
    preco_venda DECIMAL(10,2) COMMENT 'Apenas se for destinado à venda',
    controla_validade BOOLEAN DEFAULT TRUE,
    status ENUM('ATIVO', 'INATIVO') DEFAULT 'ATIVO'
);

-- ------------------------------------------------------------------------------
-- 2. ENTIDADES DEPENDENTES (FUNCIONÁRIOS E CATÁLOGO)
-- ------------------------------------------------------------------------------

CREATE TABLE barbeiro (
    id_barbeiro INT AUTO_INCREMENT PRIMARY KEY,
    id_unidade INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    fl_nao_fumante BOOLEAN DEFAULT FALSE COMMENT 'RN10: Preferência do cliente',
    status ENUM('ATIVO', 'INATIVO') DEFAULT 'ATIVO',
    FOREIGN KEY (id_unidade) REFERENCES unidade(id_unidade) ON DELETE RESTRICT
);

CREATE TABLE recepcionista (
    id_recepcionista INT AUTO_INCREMENT PRIMARY KEY,
    id_unidade INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    turno ENUM('MANHA', 'TARDE', 'INTEGRAL') NOT NULL,
    status ENUM('ATIVO', 'INATIVO') DEFAULT 'ATIVO',
    FOREIGN KEY (id_unidade) REFERENCES unidade(id_unidade) ON DELETE RESTRICT
);

CREATE TABLE servico_pacote (
    id_servico_pacote INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo ENUM('AVULSO', 'PACOTE') NOT NULL COMMENT 'Diferencia a oferta',
    categoria VARCHAR(50) NOT NULL,
    duracao_estimada_min INT NOT NULL,
    preco_atual DECIMAL(10,2) NOT NULL COMMENT 'RN04: Preços base',
    status ENUM('ATIVO', 'INATIVO') DEFAULT 'ATIVO'
);

-- Tabela associativa que resolve a regra de Pacotes (RN03)
CREATE TABLE pacote_composicao (
    id_pacote INT NOT NULL,
    id_servico_avulso INT NOT NULL,
    PRIMARY KEY (id_pacote, id_servico_avulso),
    FOREIGN KEY (id_pacote) REFERENCES servico_pacote(id_servico_pacote) ON DELETE CASCADE,
    FOREIGN KEY (id_servico_avulso) REFERENCES servico_pacote(id_servico_pacote) ON DELETE CASCADE
);

CREATE TABLE barbeiro_servico (
    id_barbeiro INT NOT NULL,
    id_servico INT NOT NULL,
    PRIMARY KEY (id_barbeiro, id_servico),
    FOREIGN KEY (id_barbeiro) REFERENCES barbeiro(id_barbeiro) ON DELETE CASCADE,
    FOREIGN KEY (id_servico) REFERENCES servico_pacote(id_servico_pacote) ON DELETE CASCADE
);

CREATE TABLE lote (
    id_lote INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT NOT NULL,
    codigo_lote VARCHAR(50) NOT NULL,
    data_validade DATE,
    quantidade_disponivel DECIMAL(10,2) DEFAULT 0.00,
    FOREIGN KEY (id_produto) REFERENCES produto_insumo(id_produto) ON DELETE CASCADE
);

-- ------------------------------------------------------------------------------
-- 3. OPERACIONAL (AGENDAMENTOS E ATENDIMENTOS)
-- ------------------------------------------------------------------------------

CREATE TABLE agendamento (
    id_agendamento INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_barbeiro INT NOT NULL COMMENT 'RN02: Um barbeiro por atendimento',
    id_unidade INT NOT NULL,
    id_recepcionista INT,
    data_atendimento DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fim_estimada TIME NOT NULL,
    tipo_agendamento ENUM('AGENDAMENTO', 'ENCAIXE') NOT NULL,
    canal_origem ENUM('TRINKS', 'WHATSAPP', 'PRESENCIAL') NOT NULL,
    status ENUM('AGENDADO', 'CONCLUIDO', 'CANCELADO', 'FALTA') DEFAULT 'AGENDADO',
    categoria_preco_corte ENUM('PADRAO', 'CRIANCA_ATE_12', 'CALVO') DEFAULT 'PADRAO' COMMENT 'RN20',
    valor_total_cobrado DECIMAL(10,2),
    observacao TEXT,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_barbeiro) REFERENCES barbeiro(id_barbeiro),
    FOREIGN KEY (id_unidade) REFERENCES unidade(id_unidade),
    FOREIGN KEY (id_recepcionista) REFERENCES recepcionista(id_recepcionista)
);

CREATE TABLE agendamento_item (
    id_agendamento INT NOT NULL,
    id_servico_pacote INT NOT NULL,
    preco_praticado DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_agendamento, id_servico_pacote),
    FOREIGN KEY (id_agendamento) REFERENCES agendamento(id_agendamento) ON DELETE CASCADE,
    FOREIGN KEY (id_servico_pacote) REFERENCES servico_pacote(id_servico_pacote)
);

CREATE TABLE pagamento_agendamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_agendamento INT NOT NULL UNIQUE COMMENT 'UNIQUE garante relação 1:1',
    data_hora_pagamento DATETIME NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL,
    forma_pagamento ENUM('PIX', 'CREDITO', 'DEBITO', 'DINHEIRO') NOT NULL COMMENT 'RN07: Pagamento único',
    FOREIGN KEY (id_agendamento) REFERENCES agendamento(id_agendamento) ON DELETE RESTRICT
);

CREATE TABLE cancelamento (
    id_cancelamento INT AUTO_INCREMENT PRIMARY KEY,
    id_agendamento INT NOT NULL UNIQUE COMMENT 'UNIQUE garante relação 1:1',
    data_hora_cancelamento DATETIME NOT NULL,
    canal_cancelamento ENUM('TRINKS', 'WHATSAPP', 'PRESENCIAL') NOT NULL,
    FOREIGN KEY (id_agendamento) REFERENCES agendamento(id_agendamento) ON DELETE CASCADE
);

-- ------------------------------------------------------------------------------
-- 4. COMISSÕES E REPASSES
-- ------------------------------------------------------------------------------

CREATE TABLE comissao (
    id_comissao INT AUTO_INCREMENT PRIMARY KEY,
    id_agendamento INT NOT NULL UNIQUE,
    id_barbeiro INT NOT NULL,
    id_repasse INT COMMENT 'Se NULL, comissão ainda não foi paga',
    data_hora_geracao DATETIME NOT NULL,
    valor_base DECIMAL(10,2) NOT NULL,
    percentual_aplicado DECIMAL(5,2) DEFAULT 50.00 COMMENT 'RN11: 50% dos serviços',
    valor_comissao DECIMAL(10,2) AS (valor_base * (percentual_aplicado / 100)) STORED,
    status ENUM('PENDENTE', 'QUITADA') DEFAULT 'PENDENTE',
    FOREIGN KEY (id_agendamento) REFERENCES agendamento(id_agendamento),
    FOREIGN KEY (id_barbeiro) REFERENCES barbeiro(id_barbeiro)
);

CREATE TABLE repasse (
    id_repasse INT AUTO_INCREMENT PRIMARY KEY,
    id_barbeiro INT NOT NULL,
    data_hora_repasse DATETIME NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    forma_pagamento ENUM('PIX', 'DINHEIRO', 'TRANSFERENCIA') NOT NULL,
    FOREIGN KEY (id_barbeiro) REFERENCES barbeiro(id_barbeiro)
);

-- Adicionando a FK de repasse na tabela comissão
ALTER TABLE comissao ADD FOREIGN KEY (id_repasse) REFERENCES repasse(id_repasse) ON DELETE RESTRICT;

-- ------------------------------------------------------------------------------
-- 5. ESTOQUE, COMPRAS E VENDAS
-- ------------------------------------------------------------------------------

CREATE TABLE compra (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    data_autorizacao DATETIME NOT NULL,
    data_recebimento DATETIME,
    fornecedor VARCHAR(100),
    situacao ENUM('PENDENTE', 'RECEBIDA', 'CANCELADA') DEFAULT 'PENDENTE',
    valor_total DECIMAL(10,2) DEFAULT 0.00
);

CREATE TABLE item_compra (
    id_item_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_compra INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade_comprada DECIMAL(10,2) NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_compra) REFERENCES compra(id_compra) ON DELETE CASCADE,
    FOREIGN KEY (id_produto) REFERENCES produto_insumo(id_produto)
);

CREATE TABLE venda (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_unidade INT NOT NULL,
    id_recepcionista INT NOT NULL,
    data_hora_venda DATETIME NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    forma_pagamento ENUM('PIX', 'CREDITO', 'DEBITO', 'DINHEIRO') NOT NULL,
    FOREIGN KEY (id_unidade) REFERENCES unidade(id_unidade),
    FOREIGN KEY (id_recepcionista) REFERENCES recepcionista(id_recepcionista)
);

CREATE TABLE item_venda (
    id_item_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade DECIMAL(10,2) NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES venda(id_venda) ON DELETE CASCADE,
    FOREIGN KEY (id_produto) REFERENCES produto_insumo(id_produto)
);

CREATE TABLE movimentacao_estoque (
    id_movimentacao INT AUTO_INCREMENT PRIMARY KEY,
    id_lote INT NOT NULL,
    data_hora DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    tipo_movimentacao ENUM('ENTRADA', 'SAIDA') NOT NULL,
    motivo ENUM('COMPRA', 'VENDA', 'CONSUMO_ATENDIMENTO', 'PERDA_VENCIMENTO') NOT NULL,
    quantidade DECIMAL(10,2) NOT NULL,
    id_item_compra INT NULL,
    id_item_venda INT NULL,
    id_agendamento INT NULL COMMENT 'Para rastrear insumos gastos em um corte',
    FOREIGN KEY (id_lote) REFERENCES lote(id_lote),
    FOREIGN KEY (id_item_compra) REFERENCES item_compra(id_item_compra),
    FOREIGN KEY (id_item_venda) REFERENCES item_venda(id_item_venda),
    FOREIGN KEY (id_agendamento) REFERENCES agendamento(id_agendamento)
);

-- ------------------------------------------------------------------------------
-- 6. FINANCEIRO E FECHAMENTO DE CAIXA
-- ------------------------------------------------------------------------------

CREATE TABLE fechamento_caixa (
    id_fechamento INT AUTO_INCREMENT PRIMARY KEY,
    id_unidade INT NOT NULL,
    data_referencia DATE NOT NULL,
    data_hora_fechamento DATETIME NOT NULL,
    saldo_inicial DECIMAL(10,2) NOT NULL,
    total_entradas DECIMAL(10,2) NOT NULL,
    total_saidas DECIMAL(10,2) NOT NULL,
    saldo_apurado DECIMAL(10,2) AS (saldo_inicial + total_entradas - total_saidas) STORED,
    saldo_conferido DECIMAL(10,2) NOT NULL,
    diferenca DECIMAL(10,2) AS (saldo_conferido - (saldo_inicial + total_entradas - total_saidas)) STORED,
    justificativa_diferenca TEXT,
    FOREIGN KEY (id_unidade) REFERENCES unidade(id_unidade)
);

CREATE TABLE movimentacao_financeira (
    id_movimentacao_fin INT AUTO_INCREMENT PRIMARY KEY,
    id_fechamento INT NULL COMMENT 'Se NULL, ainda não entrou em um fechamento',
    data_hora DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    tipo_movimentacao ENUM('ENTRADA', 'SAIDA') NOT NULL,
    natureza ENUM('PAGAMENTO_AGENDAMENTO', 'VENDA_PRODUTO', 'PAGAMENTO_COMPRA', 'REPASSE_BARBEIRO') NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    forma_pagamento ENUM('PIX', 'CREDITO', 'DEBITO', 'DINHEIRO', 'TRANSFERENCIA') NOT NULL,
    
    -- Chaves de Origem (Somente UMA deve estar preenchida)
    id_pagamento_agendamento INT NULL,
    id_venda INT NULL,
    id_compra INT NULL,
    id_repasse INT NULL,
    
    FOREIGN KEY (id_fechamento) REFERENCES fechamento_caixa(id_fechamento),
    FOREIGN KEY (id_pagamento_agendamento) REFERENCES pagamento_agendamento(id_pagamento),
    FOREIGN KEY (id_venda) REFERENCES venda(id_venda),
    FOREIGN KEY (id_compra) REFERENCES compra(id_compra),
    FOREIGN KEY (id_repasse) REFERENCES repasse(id_repasse),
    
    -- Constraint para garantir que a movimentação tenha origem única (RN15)
    CONSTRAINT chk_origem_unica CHECK (
        (id_pagamento_agendamento IS NOT NULL AND id_venda IS NULL AND id_compra IS NULL AND id_repasse IS NULL) OR
        (id_pagamento_agendamento IS NULL AND id_venda IS NOT NULL AND id_compra IS NULL AND id_repasse IS NULL) OR
        (id_pagamento_agendamento IS NULL AND id_venda IS NULL AND id_compra IS NOT NULL AND id_repasse IS NULL) OR
        (id_pagamento_agendamento IS NULL AND id_venda IS NULL AND id_compra IS NULL AND id_repasse IS NOT NULL)
    )
);

-- ==============================================================================
-- 4. INSERT INTO (CARGA DA MASSA DE DADOS)
-- ==============================================================================

-- 4.1. Unidade
INSERT INTO unidade (nome, endereco, telefone, hr_abertura, hr_fechamento) 
VALUES ('Black Zone Celso 5065', 'Avenida Celso Garcia, 5065, Tatuapé, São Paulo', '1129352008', '09:00:00', '21:00:00');

-- 4.2. Clientes (Incluindo perfis para testar a RN20 - Preços diferenciados)
INSERT INTO cliente (nome, telefone, email, limite_orcamento, preferencia_corte) VALUES 
('Guilherme Alves', '11999999999', 'gui@email.com', 100.00, 'Degradê navalhado'),
('Sr. Roberto (Calvo)', '11988888888', NULL, 50.00, 'Máquina 1 nas laterais'),
('Enzo (Criança)', '11977777777', 'mae_enzo@email.com', 40.00, 'Corte social');

-- 4.3. Funcionários (Barbeiros e Recepcionista)
INSERT INTO barbeiro (id_unidade, nome, telefone, fl_nao_fumante) VALUES 
(1, 'Pedro Barbeiro', '11966666666', TRUE),
(1, 'Dante Gerente', '11955555555', FALSE);

INSERT INTO recepcionista (id_unidade, nome, telefone, turno) 
VALUES (1, 'Ana Silva', '11944444444', 'INTEGRAL');

-- 4.4. Catálogo de Serviços e Pacotes (RN03 e RN04)
INSERT INTO servico_pacote (nome, tipo, categoria, duracao_estimada_min, preco_atual) VALUES 
('Corte Padrão', 'AVULSO', 'Cabelo', 40, 50.00),         -- 1
('Barboterapia', 'AVULSO', 'Barba', 30, 35.00),          -- 2
('Corte Infantil', 'AVULSO', 'Cabelo', 30, 25.00),       -- 3 (RN20)
('Corte Calvo', 'AVULSO', 'Cabelo', 20, 30.00),          -- 4 (RN20)
('Pacote Cabelo + Barba', 'PACOTE', 'Combo', 70, 75.00); -- 5

-- Composição do Pacote (Pacote 5 contém os serviços 1 e 2)
INSERT INTO pacote_composicao (id_pacote, id_servico_avulso) VALUES 
(5, 1), 
(5, 2);

-- Vinculando barbeiros aos serviços (Barbeiro 1 faz tudo, Barbeiro 2 não faz Barboterapia)
INSERT INTO barbeiro_servico (id_barbeiro, id_servico) VALUES 
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
(2, 1), (2, 3), (2, 4);

-- 4.5. Produtos, Insumos e Lotes
INSERT INTO produto_insumo (nome, descricao, finalidade, unidade_medida, preco_venda, controla_validade) VALUES 
('Pomada Efeito Matte', 'Pomada modeladora seca', 'VENDA', 'Unidade', 45.00, TRUE),
('Shampoo Profissional', 'Uso no lavatório', 'CONSUMO_INTERNO', 'Litro', NULL, TRUE);

INSERT INTO lote (id_produto, codigo_lote, data_validade, quantidade_disponivel) VALUES 
(1, 'LOTE-POM-01', '2027-12-31', 10.00),
(2, 'LOTE-SHAM-01', '2028-06-30', 5.00);

-- 4.6. Agendamentos e Itens
INSERT INTO agendamento (id_cliente, id_barbeiro, id_unidade, id_recepcionista, data_atendimento, hora_inicio, hora_fim_estimada, tipo_agendamento, canal_origem, status, categoria_preco_corte, valor_total_cobrado) VALUES 
(1, 1, 1, 1, CURDATE(), '10:00:00', '10:40:00', 'AGENDAMENTO', 'WHATSAPP', 'CONCLUIDO', 'PADRAO', 50.00),
(2, 2, 1, 1, CURDATE(), '11:00:00', '11:20:00', 'ENCAIXE', 'PRESENCIAL', 'AGENDADO', 'CALVO', 30.00),
(3, 1, 1, 1, CURDATE(), '14:00:00', '14:30:00', 'AGENDAMENTO', 'TRINKS', 'FALTA', 'CRIANCA_ATE_12', 25.00);

-- Itens dos agendamentos
INSERT INTO agendamento_item (id_agendamento, id_servico_pacote, preco_praticado) VALUES 
(1, 1, 50.00), -- Gui fez Corte Padrão
(2, 4, 30.00), -- Sr. Roberto fez Corte Calvo
(3, 3, 25.00); -- Enzo faria Corte Infantil

-- 4.7. Pagamentos, Comissões e Finanças (Somente para o agendamento 1, que foi concluído)
INSERT INTO pagamento_agendamento (id_agendamento, data_hora_pagamento, valor_pago, forma_pagamento) 
VALUES (1, NOW(), 50.00, 'PIX');

INSERT INTO comissao (id_agendamento, id_barbeiro, data_hora_geracao, valor_base) 
VALUES (1, 1, NOW(), 50.00); -- Comissão automática via STORED GENERATED (25.00)

INSERT INTO movimentacao_financeira (tipo_movimentacao, natureza, valor, forma_pagamento, id_pagamento_agendamento)
VALUES ('ENTRADA', 'PAGAMENTO_AGENDAMENTO', 50.00, 'PIX', 1);


-- ==============================================================================
-- 5. SELECT COM JOIN (Operacional)
-- ==============================================================================
-- Listar a agenda do dia com os nomes do cliente e do barbeiro, e os serviços escolhidos

USE blackzone_barbearia;

SELECT 
    a.hora_inicio, 
    c.nome AS cliente, 
    b.nome AS barbeiro, 
    sp.nome AS servico, 
    a.status
FROM agendamento a
INNER JOIN cliente c ON a.id_cliente = c.id_cliente
INNER JOIN barbeiro b ON a.id_barbeiro = b.id_barbeiro
INNER JOIN agendamento_item ai ON a.id_agendamento = ai.id_agendamento
INNER JOIN servico_pacote sp ON ai.id_servico_pacote = sp.id_servico_pacote
WHERE a.data_atendimento = CURDATE();


-- ==============================================================================
-- 6. UPDATE 
-- ==============================================================================
-- O Sr. Roberto (Agendamento 2) terminou o corte calvo e foi para o caixa pagar.
UPDATE agendamento 
SET status = 'CONCLUIDO' 
WHERE id_agendamento = 2;


-- ==============================================================================
-- 7. DELETE
-- ==============================================================================
-- Removendo um cliente que se cadastrou errado e não possui agendamentos 
-- (Inserindo e deletando para não quebrar a integridade das FKs)
INSERT INTO cliente (nome, telefone) VALUES ('Cliente Teste Exclusao', '11000000000');
DELETE FROM cliente WHERE nome = 'Cliente Teste Exclusao';


-- ==============================================================================
-- 8. CONSULTAS GERENCIAIS (KPIs)
-- ==============================================================================

-- G01 — Qual o faturamento total diário por forma de pagamento nos serviços prestados?
-- Atende: Fechamento de caixa e controle financeiro
SELECT 
    pa.forma_pagamento,
    COUNT(pa.id_pagamento) AS qtd_pagamentos,
    SUM(pa.valor_pago) AS total_arrecadado
FROM pagamento_agendamento pa
INNER JOIN agendamento a ON pa.id_agendamento = a.id_agendamento
WHERE a.data_atendimento = CURDATE()
GROUP BY pa.forma_pagamento;

-- G02 — Qual o volume de atendimentos de hoje separados pelo canal de origem (Trinks, Zap, Balcão)?
-- Atende: Problema identificado de "falta de registro de encaixes" e análise de fluxo.
SELECT 
    canal_origem, 
    tipo_agendamento,
    COUNT(id_agendamento) AS volume_atendimentos
FROM agendamento
WHERE data_atendimento = CURDATE()
GROUP BY canal_origem, tipo_agendamento
ORDER BY volume_atendimentos DESC;


-- ==============================================================================
-- 9. CONSULTAS DE AUDITORIA (Integridade e RNs)
-- ==============================================================================

-- A01 — Existem agendamentos do mesmo barbeiro com sobreposição de horários no mesmo dia?
-- Verifica: RN19 (Disponibilidade do barbeiro e bloqueio de sobreposições)
SELECT 
    a1.id_agendamento AS agendamento_1,
    a2.id_agendamento AS agendamento_2,
    a1.id_barbeiro,
    a1.data_atendimento
FROM agendamento a1
INNER JOIN agendamento a2 ON a1.id_barbeiro = a2.id_barbeiro 
    AND a1.data_atendimento = a2.data_atendimento
    AND a1.id_agendamento != a2.id_agendamento
WHERE 
    (a1.hora_inicio BETWEEN a2.hora_inicio AND a2.hora_fim_estimada)
    OR 
    (a2.hora_inicio BETWEEN a1.hora_inicio AND a1.hora_fim_estimada);

-- A02 — Alguma comissão foi gerada com percentual diferente de 50% ou para agendamentos com falta/cancelados?
-- Verifica: RN11 (Comissão é 50% dos serviços concluídos)
SELECT 
    c.id_comissao, 
    c.id_agendamento, 
    a.status, 
    c.percentual_aplicado
FROM comissao c
INNER JOIN agendamento a ON c.id_agendamento = a.id_agendamento
WHERE c.percentual_aplicado != 50.00 
   OR a.status IN ('CANCELADO', 'FALTA');