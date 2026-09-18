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
*(vale 10% — Dimensão Procedimental)*

- **Principais processos mapeados:** *ex.: cadastro de clientes/beneficiários/fiéis, controle de estoque ou doações, vendas ou arrecadação, emissão de pedidos ou solicitações, entregas ou distribuição, organização de eventos/rituais/mutirões.*
- **Fluxogramas:** (Opcional) *represente visualmente pelo menos os processos-chave (imagens anexadas). Deve ficar claro o fluxo de cada processo e como eles se integram entre si.*

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
*(vale 10% — Dimensão Procedimental - Segue o modelo do arquivo 02-03g_Exemplo_Dicionario_Dados.pdf)*

Para cada entidade identificada, liste:

| Atributo | Descrição | Regra de negócio associada |
|----------|-----------|------------------------------|
| *nome do atributo* | *o que ele representa* | *se houver alguma regra (obrigatoriedade, valores possíveis, etc.)* |

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
*(vale 20% — é o item de maior peso da entrega)*

- Anexe o DER (em imagem).
- O diagrama deve representar corretamente:
  - Entidades
  - Atributos
  - Relacionamentos
  - **Cardinalidades**
- O modelo deve ser **consistente** e já demonstrar potencial de **escalabilidade e integração** (pensando nas próximas etapas do projeto).

---

## 8. Justificativa Técnica
*(vale 7,5% — sozinho, é o subcritério de maior peso dentro da Dimensão Conceitual)*

*Explique e defenda as decisões de abstração e modelagem tomadas: por que essas entidades, esses atributos, esses relacionamentos e essas cardinalidades — e não outras alternativas possíveis?*

