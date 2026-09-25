# 💈 MDL — Black Zone Celso 5065
> **Modelagem de um sistema de gestão de informações para uma organização de pequeno porte.**

---
## 👥 Integrantes do Projeto

| Nome Completo | RGM |
| :--- | :--- |
| Felipe André Cruz Leite | **48200310** |
| Guilherme Fernando Alves da Silva | **48183199** |
| Richard Mattos Leite | **48135291** |
| Kauã Ferreira | **48250139** |
| Vitor da Silva Bonilha | **48123005** |

---

## 🏢 1. Caracterização da Organização

A organização escolhida para este estudo de caso é a **Barbearia Black Zone Celso 5065**, uma unidade franqueada da rede Black Zone.

> 📍 **Localização:** Bairro Tatuapé, São Paulo - SP  
> 📅 **Fundação:** Ano de 2020 (durante a pandemia de COVID-19)  
> 💼 **Natureza:** Estabelecimento privado, com fins lucrativos  
> 🎯 **Foco do Projeto:** Gestão local e exclusiva desta unidade (clientes, barbeiros, serviços, agendamentos, pagamentos e cancelamentos).

### 🕒 Contexto e Operação

O estabelecimento atua na prestação de serviços de barbearia e cuidados estéticos masculinos, voltado principalmente ao público jovem. O catálogo inclui desde cortes clássicos e modernos até cuidados com cabelo afro, barboterapia e estética facial (disponíveis de forma avulsa ou em pacotes combinados).

- **Funcionamento:** segunda-feira a sábado, das 09h às 21h. Aos domingos, a unidade permanece fechada.
- **Agendamentos:** realizados pelo site Trinks, WhatsApp ou presencialmente.
- **Encaixes:** atendimento presencial de clientes sem agendamento prévio, conforme a disponibilidade de horários dos barbeiros.
- **Serviços avulsos:** preços a partir de R$ 50,00.
- **Pacotes:** combinação de serviços com preço próprio.
- **Formas de pagamento:** Pix, cartão de crédito, cartão de débito ou dinheiro, utilizando uma única forma por atendimento.

### 👥 Equipe e Volume de Atendimentos

| Informação | Caracterização |
| :--- | :--- |
| **Quantidade de barbeiros** | 7 profissionais |
| **Demais profissionais** | Recepcionista, responsável pela recepção dos clientes |
| **Média individual de atendimentos** | Aproximadamente 12 atendimentos por barbeiro por dia |
| **Volume diário estimado da unidade** | Cerca de 84 atendimentos quando os sete barbeiros trabalham no mesmo dia |

### ⚠️ Problemas e Necessidades Identificados

#### Problemas potenciais a validar na pesquisa de campo

- **Conflitos de horários:** agendamentos recebidos pelo WhatsApp ou presencialmente podem gerar sobreposição quando não são registrados imediatamente na agenda do barbeiro.

- **Falhas no registro de cancelamentos:** cancelamentos comunicados por diferentes canais podem demorar a ser atualizados, mantendo horários ocupados mesmo após a desistência do cliente.

- **Falta de clareza sobre os pacotes:** informações incompletas sobre os serviços incluídos e seus preços podem gerar dúvidas no atendimento e divergências na cobrança.

- **Tempo insuficiente reservado para os serviços:** desconsiderar a duração estimada dos procedimentos pode causar atrasos nos atendimentos seguintes.

- **Ausência de registro dos encaixes:** atendimentos sem agendamento prévio podem deixar de ser registrados, dificultando a identificação do cliente, do barbeiro responsável e dos serviços prestados.

#### Necessidades do sistema

Com base no DER adotado, o sistema proposto deve permitir:

- **Manter os dados da unidade:** registrar nome, endereço, WhatsApp e horários de funcionamento.

- **Organizar os cadastros de clientes e barbeiros:** manter os dados de identificação e contato, registrar a característica de barbeiro não fumante e relacionar os profissionais aos serviços que realizam.

