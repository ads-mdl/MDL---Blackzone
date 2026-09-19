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

## 3. Requisitos do Sistema
*(esta seção e a Seção 4 "Regras de Negócio" DIVIDEM 7,5% na dimensão conceitual — juntas valem 7,5%, não 7,5% cada — + 4% exclusivos desta seção na organização/documentação)*

### 3.1 Requisitos Funcionais
*O que o sistema precisa FAZER (ex.: "o sistema deve permitir registrar uma venda").*

### 3.2 Requisitos Não Funcionais
*Características de qualidade (ex.: desempenho, segurança, usabilidade, disponibilidade).*

---

## 4. Regras de Negócio
*(esta seção DIVIDE com a Seção 3 "Requisitos do Sistema" os mesmos 7,5% da dimensão conceitual — juntas valem 7,5%, não 7,5% cada — + 4% exclusivos desta seção na documentação. "Regras de negócio" é o termo técnico usado em modelagem de dados para as regras de funcionamento de qualquer organização, com ou sem fins lucrativos)*

- **Regras operacionais:** *condições que a organização impõe (ex.: "um pedido só pode ser fechado se houver estoque disponível", "uma doação só pode ser registrada com identificação do doador", "um ritual só pode ser agendado se o espaço estiver disponível").*
- **Restrições organizacionais:** *limitações que afetam o modelo (ex.: políticas internas, prazos, exigências legais, normas religiosas ou estatutárias) — e por que elas importam.*

---

## 5. Dicionário de Dados Conceitual (Preliminar)

Para cada entidade identificada, liste:

| Atributo | Descrição | Regra de negócio associada |
|----------|-----------|------------------------------|
| *ID_CLIENTE* | *Código identificador único de cliente no sistema * | *Chave Primária(PK). Tipo Integer. Obrigatório.* |
| *NM_CLIENTE* | *Nome Completo do cliente recepcionado ou agendado * | *Tipo Varchar(100). Obrigatório.* |
| *DS_TELEFONE* | *Número de contato / WhatsApp do Cliente * | *Tipo Varchar(20). Opcional.* |
| *DS_EMAIL* | *Endereço de E-mail do cliente * | *Tipo Varchar(100). Opicional.* |
| *VL_LIMITE_ORCAMENTO* | *Análise de orçamento disponível no bolso do cliente relacionado a corte e outros serviços* | *Tipo Númeric(10,2). Opcional.* |
| *DS_PREFERENCIA_CORTE* | * Gostos, especificações e preferências do cliente definidos durante o atendimento* | *Tipo Text. Opcional* |
| *IN_PENALIZADO_AUSENCIA* | *Indicador de Aplicação de penalidade por ausência sem aviso prévio* | *Tipo Boolean. Opcional* |


*Mantenha o dicionário organizado e padronizado (mesmo formato de tabela para todas as entidades).*

**Atenção à privacidade:** se forem usados exemplos de valores para ilustrar os atributos, esses exemplos devem ser **fictícios** — não utilize dados reais de clientes, fiéis, beneficiários, doadores ou funcionários da organização (nomes, CPFs, contatos etc.), mesmo que tenham sido observados durante a pesquisa de campo. Os exemplos devem apenas ser **coerentes com as operações reais** observadas.

---

## 6. Modelagem Conceitual (Entidades, Atributos, Relacionamentos)
*(vale 7,5% na dimensão conceitual)*

- **Entidades reconhecidas:** *liste e justifique brevemente cada uma.*
- **Atributos e classificações:** *quais atributos pertencem a cada entidade.*
- **Relacionamentos pertinentes:** *como as entidades se conectam.*
- **Restrições e políticas organizacionais aplicadas ao modelo.**

---

## 7. Diagrama Entidade-Relacionamento (DER)


## 8. Justificativa Técnica
*(vale 7,5% — sozinho, é o subcritério de maior peso dentro da Dimensão Conceitual)*

*Explique e defenda as decisões de abstração e modelagem tomadas: por que essas entidades, esses atributos, esses relacionamentos e essas cardinalidades — e não outras alternativas possíveis?*