- **Registrar agendamentos e encaixes:** armazenar data, horários de início e término, tipo de atendimento e canal utilizado, vinculando cada registro à unidade, ao cliente e a um único barbeiro.

- **Organizar a agenda dos profissionais:** evitar sobreposição de horários para o mesmo barbeiro e registrar os encaixes pelo canal presencial, respeitando o funcionamento da unidade.

- **Gerenciar serviços e pacotes:** manter descrições, categorias, durações estimadas e preços, registrar a composição dos pacotes e associar um ou mais serviços ou pacotes a cada agendamento.

- **Registrar pagamentos:** armazenar, no agendamento, a data, o horário, o valor pago e a forma utilizada, considerando até um pagamento e uma única forma de pagamento por agendamento.

- **Registrar cancelamentos:** armazenar, no agendamento, a data, o horário e o canal utilizado (site Trinks, WhatsApp ou presencial), considerando o prazo previsto nas regras do modelo.


### ✅ Justificativa da Escolha

Escolhemos a Black Zone Celso 5065 porque já somos clientes da unidade e conseguimos a autorização do gerente Dante para realizar a pesquisa. Isso facilita o contato com a equipe e nos permite conhecer melhor como a barbearia funciona.

A rotina do estabelecimento envolve agendamentos, escolha de serviços, pagamentos e cancelamentos. São situações que podemos relacionar ao que estamos aprendendo em aula, identificando quais informações precisam ser registradas e como elas se conectam.

Optamos por entrevistar apenas essa unidade para conseguir analisar os processos com mais detalhe, visto a proximidade com a faculdade e facilidade de locomoção do grupo, além de manter o trabalho viável. A pesquisa de campo ajudou a esclarecer as regras do atendimento e a construir um DER que represente a rotina da barbearia.

**Acesso à organização:** Os integrantes do grupo são clientes da franquia e da unidade. A realização da pesquisa de campo foi autorizada pelo gerente Dante.

### 📸 Evidências da Organização

- **Endereço:** Avenida Celso Garcia, nº 5065, Tatuapé, São Paulo/SP, CEP 03064-000.
- **Telefone divulgado:** (11) 2935-2008.
- **Referência pública:** [Página oficial da rede Black Zone](https://www.barbeariablackzone.com/).
- **Responsável entrevistado e sua função:** Pedro, Barbeiro.
- **Data da entrevista:** 09/09/2026.
- **Registros da visita:** (a gnt tem q colocar o link das fotos aq)

---

## 2. Processos de Negócio

### Principais processos mapeados

- **Cadastro e atualização de clientes:** registrar nome, telefone e, opcionalmente, e-mail. Antes de realizar um novo cadastro, verificar se o cliente já está registrado para evitar duplicidade.

- **Organização dos dados da unidade e dos barbeiros:** manter os dados da unidade e seus horários de funcionamento, além dos cadastros dos barbeiros, dos serviços que realizam e da informação sobre serem ou não fumantes.

- **Cadastro de serviços e pacotes:** registrar os serviços oferecidos, suas descrições, categorias, preços e durações estimadas. Para os pacotes, informar quais serviços estão incluídos e o preço da combinação.

- **Agendamento de atendimentos:** receber a solicitação pelo Trinks, WhatsApp ou presencialmente, identificar o cliente e os serviços desejados e verificar um horário disponível com um barbeiro que realize os procedimentos. Registrar a data, os horários de início e término e o canal utilizado, respeitando o funcionamento da unidade e evitando sobreposição de horários.

- **Registro de encaixes:** verificar a disponibilidade para atender clientes que chegam sem agendamento prévio. Quando houver horário, registrar o atendimento como encaixe, pelo canal presencial, vinculando o cliente, o barbeiro e os serviços escolhidos.

- **Realização do atendimento:** o barbeiro responsável realiza os serviços vinculados ao agendamento, incluindo os procedimentos que compõem os pacotes. Um único barbeiro realiza todo o atendimento.

- **Registro do pagamento:** registrar o valor recebido, a data, o horário e a forma de pagamento no respectivo agendamento. O pagamento pode ser feito por Pix, cartão de crédito, cartão de débito ou dinheiro, utilizando uma única forma por atendimento.

- **Registro do cancelamento:** receber a solicitação pelo Trinks, WhatsApp ou presencialmente e verificar o prazo previsto nas regras da unidade. Quando o cancelamento for aceito, registrar a data, o horário e o canal utilizado no agendamento, liberando o horário para outro atendimento.

### Integração entre os processos

O cadastro do cliente permite identificá-lo nos agendamentos e encaixes. O catálogo de serviços e pacotes informa os procedimentos disponíveis, seus preços e a duração estimada, enquanto o cadastro dos barbeiros permite selecionar o profissional responsável.

O agendamento reúne essas informações e vincula o cliente, a unidade, o barbeiro e os serviços escolhidos. Após o atendimento, o pagamento é registrado nesse mesmo agendamento. Caso haja cancelamento, seus dados também ficam associados ao registro, permitindo acompanhar o que aconteceu com o horário reservado.

---

### 📋 3. Requisitos do Sistema

Os requisitos foram organizados considerando a gestão de uma única unidade da Barbearia Black Zone e os processos representados no DER.

### ⚙️ 3.1 Requisitos Funcionais

Os requisitos funcionais descrevem o que o sistema deve permitir que a equipe faça no dia a dia.

| Código | Requisito | Descrição |
| :---: | :--- | :--- |
| **RF01** | Gerenciar os dados da unidade | Cadastrar, consultar e atualizar nome, endereço, WhatsApp e horários de funcionamento da unidade. |
| **RF02** | Gerenciar clientes | Cadastrar, consultar e atualizar nome, telefone e e-mail opcional dos clientes. |
| **RF03** | Gerenciar barbeiros | Cadastrar, consultar e atualizar os dados dos barbeiros, vinculando-os à unidade e aos serviços que realizam, incluindo a informação sobre serem não fumantes. |
| **RF04** | Gerenciar serviços e pacotes | Cadastrar e atualizar descrições, categorias, preços e durações estimadas, além de registrar os serviços avulsos que compõem cada pacote. |
| **RF05** | Registrar agendamentos | Registrar cliente, unidade, barbeiro responsável, serviços ou pacotes escolhidos, data, horários de início e término e canal utilizado. |
| **RF06** | Consultar e organizar a agenda | Consultar horários ocupados e disponíveis, impedindo sobreposição para o mesmo barbeiro e agendamentos fora do funcionamento da unidade. |
| **RF07** | Registrar encaixes | Registrar atendimentos sem reserva prévia, identificando-os como encaixes pelo canal presencial e vinculando cliente, barbeiro e serviços escolhidos. |
| **RF08** | Registrar pagamentos | Registrar, no respectivo agendamento, a data, o horário, o valor pago e a forma de pagamento utilizada. |
| **RF09** | Registrar cancelamentos | Registrar a data, o horário e o canal do cancelamento, verificando o prazo previsto nas regras de negócio e liberando o horário cancelado. |
| **RF10** | Consultar registros de atendimento | Consultar os agendamentos de cada cliente e barbeiro, incluindo os serviços escolhidos e os dados de pagamento ou cancelamento, quando existentes. |

### 🛡️ 3.2 Requisitos Não Funcionais

Os requisitos não funcionais definem as condições de qualidade esperadas para o uso do sistema.

> **Validação:** os requisitos abaixo são propostas iniciais e devem ser confirmados com o responsável pela unidade, considerando a rotina e a infraestrutura disponível.

| Código | Requisito | Descrição |
| :---: | :--- | :--- |
| **RNF01** | Facilidade de uso | Apresentar informações e mensagens em português, com campos identificados de forma clara e navegação simples para a equipe. |
| **RNF02** | Segurança e privacidade | Restringir o acesso aos dados de clientes, agendamentos e pagamentos às pessoas autorizadas pela unidade. |
| **RNF03** | Desempenho | Apresentar os resultados das consultas de clientes e horários em até três segundos, em condições normais de uso. |
| **RNF04** | Disponibilidade | Manter o sistema disponível durante o funcionamento da unidade, de segunda-feira a sábado, das 09h às 21h. |
| **RNF05** | Confiabilidade e recuperação | Preservar os dados salvos e contar com cópias de segurança e um procedimento de recuperação em caso de falha. |

---

## 4. Regras de Negócio

- **Regras operacionais:** *condições que a organização impõe (ex.: "um pedido só pode ser fechado se houver estoque disponível", "uma doação só pode ser registrada com identificação do doador", "um ritual só pode ser agendado se o espaço estiver disponível").*
- **Restrições organizacionais:** *limitações que afetam o modelo (ex.: políticas internas, prazos, exigências legais, normas religiosas ou estatutárias) — e por que elas importam.*

---

## 5. Dicionário de Dados Conceitual 

Dicionário.html
---

## 6. Modelagem Conceitual (Entidades, Atributos, Relacionamentos)


| Entidade | Descrição | Atributos |
| :--- | :--- | :--- |
| *UNIDADE* | *Representa a infraestrutura da franquia Black Zone e centraliza as regras de funcionamento local.* | *ID_UNIDADE - NM_UNIDADE - DS_ENDERECO - DS_TELEFONE - HR_ABERTURA - HR_FECHAMENTO* |
| *CLIENTE* | *Armazena os dados dos consumidores atendidos por agendamento prévio ou encaixe.* | *ID_CLIENTE - NM_CLIENTE - DS_TELEFONE - DS_EMAIL* |
| *BARBEIRO* | *Armazena os dados dos profissionais responsáveis pela execução dos serviços, incluindo características como ser não fumante.* | *ID_BARBEIRO - NM_BARBEIRO - DS_TELEFONE - FL_NAO_FUMANTE* |
| *SERVIÇO* | *Representa os procedimentos avulsos de estética e cuidados oferecidos pela barbearia.* | *ID_SERVICO - NM_SERVICO - DS_CATEGORIA - NR_DURACAO_MIN - VL_SERVICO* | 
| *PACOTE* | *Estrutura que agrupa dois ou mais serviços em uma oferta combinada com valor diferenciado.* | *ID_PACOTE - NM_PACOTE - DS_PACOTE - VL_PACOTE* |
| *AGENDAMENTO* | *Entidade central do modelo. Representa tanto as reservas antecipadas quanto os encaixes em tempo real, conectando cliente, barbeiro e serviços.* | *ID_AGENDAMENTO - DT_AGENDAMENTO - HR_AGENDAMENTO - HR_INICIO - HR_FIM_ESTIMADO - TP_ATENDIMENTO - DS_CANAL - ST_AGENDAMENTO* |
| *PAGAMENTO* | *Entidade fraca dependente de AGENDAMENTO, criada para registrar a liquidação financeira de um atendimento efetuado.* | *ID_PAGAMENTO - DT_PAGAMENTO - HR_PAGAMENTO - VL_PAGO - TP_FORMA_PAGAMENTO* |
| *CANCELAMENTO* | *Entidade fraca dependente de AGENDAMENTO, destinada a registrar desistências e liberar a agenda.* | *ID_CANCELAMENTO - DT_CANCELAMENTO - HR_CANCELAMENTO - DS_CANAL_CANC* |


## Relacionamentos Pertinentes

## 1. UNIDADE ↔ BARBEIRO (1 : N)
- Regra de Negócio: A unidade possui vários barbeiros cadastrados, mas cada barbeiro trabalha em apenas uma unidade.
- Como se conectam: A chave primária ID_UNIDADE da tabela UNIDADE entra como Chave Estrangeira (ID_UNIDADE) na tabela BARBEIRO.


## 2. UNIDADE ↔ AGENDAMENTO (1 : N)
- Regra de Negócio: A unidade sedia diversos agendamentos/encaixes ao longo do tempo.
- Como se conectam: O ID_UNIDADE entra como Chave Estrangeira (ID_UNIDADE) na tabela AGENDAMENTO.


## 3. CLIENTE ↔ AGENDAMENTO (1 : N)
- Regra de Negócio: Um cliente pode realizar vários agendamentos ou encaixes, mas cada agendamento pertence a exatamente um cliente.
- Como se conectam: A chave primária ID_CLIENTE da tabela CLIENTE entra como Chave Estrangeira (ID_CLIENTE) na tabela AGENDAMENTO.


## 4. BARBEIRO ↔ AGENDAMENTO (1 : N)
- Regra de Negócio: Um barbeiro atende múltiplos agendamentos ao longo do dia. Cada agendamento é atribuído a apenas um barbeiro (Regra Operacional RN01).
- Como se conectam: A chave primária ID_BARBEIRO da tabela BARBEIRO entra como Chave Estrangeira (ID_BARBEIRO) na tabela AGENDAMENTO.


## 5. BARBEIRO ↔ SERVICO (M : N)
- Regra de Negócio: Um barbeiro pode executar vários tipos de serviços, e um mesmo serviço pode ser prestado por diversos barbeiros da equipe.
- Como se conectam: Como é uma relação Muitos-para-Muitos (M:N), cria-se uma tabela associativa intermediária chamada BARBEIRO_SERVICO:

- Contém a PK composta ou individual (ID_BARBEIRO, ID_SERVICO).

- ID_BARBEIRO (FK referenciando BARBEIRO).

- ID_SERVICO (FK referenciando SERVICO).


## 6. PACOTE ↔ SERVICO (M : N)
- Regra de Negócio: Um pacote é composto por 1 ou mais serviços avulsos, e um serviço avulso pode fazer parte de vários pacotes diferentes.
- Como se conectam: Cria-se a tabela associativa intermediária PACOTE_SERVICO:

- ID_PACOTE (FK referenciando PACOTE).

- ID_SERVICO (FK referenciando SERVICO).


## 7. AGENDAMENTO ↔ SERVICO (M : N)
- Regra de Negócio: Um atendimento/agendamento pode conter um ou mais serviços avulsos selecionados pelo cliente.
 - Como se conectam: Cria-se a tabela associativa intermediária AGENDAMENTO_SERVICO:

 - ID_AGENDAMENTO (FK referenciando AGENDAMENTO).

- ID_SERVICO (FK referenciando SERVICO).


## 8. AGENDAMENTO ↔ PACOTE (M : N)
- Regra de Negócio: Um atendimento/agendamento pode incluir um ou mais pacotes promocionais.
- Como se conectam: Cria-se a tabela associativa intermediária AGENDAMENTO_PACOTE:

- ID_AGENDAMENTO (FK referenciando AGENDAMENTO).

- ID_PACOTE (FK referenciando PACOTE).


## 9. AGENDAMENTO ↔ PAGAMENTO (1 : 0..1)
- Regra de Negócio: Um agendamento concluído possui no máximo um pagamento associado com uma única forma de pagamento (Regra Operacional RN02).
- Como se conectam: A chave primária ID_AGENDAMENTO entra como Chave Estrangeira (ID_AGENDAMENTO) (com restrição de valor único/UNIQUE) na tabela PAGAMENTO.


## 10. AGENDAMENTO ↔ CANCELAMENTO (1 : 0..1)
- Regra de Negócio: Um agendamento cancelado possui exatamente um registro associado descrevendo a data, hora e canal da desistência.
- Como se conectam: O ID_AGENDAMENTO entra como Chave Estrangeira (ID_AGENDAMENTO) (UNIQUE) na tabela CANCELAMENTO.



## Restrições e políticas organizacionais aplicadas ao modelo.
## 1. Escopo de Gestão Estritamente Local.
- O sistema deve gerenciar e armazenar apenas as operações, profissionais, clientes, serviços e finanças da unidade Black Zone Celso 5065 (Tatuapé). Impacto no Modelo: Não há cruzamento de agendas, nem compartilhamento de clientes ou repasse de atendimentos entre outras franquias da rede Black Zone. A entidade UNIDADE garante o isolamento dos dados locais.

## 2. Atribuição de Atendimentos por Habilitação do Barbeiro.
- Nem todos os barbeiros necessariamente realizam todos os procedimentos (como barboterapia ou cortes específicos para cabelo afro). O sistema só pode permitir que um barbeiro seja vinculado a um agendamento se ele estiver habilitado para executar o serviço ou pacote solicitado. Impacto no Modelo: Exige a existência do relacionamento/tabela associativa BARBEIRO_SERVICO para verificar a aptidão técnica do profissional antes de confirmar o agendamento.

## 3. Exclusividade de Um Único Barbeiro por Atendimento.
- Todo o atendimento (composto por um serviço avulso, múltiplos serviços ou um pacote) deve ser realizado do início ao fim por um único barbeiro. Não é permitida a divisão ou troca de profissionais dentro do mesmo agendamento. Impacto no Modelo: O relacionamento entre AGENDAMENTO e BARBEIRO é estritamente de $1:N$ (um agendamento possui a chave estrangeira de exatamente $1$ barbeiro).

## 4. Política Transacional de Pagamento Único e Não Fracionado.
- A unidade determina que cada atendimento deve ter no máximo um pagamento associado e aceita apenas uma forma de pagamento por transação (Pix, Cartão de Crédito, Cartão de Débito ou Dinheiro). Não é permitido dividir o valor de um mesmo atendimento entre duas modalidades (ex.: metade em Pix e metade em Dinheiro).Impacto no Modelo: O relacionamento entre AGENDAMENTO e PAGAMENTO tem cardinalidade máxima $(0,1)$ ou $(1,1)$, e o atributo TP_FORMA_PAGTO armazena um único valor por registro financeiro.

## 5. Respeito Rigoroso ao Horário de Funcionamento.
- As reservas e encaixes estão restritos à janela de funcionamento da unidade: de segunda-feira a sábado, das 09h às 21h. A unidade permanece fechada aos domingos.Impacto no Modelo: O sistema deve validar no nível da aplicação e das restrições de tabela se os atributos DT_AGENDAMENTO e HR_INICIO / HR_FIM_ESTIMADO não violam os dias e horários de operação cadastrados na entidade UNIDADE.

## 6. Política de Cancelamento e Prazos por Canal.
- Cancelamentos podem ser solicitados via aplicativo/site Trinks, WhatsApp ou presencialmente. A aceitação do cancelamento está sujeita ao cumprimento dos prazos previstos nas regras operacionais da unidade para permitir a liberação do horário a tempo.Impacto no Modelo: A entidade CANCELAMENTO registra não apenas a confirmação da desistência, mas também os atributos de auditoria DT_CANCELAMENTO, HR_CANCELAMENTO e DS_CANAL_CANC para posterior verificação do cumprimento do prazo.

## 7. Formatação de Pacotes com Preço Fechado.
- Um pacote é uma combinação de dois ou mais serviços oferecida por um preço fixo próprio, que pode diferir da soma simples dos preços dos serviços avulsos.Impacto no Modelo: O valor do pacote é armazenado de forma independente no atributo VL_PACOTE da entidade PACOTE, sem ser calculado dinamicamente na hora do atendimento, preservando a regra de precificação comercial definida pela gerência.

---

## 7. Diagrama Entidade-Relacionamento (DER)


## 8. Justificativa Técnica

A modelagem de dados proposta foi desenhada para refletir com precisão a realidade operacional da unidade franqueada Celso 5065, alinhando a teoria de bancos de dados relacionais aos processos observados em campo.As principais decisões de abstração, cardinalidade e estruturação de entidades justificam-se pelas razões descritas a seguir.
## 1. Delimitação do Escopo Local e a Entidade UNIDADEA inclusão da entidade UNIDADE — mesmo sendo o sistema focado em apenas uma filial — é uma decisão de arquitetura voltada para a extensibilidade e padronização. Embora a regra de negócio estabeleça a gestão estritamente local (sem compartilhamento de agendas ou clientes entre franquias), centralizar os parâmetros de funcionamento (HR_ABERTURA, HR_FECHAMENTO) e contatos na entidade UNIDADE permite que as validações de agendamento sejam parametrizadas pelo banco de dados, em vez de ficarem fixadas no código da aplicação (hardcoded). Caso a franquia venha a expandir a gestão para outras unidades no futuro, a estrutura do banco já estará pronta para suportar múltiplos estabelecimentos sem requerer refatoração estrutural.
## 2. Modelagem da Entidade Central AGENDAMENTO e Tratamento dos EncaixesA entidade AGENDAMENTO atua como o núcleo operacional e transacional da barbearia. Optou-se por unificar agendamentos prévios e encaixes presenciais dentro dessa mesma entidade, diferenciando-os pelos atributos TP_ATENDIMENTO (Agendamento vs. Encaixe) e DS_CANAL (Trinks, WhatsApp, Presencial). Essa abordagem elimina a necessidade de criar entidades separadas para atendimentos sem reserva, reduzindo a complexidade do esquema relacional e garantindo que relatórios operacionais e financeiros analisem o histórico de atendimentos de forma consolidada.
## 3. Restrição de Exclusividade do Barbeiro (Cardinalidade 1:N entre BARBEIRO e AGENDAMENTO)A decisão de associar exatamente um barbeiro por agendamento ($1 : N$) atende à regra operacional da unidade, onde o profissional designado executa o atendimento do início ao fim. Embora um pacote possa incluir múltiplos serviços (corte, barba, sobrancelha), o modelo impede o fracionamento da execução entre profissionais distintos para o mesmo atendimento. Essa restrição simplifica o controle de comissões e previne conflitos na agenda do estabelecimento.
## 4. Resolução das Relações Muitos-para-Muitos ($M:N$)Para garantir a Primeira Forma Normal (1FN) e evitar atributos multivalorados, as relações $M:N$ foram decompostas através de tabelas associativas:BARBEIRO_SERVICO: Registra a aptidão técnica de cada profissional. Um barbeiro só atende aos serviços para os quais possui habilitação cadastrada nesta tabela, assegurando a integridade das opções oferecidas ao cliente durante o agendamento.PACOTE_SERVICO: Permite que pacotes sejam compostos por múltiplos serviços avulsos de maneira flexível. O valor do pacote (VL_PACOTE) é mantido na entidade PACOTE como um preço promocional fixo, sem dependência de cálculo dinâmico sobre os valores individuais da tabela SERVICO.AGENDAMENTO_SERVICO e AGENDAMENTO_PACOTE: Garantem que um mesmo atendimento possa combinar serviços avulsos e pacotes sem duplicar o registro do agendamento.
## 5. Entidades Fracas para Eventos Terminais (PAGAMENTO e CANCELAMENTO)PAGAMENTO e CANCELAMENTO foram modeladas como entidades fracas dependentes de AGENDAMENTO com cardinalidade máxima $(0,1)$:PAGAMENTO ($1 : 0..1$): Reflete a regra transacional de pagamento único por atendimento, utilizando uma única forma de pagamento (TP_FORMA_PAGTO). A dependência da chave de AGENDAMENTO com restrição de unicidade (UNIQUE) garante que não existam pagamentos órfãos ou fracionados em múltiplos registros para o mesmo agendamento.CANCELAMENTO ($1 : 0..1$): Isola os dados de auditoria do cancelamento (DT_CANCELAMENTO, HR_CANCELAMENTO, DS_CANAL_CANC). A separação dessa entidade mantém a tabela AGENDAMENTO enxuta para consultas de rotina na agenda, ao mesmo tempo que preserva o histórico de cancelamentos para análise de taxa de desistência e verificação do cumprimento das regras de prazos da barbearia.
