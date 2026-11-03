# 💈 MDL — Black Zone Celso 5065
> **Modelagem de um sistema de gestão de informações para uma organização de pequeno porte.**

---
## 👥 Integrantes do Projeto

| Nome Completo | RGM |
| :--- | :--- |
| Felipe André Cruz Leite | **48200310** |
| Guilherme Fernando Alves da Silva | **48183199** |
| Richard Matos Dias | **48135291** |
| Kauan Ferreira | **48250139** |
| Vitor da Silva Bonilha | **48123005** |

---

## 🏢 1. Caracterização da Organização

A organização escolhida para este estudo de caso é a **Barbearia Black Zone Celso 5065**, uma unidade franqueada da rede Black Zone.

> 📍 **Localização:** Bairro Tatuapé, São Paulo - SP  
> 📅 **Fundação:** Ano de 2020 (durante a pandemia de COVID-19)  
> 💼 **Natureza:** Estabelecimento privado, com fins lucrativos  
> 🎯 **Foco do Projeto:** Gestão local e exclusiva desta unidade, abrangendo clientes, barbeiros e suas escalas, serviços e pacotes, agendamentos, faltas, pagamentos, cancelamentos, comissões, compras, estoque, vendas de produtos e fechamento de caixa.

### 🕒 Contexto e Operação

O estabelecimento atua na prestação de serviços de barbearia e cuidados estéticos masculinos, voltado principalmente ao público jovem. O catálogo inclui desde cortes clássicos e modernos até cuidados com cabelo afro, barboterapia e estética facial (disponíveis de forma avulsa ou em pacotes combinados).

- **Funcionamento:** segunda-feira a sábado, das 09h às 21h. Aos domingos, a unidade permanece fechada.
- **Agendamentos:** realizados pelo site Trinks, WhatsApp ou presencialmente.
- **Encaixes:** atendimento presencial de clientes sem agendamento prévio, conforme a disponibilidade de horários dos barbeiros.
- **Serviços avulsos:** preços cadastrados a partir de R$ 50,00, com exceção do corte infantil para crianças de até 12 anos, inclusive, por R$ 25,00, e do corte para adultos calvos, por R$ 30,00.
- **Pacotes:** combinação de serviços com preço próprio.
- **Produtos comercializados:** pomada em pó com efeito matte/seco para cabelos, óleo de hidratação para barba e shampoo capilar profissional.
- **Comissão dos barbeiros:** 50% do valor efetivamente pago pelos serviços e pacotes realizados, sem incluir vendas de produtos.
- **Formas de pagamento:** Pix, cartão de crédito, cartão de débito ou dinheiro, utilizando uma única forma por atendimento.

### 👥 Equipe e Volume de Atendimentos

| Informação | Caracterização |
| :--- | :--- |
| **Quantidade de barbeiros** | 7 profissionais |
| **Demais profissionais** | Recepcionista, responsável pela recepção dos clientes, consulta de agendas e escalas, registro de faltas e vendas de produtos. |
| **Média individual de atendimentos** | Aproximadamente 12 atendimentos por barbeiro por dia |
| **Volume diário estimado da unidade** | Cerca de 84 atendimentos quando os sete barbeiros trabalham no mesmo dia |

### ⚠️ Problemas e Necessidades Identificados

- **Conflitos de horários:** agendamentos recebidos pelo WhatsApp ou presencialmente geram sobreposição quando não são registrados imediatamente na agenda do barbeiro.

- **Falhas no registro de cancelamentos:** cancelamentos comunicados por diferentes canais podem demorar a ser atualizados, mantendo horários ocupados mesmo após a desistência do cliente.

- **Falta de clareza sobre os pacotes:** informações incompletas sobre os serviços incluídos e seus preços podem gerar dúvidas no atendimento e divergências na cobrança.

- **Tempo insuficiente reservado para os serviços:** desconsiderar a duração estimada dos procedimentos pode causar atrasos nos atendimentos seguintes.

- **Ausência de registro dos encaixes:** atendimentos sem agendamento prévio podem deixar de ser registrados, dificultando a identificação do cliente, do barbeiro responsável e dos serviços prestados.

#### Necessidades do sistema

Com base no DER adotado, o sistema proposto deve permitir:

#### Necessidades do sistema

Considerando os processos e as regras definidos para o projeto, o sistema deve permitir:

- **Manter os dados da unidade:** registrar nome, endereço, WhatsApp e horários de funcionamento.

- **Organizar os cadastros de clientes e barbeiros:** manter os dados de identificação e contato, registrar a característica de barbeiro não fumante e relacionar os profissionais aos serviços que realizam.

- **Gerenciar escalas e agendas:** registrar dias de trabalho, horários, intervalos e folgas dos barbeiros, evitando sobreposição de atendimentos e reservas fora da disponibilidade de cada profissional.

- **Registrar agendamentos e encaixes:** armazenar cliente, unidade, barbeiro responsável, serviços e pacotes escolhidos, data, horários, tipo de atendimento e canal utilizado.

- **Acompanhar a situação dos atendimentos:** registrar se cada agendamento está agendado, concluído, cancelado ou marcado como falta.

- **Controlar faltas sem aviso:** permitir que a recepcionista registre o não comparecimento do cliente quando não houver cancelamento e consulte seus dados de contato para oferecer uma remarcação, sem multas nem bloqueios automáticos.

- **Gerenciar serviços, pacotes e preços:** manter descrições, categorias, durações e preços, registrar a composição dos pacotes e aplicar os valores diferenciados previstos para cortes.

- **Registrar pagamentos:** armazenar a data, o horário, o valor recebido e a forma de pagamento no respectivo agendamento, permitindo até um pagamento e uma única forma por atendimento.

- **Registrar cancelamentos:** armazenar a data, o horário e o canal do cancelamento, respeitando a antecedência mínima de duas horas e liberando o horário reservado.

- **Controlar comissões e repasses:** calcular 50% do valor efetivamente pago pelos serviços e pacotes realizados, sem incluir vendas de produtos, e registrar as comissões quitadas, a data e o valor de cada repasse.

- **Gerenciar produtos, insumos e estoque:** manter os cadastros e acompanhar entradas por compras, saídas por vendas e consumo nos atendimentos, controlando a validade por lote quando aplicável.

- **Registrar compras:** documentar as compras autorizadas pelo gerente, com itens, quantidades e valores, acrescentando ao estoque somente as unidades recebidas e conferidas.

- **Registrar vendas de produtos:** identificar os produtos vendidos, o número de unidades de cada item, os preços e a forma de pagamento, descontando as quantidades vendidas do estoque.

- **Realizar o fechamento de caixa:** conferir o saldo inicial, os recebimentos e as saídas, incluindo repasses aos barbeiros, registrando o saldo apurado, o saldo conferido e eventuais diferenças.

- **Proteger os dados pessoais:** controlar o acesso conforme a função do usuário e atender aos requisitos de segurança e privacidade definidos no projeto.


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
- **Registros da visita: [Visualizar foto da entrevista — Black Zone Celso 5065](foto-entrevista-blackzone.jpg)

---

## 2. Processos de Negócio

### Principais processos mapeados

- **Cadastro e atualização de clientes:** registrar nome, telefone e, opcionalmente, e-mail. Antes de realizar um novo cadastro, verificar se o cliente já está registrado para evitar duplicidade.

- **Organização dos dados da unidade, dos barbeiros e de suas escalas:** manter os dados da unidade, seus horários de funcionamento e os cadastros dos sete barbeiros, incluindo os serviços que realizam e a informação sobre serem ou não fumantes. Organizar os dias de trabalho, turnos, intervalos e folgas de cada profissional. A recepcionista consulta a escala e a agenda antes de confirmar agendamentos e encaixes.
  
- **Cadastro de serviços e pacotes:** registrar os serviços oferecidos, suas descrições, categorias, preços e durações estimadas. Para os pacotes, informar quais serviços estão incluídos e o preço da combinação.

- **Agendamento de atendimentos:** receber a solicitação pelo Trinks, WhatsApp ou presencialmente, identificar o cliente e os serviços desejados e verificar um horário disponível com um barbeiro que realize os procedimentos. Registrar a data, os horários de início e término e o canal utilizado, respeitando o funcionamento da unidade e evitando sobreposição de horários.

- **Registro de encaixes:** verificar a disponibilidade para atender clientes que chegam sem agendamento prévio. Quando houver horário, registrar o atendimento como encaixe, pelo canal presencial, vinculando o cliente, o barbeiro e os serviços escolhidos.

- **Realização do atendimento:** o barbeiro responsável realiza os serviços vinculados ao agendamento, incluindo os procedimentos que compõem os pacotes. Um único barbeiro realiza todo o atendimento.

- **Aplicação de preços diferenciados:** identificar a categoria do atendimento e aplicar o preço do corte avulso: R$ 25 para crianças de até 12 anos e R$ 30 para adultos calvos. Os demais cortes seguem o preço cadastrado, a partir de R$ 50. Serviços adicionais e pacotes possuem preços próprios conforme estabelecido na tabela de preços da franquia.

- **Higienização e preparação do atendimento:** preparar a bancada e os materiais, conferir a validade dos produtos e utilizar equipamentos devidamente higienizados e esterilizados. Após cada atendimento, limpar os equipamentos utilizados e descartar as lâminas em recipiente próprio para materiais perfurocortantes.

- **Comissão/remuneração dos barbeiros:** o barbeiro recebe 50% do valor efetivamente pago pelos serviços e pacotes realizados em cada agendamento. Vendas de produtos, cancelamentos e faltas não geram essa comissão. O gerente confere os valores e registra a data e o valor do repasse.

- **Registro do pagamento:** registrar o valor recebido, a data, o horário e a forma de pagamento no respectivo agendamento. O pagamento pode ser feito por Pix, cartão de crédito, cartão de débito ou dinheiro, utilizando uma única forma por atendimento.

- **Registro do cancelamento:** receber a solicitação pelo Trinks, WhatsApp ou presencialmente e verificar o prazo previsto nas regras da unidade. Quando o cancelamento for aceito, registrar a data, o horário e o canal utilizado no agendamento, liberando o horário para outro atendimento.

- **Controle de faltas sem aviso:** a recepcionista registra como falta o agendamento do cliente que não compareceu nem solicitou cancelamento, podendo entrar em contato para remarcação. Não são aplicadas multas nem bloqueios automáticos.
  
- **Venda de produtos no balcão:** a recepcionista registra os produtos comprados pelo cliente, sendo eles: pomada em pó com efeito matte/seco para cabelos, óleo de hidratação para barba e shampoo capilar profissional, As unidades vendidas são descontadas do estoque, e os recebimentos entram no fechamento de caixa.
  
- **Compra de produtos e insumos:** Quando verificado que os produtos para venda e os materiais utilizados nos atendimentos precisam de reposição. O gerente é informado pelos barbeiros/recepcionista ou verifica no estoque os produtos que estão em falta, ele autoriza a compra e, no recebimento, confere os itens, o número de unidades, os valores e a validade, registrando a entrada no estoque.
  
- **Fechamento de caixa:** ao final do expediente, o gerente confere os recebimentos em dinheiro, Pix, crédito e débito e as saídas registradas, incluindo os repasses aos barbeiros. Eventuais diferenças são verificadas antes da confirmação do saldo final do dia.

### Integração entre os processos

O cadastro do cliente permite identificá-lo nos agendamentos e encaixes. O catálogo de serviços e pacotes informa os procedimentos disponíveis, seus preços e a duração estimada, enquanto o cadastro dos barbeiros permite selecionar o profissional responsável.

O agendamento reúne essas informações e vincula o cliente, a unidade, o barbeiro e os serviços escolhidos. Após o atendimento, o pagamento é registrado nesse mesmo agendamento. Caso haja cancelamento, seus dados também ficam associados ao registro.
Quando o cliente não comparece e nem solicita cancelamento, o agendamento é marcado como falta, permitindo distinguir as ausências, atendimentos realizados e cancelamentos.


---

### 📋 3. Requisitos do Sistema

Os requisitos foram organizados considerando a gestão de uma única unidade da Barbearia Black Zone e os processos representados no DER.

### ⚙️ 3.1 Requisitos Funcionais

Os requisitos funcionais descrevem o que o sistema deve permitir que a equipe faça no dia a dia.

| Código | Requisito | Descrição |
| :---: | :--- | :--- |
| **RF01** | Gerenciar os dados da unidade | Cadastrar, consultar e atualizar nome, endereço, WhatsApp e horários de funcionamento da unidade. |
| **RF02** | Gerenciar clientes | Cadastrar, consultar e atualizar nome, telefone e e-mail opcional dos clientes. |
| **RF03** | Gerenciar barbeiros e escalas | Cadastrar, consultar e atualizar os dados dos barbeiros, vinculando-os à unidade e aos serviços que realizam e a indicação de fumante/não fumante, além dos dias de trabalho, horários, intervalos e folgas de cada profissional. |
| **RF06** | Consultar e organizar a agenda | Consultar horários ocupados e disponíveis, impedindo sobreposição de atendimentos e respeitando o funcionamento da unidade e a escala de cada barbeiro, incluindo intervalos e folgas. |
| **RF10** | Consultar registros de atendimento | Consultar os agendamentos de cada cliente e barbeiro, incluindo serviços escolhidos, situação do atendimento e dados de pagamento ou cancelamento, quando existentes. |
| **RF04** | Gerenciar serviços e pacotes | Cadastrar e atualizar descrições, categorias, preços e durações estimadas, além de registrar os serviços avulsos que compõem cada pacote. |
| **RF05** | Registrar agendamentos | Registrar cliente, unidade, barbeiro responsável, serviços ou pacotes escolhidos, data, horários de início e término e canal utilizado. |
| **RF07** | Registrar encaixes | Registrar atendimentos sem reserva prévia, identificando-os como encaixes pelo canal presencial e vinculando cliente, barbeiro e serviços escolhidos. |
| **RF08** | Registrar pagamentos | Registrar, no respectivo agendamento, a data, o horário, o valor pago e a forma de pagamento utilizada. |
| **RF09** | Registrar cancelamentos | Registrar a data, o horário e o canal do cancelamento, verificando o prazo previsto nas regras de negócio e liberando o horário cancelado. |
| **RF10** | Consultar registros de atendimento | Consultar os agendamentos de cada cliente e barbeiro, incluindo serviços escolhidos, situação do atendimento e dados de pagamento ou cancelamento, quando existentes. |
| **RF11** | Atualizar a situação dos atendimentos | Registrar a situação de cada agendamento como agendado, concluído, cancelado ou falta. |
| **RF12** | Aplicar preços diferenciados | Aplicar ao corte avulso os valores de R$ 25 para crianças de até 12 anos e R$ 30 para adultos calvos, mantendo os preços próprios dos serviços adicionais e pacotes. |
| **RF13** | Gerenciar comissões e repasses | Registrar a comissão de cada atendimento realizado e pago, consultar os valores por barbeiro e registrar a data e o valor dos repasses, identificando as comissões quitadas. |
| **RF14** | Gerenciar produtos e insumos | Cadastrar, consultar e atualizar produtos para venda e materiais utilizados nos atendimentos, incluindo preços, quantidades em estoque e validade por lote, quando aplicável. |
| **RF15** | Registrar vendas de produtos | Registrar os produtos vendidos, o número de unidades de cada produto, os preços e a forma de pagamento, descontando do estoque as quantidades vendidas. |
| **RF16** | Registrar compras e recebimentos | Registrar as compras autorizadas pelo gerente, seus itens, quantidades e valores, acrescentando ao estoque somente as unidades recebidas e conferidas. |
| **RF17** | Registrar consumo de insumos | Registrar os materiais e as quantidades utilizados nos atendimentos, descontando essas quantidades do estoque. |
| **RF18** | Registrar movimentações e fechamento de caixa | Registrar entradas e saídas financeiras, incluindo repasses aos barbeiros, e realizar a conferência diária por forma de pagamento, registrando saldo inicial, saldo apurado, saldo conferido e eventuais diferenças. |

### 🛡️ 3.2 Requisitos Não Funcionais

Os requisitos não funcionais definem as condições de qualidade esperadas para o uso do sistema.

| Código | Requisito | Descrição |
| :---: | :--- | :--- |
| **RNF01** | Facilidade de uso | Apresentar informações e mensagens em português, com campos identificados de forma clara e navegação simples para a equipe. |
| **RNF02** | Segurança, privacidade e LGPD | Proteger os dados dos clientes conforme a Lei Geral de Proteção de Dados (LGPD — Lei nº 13.709/2018), coletando apenas o necessário para cadastro e atendimento, informando a finalidade de uso e restringindo o acesso às pessoas autorizadas. Permitir solicitações de acesso, correção e exclusão dos dados, respeitando as obrigações legais de conservação. |
| **RNF03** | Desempenho | Apresentar os resultados das consultas de clientes e horários em até três segundos, em condições normais de uso. |
| **RNF04** | Disponibilidade | Manter o sistema disponível durante o funcionamento da unidade, de segunda-feira a sábado, das 09h às 21h. |
| **RNF05** | Confiabilidade e recuperação | Preservar os dados salvos e contar com cópias de segurança e um procedimento de recuperação em caso de falha. |

---

## 4. Regras de Negócio

As regras de negócio definem como os atendimentos da **Barbearia Black Zone Celso 5065** devem ser organizados e registrados.

### 4.1 Regras Operacionais

| Código | Regra | Descrição |
| :--- | :--- | :--- |
| **RN01** | Identificação do atendimento | Cada agendamento deve estar vinculado a um cliente, um barbeiro e à unidade. |
| **RN02** | Responsável pelo atendimento | Um único barbeiro realiza todos os procedimentos escolhidos pelo cliente, incluindo os serviços dos pacotes. |
| **RN03** | Serviços e pacotes | Cada agendamento deve incluir pelo menos um serviço avulso ou pacote. Conforme o DER, cada pacote reúne dois ou mais serviços avulsos. |
| **RN04** | Preços | Os serviços avulsos possuem preços cadastrados a partir de R$ 50, exceto os cortes com valores diferenciados previstos na RN15. Pacotes e produtos possuem preços próprios cadastrados. |
| **RN05** | Canais de agendamento | As marcações podem ser feitas pelo **Trinks, WhatsApp ou presencialmente**, com registro do canal utilizado. |
| **RN06** | Encaixes | Clientes sem horário marcado podem ser atendidos quando houver disponibilidade. O atendimento deve ser registrado como **encaixe**, pelo canal **presencial**. |
| **RN07** | Pagamento | Cada atendimento permite um único pagamento, em **Pix, crédito, débito ou dinheiro**, sem divisão entre formas. Devem ser registrados o valor, a data e a hora do pagamento e a forma utilizada. |
| **RN08** | Política de faltas sem aviso | Quando o cliente não comparecer ao horário reservado e não tiver solicitado cancelamento, o agendamento deve ser marcado como falta. Não são aplicadas multas nem bloqueios automáticos, e a recepcionista pode entrar em contato para oferecer uma nova marcação. |
| **RN09** | Cancelamento | Cada agendamento pode ter um cancelamento, solicitado pelo **Trinks, WhatsApp ou presencialmente**, com registro da data, da hora e do canal. |
| **RN10** | Barbeiro não fumante | Essa característica deve constar no cadastro do profissional, permitindo considerar a preferência do cliente na escolha do barbeiro. |
| **RN11** | Comissão do barbeiro | Cada agendamento concluído e pago gera uma comissão de 50% do valor recebido pelos serviços e pacotes realizados. Agendamentos cancelados ou com falta e vendas de produtos não geram essa comissão. O gerente confere os valores antes do repasse. |
| **RN12** | Venda de produtos | Cada venda deve registrar os produtos, o número de unidades de cada item, os preços e a forma de pagamento. Somente podem ser vendidas quantidades disponíveis em estoque. |
| **RN13** | Compra e recebimento | As compras devem ser autorizadas pelo gerente. Somente os produtos e materiais efetivamente recebidos e conferidos devem ser acrescentados ao estoque. |
| **RN14** | Movimentação de estoque | As entradas por compra aumentam o estoque, enquanto as vendas e o consumo nos atendimentos reduzem as quantidades disponíveis. Produtos vencidos não podem ser vendidos nem utilizados. |
| **RN15** | Fechamento de caixa | Ao final do expediente, o gerente confere o saldo inicial, os recebimentos e as saídas efetivamente realizadas, incluindo repasses aos barbeiros. Eventuais diferenças devem ser registradas e justificadas antes da confirmação do fechamento. |
| **RN16** | Registro dos repasses | Cada repasse deve identificar o barbeiro, as comissões quitadas, a data e o valor pago. Uma mesma comissão não pode ser paga mais de uma vez. |

### 4.2 Restrições Organizacionais

| Código | Restrição | Aplicação |
| :--- | :--- | :--- |
| **RN17** | Uma única unidade | O projeto controla somente a **Black Zone Celso 5065**, mantendo os cadastros e atendimentos vinculados a ela. |
| **RN18** | Horário de funcionamento | Os atendimentos devem começar e terminar entre **09h e 21h, de segunda-feira a sábado**. Aos domingos, a unidade permanece fechada. |
| **RN19** | Disponibilidade do barbeiro | Agendamentos e encaixes devem respeitar os dias de trabalho, horários, intervalos e folgas do barbeiro, sem sobreposição de atendimentos. A reserva deve considerar a duração de todos os procedimentos escolhidos. |
| **RN20** | Preços diferenciados para cortes | O corte avulso custa R$ 25 para crianças de até 12 anos e R$ 30 para adultos calvos. Essas condições não se estendem a serviços adicionais ou pacotes. Os demais cortes mantêm o preço cadastrado, a partir de R$ 50. |
| **RN21** | Normas sanitárias | Manter o ambiente e os equipamentos limpos, realizar a limpeza, desinfecção e esterilização dos equipamentos conforme necessário e utilizar produtos regularizados e dentro da validade. As lâminas de barbear devem ser de uso único e descartadas em recipiente próprio para materiais perfurocortantes. |
| **RN22** | Prazo de cancelamento | Para o projeto, considera-se antecedência mínima de **duas horas**. Assim, um atendimento marcado para as 18h pode ser cancelado até as 16h. |
| **RN23** | Compatibilidade entre barbeiro e serviços | O agendamento só pode ser feito com um barbeiro que realize todos os serviços escolhidos pelo cliente, incluindo os que compõem os pacotes. |
| **RN24** | Proteção dos dados dos clientes | Coletar apenas os dados necessários ao cadastro e ao atendimento, informando ao cliente a finalidade de uso. Permitir solicitações de acesso, correção e exclusão, respeitando as hipóteses legais de conservação. Manter os dados somente pelo período necessário à finalidade ou ao cumprimento de obrigação legal. |


---

## 5. Dicionário de Dados Conceitual 

https://github.com/ads-mdl/MDL---Blackzone/blob/main/Dicion%C3%A1rio.html

---

## 6. Modelagem Conceitual (Entidades, Atributos, Relacionamentos)


| **Entidade** | **Descrição** | **Atributos** |
|---|---|---|
| **1. UNIDADE** | Representa a unidade da barbearia e seus horários de funcionamento. | **id_unidade**; nome; endereço (composto); WhatsApp; status; horário_funcionamento (composto e multivalorado). |
| **2. CLIENTE** | Armazena os dados dos clientes atendidos por agendamento ou encaixe. | **id_cliente**; nome; telefone; e-mail (opcional). |
| **3. BARBEIRO** | Registra os profissionais, suas características e escalas de trabalho. | **id_barbeiro**; nome; telefone; não_fumante; status; escala_trabalho (composto e multivalorado). |
| **4. SERVIÇO / PACOTE** | Reúne os serviços avulsos e os pacotes. O atributo tipo diferencia as opções, e o relacionamento CONTÉM representa a composição dos pacotes. | **id_serviço_pacote**; nome; tipo; categoria; descrição; duração_estimada; preço_atual; validade (opcional, para pacotes); status. |
| **5. AGENDAMENTO** | Registra reservas e encaixes, os serviços escolhidos e a situação do atendimento, incluindo os dados de pagamento e cancelamento quando ocorrerem. | **id_agendamento**; data; hora_início; hora_fim; tipo_agendamento; canal; status; categoria_preço_corte; valor_total_cobrado; observação (opcional). **Pagamento — campos opcionais:** data_hora_pagamento; valor_pago; forma_pagamento. **Cancelamento — campos opcionais:** data_hora_cancelamento; canal_cancelamento. |
| **6. COMISSÃO** | Registra a comissão do barbeiro referente a um agendamento concluído e pago. Agendamentos apenas marcados, cancelados ou com falta não geram comissão. | **id_comissão**; data_hora_geração; valor_base; percentual_aplicado; valor_comissão (derivado). |
| **7. REPASSE** | Registra o pagamento de uma ou mais comissões ao mesmo barbeiro. | **id_repasse**; data_hora; valor_total; forma_pagamento; observação (opcional). |
| **8. PRODUTO / INSUMO** | Mantém o cadastro dos produtos vendidos no balcão e dos materiais consumidos nos atendimentos. | **id_produto_insumo**; nome; descrição; finalidade; unidade_medida; preço_venda (quando destinado à venda); controla_validade; status; quantidade_estoque (derivado). |
| **9. LOTE** | Identifica os lotes de produtos e insumos, permitindo acompanhar suas quantidades e a validade quando aplicável. | **id_lote**; código_lote; data_validade (quando aplicável); quantidade_disponível (derivado). |
| **10. COMPRA** | Registra as compras de produtos e insumos, incluindo autorização, fornecedor e situação. | **id_compra**; data_compra; data_autorização; fornecedor; situação; valor_total (derivado); observação (opcional). |
| **11. ITEM_COMPRA** | Detalha cada produto ou insumo de uma compra, com sua quantidade e preço praticado. | **id_item_compra**; quantidade_comprada; preço_unitário; subtotal (derivado). |
| **12. VENDA** | Registra as vendas de produtos no balcão e os dados do pagamento quando realizado. | **id_venda**; data_hora; situação; valor_total (derivado); data_hora_pagamento (opcional); valor_pago (opcional); forma_pagamento (opcional). |
| **13. ITEM_VENDA** | Detalha cada produto de uma venda, indicando o número de unidades vendidas e o preço praticado. | **id_item_venda**; quantidade; preço_unitário_praticado; subtotal (derivado). |
| **14. MOVIMENTAÇÃO_ESTOQUE** | Registra entradas por compras e saídas por vendas ou consumo, identificando o lote movimentado. | **id_movimentação_estoque**; data_hora; tipo_movimentação; motivo; quantidade; observação (opcional). |
| **15. FECHAMENTO_CAIXA** | Registra a conferência dos recebimentos, das saídas e dos saldos por forma de pagamento, incluindo eventuais diferenças. | **id_fechamento**; data_referência; data_hora_fechamento; situação; conferência_por_forma (composto e multivalorado); justificativa_diferença (opcional). |
| **16. MOVIMENTAÇÃO_FINANCEIRA** | Registra entradas e saídas financeiras originadas de pagamentos de atendimentos, vendas, compras e repasses aos barbeiros. | **id_movimentação_financeira**; data_hora; tipo_movimentação; natureza; valor; forma_pagamento; observação (opcional). |


## Relacionamentos Pertinentes

| **Relacionamento** | **Primeira entidade** | **Segunda entidade** | **Regra de negócio** |
|---|---|---|---|
| **1. UNIDADE MANTÉM BARBEIRO** | UNIDADE **(0,N)** | BARBEIRO **(1,1)** | A unidade pode possuir vários barbeiros cadastrados. Cada barbeiro pertence a uma única unidade. |
| **2. UNIDADE RECEBE AGENDAMENTO** | UNIDADE **(0,N)** | AGENDAMENTO **(1,1)** | A unidade pode receber vários agendamentos e encaixes. Cada agendamento pertence a uma única unidade. |
| **3. CLIENTE REALIZA AGENDAMENTO** | CLIENTE **(0,N)** | AGENDAMENTO **(1,1)** | Um cliente pode estar cadastrado sem agendamentos ou realizar vários. Cada agendamento pertence a exatamente um cliente. |
| **4. BARBEIRO EXECUTA SERVIÇO / PACOTE** | BARBEIRO **(1,N)** | SERVIÇO / PACOTE **(0,N)** | Cada barbeiro executa um ou mais serviços avulsos. Um serviço avulso pode estar associado a nenhum ou vários barbeiros. A participação nesse relacionamento é restrita aos registros do tipo serviço avulso. |
| **5. AGENDAMENTO INCLUI SERVIÇO / PACOTE** | AGENDAMENTO **(1,N)** | SERVIÇO / PACOTE **(0,N)** | Cada agendamento inclui um ou mais serviços avulsos ou pacotes. Uma opção do catálogo pode aparecer em nenhum ou vários agendamentos. O atributo preço_praticado registra o valor cobrado por cada opção naquele agendamento, preservando o histórico após alterações no catálogo. |
| **6. SERVIÇO / PACOTE CONTÉM SERVIÇO / PACOTE** | Papel **pacote (2,N)** | Papel **serviço avulso (0,N)** | Cada pacote contém dois ou mais serviços avulsos. Um serviço avulso pode integrar nenhum ou vários pacotes. Os dois papéis pertencem à mesma entidade e são diferenciados pelo atributo tipo. |
| **7. AGENDAMENTO GERA COMISSÃO** | AGENDAMENTO **(0,1)** | COMISSÃO **(1,1)** | Um agendamento pode não gerar comissão ou gerar uma única comissão. Cada comissão corresponde a exatamente um agendamento. A geração ocorre somente quando o atendimento estiver concluído e pago. |
| **8. BARBEIRO RECEBE COMISSÃO** | BARBEIRO **(0,N)** | COMISSÃO **(1,1)** | Um barbeiro pode não possuir comissões ou receber várias. Cada comissão pertence a um único barbeiro. |
| **9. BARBEIRO RECEBE REPASSE** | BARBEIRO **(0,N)** | REPASSE **(1,1)** | Um barbeiro pode receber vários repasses ao longo do tempo. Cada repasse é destinado a exatamente um barbeiro. |
| **10. REPASSE QUITA COMISSÃO** | REPASSE **(1,N)** | COMISSÃO **(0,1)** | Cada repasse quita uma ou mais comissões. Uma comissão pode estar pendente ou ser quitada por um único repasse, sem pagamento duplicado. |
| **11. COMPRA CONTÉM ITEM_COMPRA** | COMPRA **(1,N)** | ITEM_COMPRA **(1,1)** | Cada compra contém um ou mais itens. Cada item de compra pertence a uma única compra. |
| **12. ITEM_COMPRA REFERE-SE A PRODUTO / INSUMO** | ITEM_COMPRA **(1,1)** | PRODUTO / INSUMO **(0,N)** | Cada item de compra identifica um único produto ou insumo. Um produto ou insumo pode aparecer em vários itens de compra ao longo do tempo. |
| **13. VENDA CONTÉM ITEM_VENDA** | VENDA **(1,N)** | ITEM_VENDA **(1,1)** | Cada venda contém um ou mais itens. Cada item de venda pertence a uma única venda. |
| **14. ITEM_VENDA REFERE-SE A PRODUTO / INSUMO** | ITEM_VENDA **(1,1)** | PRODUTO / INSUMO **(0,N)** | Cada item de venda identifica um único produto destinado à venda. Um produto pode aparecer em vários itens de venda ao longo do tempo. |
| **15. PRODUTO / INSUMO POSSUI LOTE** | PRODUTO / INSUMO **(0,N)** | LOTE **(1,1)** | Um produto ou insumo pode estar cadastrado sem lotes ou possuir vários. Cada lote pertence a um único produto ou insumo. |
| **16. LOTE REGISTRA MOVIMENTAÇÃO_ESTOQUE** | LOTE **(0,N)** | MOVIMENTAÇÃO_ESTOQUE **(1,1)** | Um lote pode possuir várias movimentações de entrada e saída. Cada movimentação de estoque afeta exatamente um lote. |
| **17. ITEM_COMPRA ORIGINA ENTRADA EM MOVIMENTAÇÃO_ESTOQUE** | ITEM_COMPRA **(0,N)** | MOVIMENTAÇÃO_ESTOQUE **(0,1)** | Um item de compra pode ainda não ter sido recebido ou originar várias entradas, conforme os recebimentos e lotes envolvidos. Cada entrada por compra está vinculada a um único item de compra. |
| **18. ITEM_VENDA ORIGINA SAÍDA EM MOVIMENTAÇÃO_ESTOQUE** | ITEM_VENDA **(0,N)** | MOVIMENTAÇÃO_ESTOQUE **(0,1)** | Um item de venda pode originar várias saídas quando envolver diferentes lotes. Cada saída por venda está vinculada a um único item de venda. |
| **19. AGENDAMENTO ORIGINA MOVIMENTAÇÃO_FINANCEIRA** | AGENDAMENTO **(0,1)** | MOVIMENTAÇÃO_FINANCEIRA **(0,1)** | Um agendamento ainda não pago não origina recebimento. Quando pago, origina uma única movimentação financeira de entrada, vinculada a esse agendamento. |
| **20. VENDA ORIGINA MOVIMENTAÇÃO_FINANCEIRA** | VENDA **(0,1)** | MOVIMENTAÇÃO_FINANCEIRA **(0,1)** | Uma venda ainda não paga não origina recebimento. Quando paga, origina uma única movimentação financeira de entrada, vinculada a essa venda. |
| **21. COMPRA ORIGINA MOVIMENTAÇÃO_FINANCEIRA** | COMPRA **(0,N)** | MOVIMENTAÇÃO_FINANCEIRA **(0,1)** | Uma compra pode ainda não ter sido paga ou originar várias saídas financeiras, conforme os desembolsos realizados. Cada saída por compra corresponde a uma única compra. |
| **22. REPASSE ORIGINA MOVIMENTAÇÃO_FINANCEIRA** | REPASSE **(1,1)** | MOVIMENTAÇÃO_FINANCEIRA **(0,1)** | Cada repasse realizado origina exatamente uma saída financeira. Uma movimentação financeira corresponde a, no máximo, um repasse. |
| **23. FECHAMENTO_CAIXA CONCILIA MOVIMENTAÇÃO_FINANCEIRA** | FECHAMENTO_CAIXA **(0,N)** | MOVIMENTAÇÃO_FINANCEIRA **(0,1)** | Um fechamento pode reunir nenhuma ou várias movimentações financeiras. Uma movimentação pode estar pendente de conciliação ou pertencer a um único fechamento. |
| **24. UNIDADE POSSUI FECHAMENTO_CAIXA** | UNIDADE **(0,N)** | FECHAMENTO_CAIXA **(1,1)** | A unidade pode possuir vários fechamentos de caixa ao longo do tempo. Cada fechamento pertence a uma única unidade. |

## Restrições e políticas organizacionais aplicadas ao modelo

As restrições abaixo complementam as cardinalidades do DER e descrevem condições que devem ser respeitadas nas operações da unidade.

| **Restrição ou política** | **Regra aplicada** | **Impacto no modelo** |
|---|---|---|
| **1. Gestão de uma única unidade** | O projeto contempla exclusivamente a Black Zone Celso 5065, sem compartilhamento de agendas ou operações com outras franquias. | UNIDADE representa o estabelecimento atendido pelo sistema. O escopo local deve ser respeitado nos cadastros e nas operações; a existência dessa entidade, por si só, não garante o isolamento dos dados. |
| **2. Habilitação do barbeiro** | O profissional responsável deve realizar todos os serviços escolhidos pelo cliente, inclusive os que compõem os pacotes. | O relacionamento EXECUTA associa BARBEIRO aos registros do tipo serviço avulso em SERVIÇO / PACOTE. Para verificar a compatibilidade com um pacote, devem ser considerados seus componentes no relacionamento CONTÉM. |
| **3. Um único barbeiro por atendimento** | Todos os procedimentos de um atendimento são realizados pelo mesmo profissional. | A regra permanece como restrição operacional. O DER adotado não possui ligação direta entre BARBEIRO e AGENDAMENTO; portanto, não representa a atribuição do profissional no momento da reserva. A ligação por COMISSÃO identifica o barbeiro remunerado após a conclusão e o pagamento. |
| **4. Pagamento único por atendimento** | Cada agendamento permite até um pagamento, utilizando apenas uma forma: Pix, crédito, débito ou dinheiro. Não é permitido dividir o pagamento entre modalidades. | Os atributos opcionais data_hora_pagamento, valor_pago e forma_pagamento permanecem em AGENDAMENTO. Quando o pagamento ocorre, seus dados devem ser preenchidos em conjunto. O recebimento origina uma única MOVIMENTAÇÃO_FINANCEIRA, correspondente ao mesmo pagamento. |
| **5. Funcionamento, escala e disponibilidade** | Os atendimentos devem começar e terminar entre 09h e 21h, de segunda-feira a sábado, respeitando os dias de trabalho, intervalos e folgas do profissional. Não pode haver sobreposição de atendimentos do mesmo barbeiro. | horário_funcionamento, em UNIDADE, e escala_trabalho, em BARBEIRO, representam os horários disponíveis. AGENDAMENTO registra data, hora_início e hora_fim. A validação individual da agenda depende da identificação do profissional reservado, cuja ausência no desenho está indicada no item 3. |
| **6. Registro de encaixes** | Clientes sem reserva podem ser atendidos quando houver disponibilidade, respeitando o funcionamento e a escala do profissional. | O atendimento é registrado em AGENDAMENTO com tipo_agendamento igual a encaixe e canal igual a presencial. |
| **7. Cancelamento com antecedência mínima** | O cancelamento pode ser solicitado pelo Trinks, WhatsApp ou presencialmente, com antecedência mínima de duas horas. Cada agendamento admite até um cancelamento. | data_hora_cancelamento e canal_cancelamento são atributos opcionais de AGENDAMENTO, preenchidos quando o cancelamento é aceito. O status passa para cancelado e o horário é liberado. Não existe entidade CANCELAMENTO separada. |
| **8. Faltas sem aviso** | Quando o cliente não comparece e não solicita cancelamento, o atendimento é registrado como falta. Não são aplicadas multas nem bloqueios automáticos. A recepcionista pode entrar em contato para remarcação. | O atributo status de AGENDAMENTO permite identificar a falta e diferenciá-la de um cancelamento. Agendamentos com falta não geram COMISSÃO. |
| **9. Composição e preço dos pacotes** | Cada pacote reúne dois ou mais serviços avulsos e possui preço próprio, que pode diferir da soma dos preços individuais. Um pacote não contém outro pacote. | SERVIÇO / PACOTE reúne as duas opções, diferenciadas pelo atributo tipo. CONTÉM representa a composição: pacote contém de dois a vários avulsos, e cada avulso pode integrar nenhum ou vários pacotes. O preço próprio é registrado em preço_atual. |
| **10. Aplicação dos preços dos cortes** | Os cortes seguem o preço cadastrado, a partir de R$ 50, com exceções de R$ 25 para crianças de até 12 anos e R$ 30 para adultos calvos. Essas condições não se estendem a serviços adicionais ou pacotes. | AGENDAMENTO registra categoria_preço_corte e valor_total_cobrado, preservando a categoria aplicada e o total cobrado no atendimento. SERVIÇO / PACOTE mantém os preços atuais do catálogo. |
| **11. Geração da comissão** | A comissão corresponde a 50% do valor efetivamente pago pelos serviços e pacotes realizados. Só é gerada quando o atendimento estiver concluído e pago. Produtos vendidos, agendamentos apenas marcados, cancelamentos e faltas não geram comissão. | AGENDAMENTO participa de GERA com cardinalidade (0,1), e COMISSÃO com (1,1). Cada comissão registra valor_base, percentual_aplicado e valor_comissão derivado, além de estar associada a um único barbeiro. |
| **12. Repasse das comissões** | Cada repasse quita uma ou mais comissões do mesmo barbeiro. Uma comissão não pode ser paga duas vezes. | REPASSE está associado a um único BARBEIRO e reúne uma ou mais COMISSÕES. Cada comissão pode estar pendente ou vinculada a um único repasse. O repasse realizado origina exatamente uma saída financeira. |
| **13. Controle do estoque por lote** | Entradas por compras e saídas por vendas ou consumo devem identificar o lote e a quantidade movimentada. A validade é acompanhada quando aplicável. | Cada LOTE pertence a um PRODUTO / INSUMO, e cada MOVIMENTAÇÃO_ESTOQUE afeta um único lote. As quantidades disponíveis são derivadas das entradas e saídas registradas. |
| **14. Origem das entradas e saídas de estoque** | Uma entrada por compra identifica o item recebido; uma saída por venda identifica o item vendido. Saídas por consumo nos atendimentos não são vinculadas a itens de compra ou venda. | ITEM_COMPRA e ITEM_VENDA podem originar várias movimentações, conforme os lotes envolvidos. Cada movimentação referencia, no máximo, um item de compra ou um item de venda, conforme sua finalidade, nunca ambos. A soma das movimentações deve corresponder à quantidade efetivamente recebida ou retirada. |
| **15. Origem das movimentações financeiras** | Cada entrada ou saída financeira deve possuir uma única origem identificada. | Cada MOVIMENTAÇÃO_FINANCEIRA está vinculada a exatamente uma das entidades: AGENDAMENTO, VENDA, COMPRA ou REPASSE. As ligações são mutuamente exclusivas: não é permitido registrar uma movimentação sem origem ou com várias origens. |
| **16. Fechamento e conciliação do caixa** | Ao final do expediente, o gerente confere os recebimentos e as saídas, incluindo repasses, e verifica eventuais diferenças antes de confirmar o saldo final. Uma movimentação não pode ser contabilizada em dois fechamentos. | FECHAMENTO_CAIXA pertence a uma única UNIDADE e reúne as movimentações conciliadas. Cada MOVIMENTAÇÃO_FINANCEIRA pode estar pendente ou associada a um único fechamento. conferência_por_forma registra os valores por modalidade de pagamento, e justificativa_diferença documenta as divergências quando existirem. |

---

## 7. Diagrama Entidade-Relacionamento (DER)

https://github.com/ads-mdl/MDL---Blackzone/blob/main/Blackzone-Der%20atualizado.jpeg


## 8. Justificativa Técnica

O DER possui **16 entidades e 24 relacionamentos**, abrangendo atendimentos, escalas, comissões, compras, vendas, estoque e fechamento de caixa. A divisão separa os cadastros das operações e permite acompanhar seu histórico.

### Entidades e atributos

| Entidade | Justificativa |
| :--- | :--- |
| **UNIDADE** | Centraliza os dados da barbearia e seus horários de funcionamento. |
| **CLIENTE** | Identifica os clientes em diferentes agendamentos, evitando a repetição dos dados cadastrais. |
| **BARBEIRO** | Registra os profissionais, suas características, escalas e os serviços que executam. |
| **SERVIÇO / PACOTE** | Mantém o catálogo de serviços e pacotes, diferenciados pelo atributo tipo. |
| **AGENDAMENTO** | Registra reservas e encaixes, horários, situação e os dados de pagamento e cancelamento. |
| **COMISSÃO** | Registra a remuneração gerada por um atendimento concluído e pago, com sua base de cálculo e percentual aplicado. |
| **REPASSE** | Registra a quitação de uma ou mais comissões do mesmo barbeiro. |
| **PRODUTO / INSUMO** | Reúne os itens vendidos e os materiais utilizados nos atendimentos, diferenciados pela finalidade. |
| **LOTE** | Identifica os lotes de produtos e insumos, permitindo acompanhar suas quantidades e validades. |
| **COMPRA** | Registra as compras, incluindo fornecedor, autorização e situação. |
| **ITEM_COMPRA** | Detalha os produtos ou insumos comprados, suas quantidades e preços unitários. |
| **VENDA** | Registra as vendas de produtos no balcão e os dados de pagamento. |
| **ITEM_VENDA** | Detalha os produtos vendidos, preservando as quantidades e os preços praticados. |
| **MOVIMENTAÇÃO_ESTOQUE** | Registra entradas e saídas por lote, permitindo acompanhar as alterações no estoque. |
| **MOVIMENTAÇÃO_FINANCEIRA** | Registra recebimentos e desembolsos originados de atendimentos, vendas, compras e repasses. |
| **FECHAMENTO_CAIXA** | Reúne a conferência das movimentações financeiras, dos saldos e das diferenças por forma de pagamento. |

Cada entidade possui um identificador próprio, como id_cliente e id_agendamento, para distinguir os registros.

### Relacionamentos e cardinalidades

Os 24 relacionamentos estão detalhados na seção **Relacionamentos Pertinentes**. Suas cardinalidades representam a participação mínima e máxima de cada entidade.

- **Participação opcional:** permite cadastrar informações antes de existirem operações relacionadas. Um cliente pode não possuir agendamentos, e um produto pode ainda não possuir lotes.
- **Participação obrigatória:** representa vínculos necessários, como cada agendamento pertencer a um cliente e cada item de compra pertencer a uma compra.
- **Comissão por agendamento:** AGENDAMENTO participa de GERA com **(0,1)** e COMISSÃO com **(1,1)**. A comissão só é gerada quando o atendimento estiver concluído e pago.
- **Composição dos pacotes:** CONTÉM é um autorrelacionamento de SERVIÇO / PACOTE. Cada pacote contém dois ou mais serviços avulsos, enquanto um avulso pode participar de nenhum ou vários pacotes. Esses papéis dependem do atributo tipo.
- **Quitação e conciliação:** cada comissão pode pertencer a um único repasse, e cada movimentação financeira pode integrar um único fechamento, evitando duplicidade.
- **Origem financeira:** cada movimentação possui exatamente uma origem entre agendamento, venda, compra ou repasse. Essa exclusividade complementa as cardinalidades do desenho.

### Decisões de modelagem

- **Serviços e pacotes na mesma entidade:** compartilham nome, descrição, duração e preço. O atributo tipo diferencia as opções, e CONTÉM registra a composição dos pacotes.

- **Preço praticado em INCLUI:** registra o valor cobrado por cada serviço ou pacote no agendamento, preservando o histórico quando o preço do catálogo muda. Os atributos valor_total_cobrado e valor_pago representam os valores do atendimento inteiro.

- **Pagamento e cancelamento dentro de AGENDAMENTO:** como cada agendamento admite até um pagamento e até um cancelamento, seus dados são atributos opcionais, preenchidos quando esses eventos ocorrem.

- **Funcionamento e escalas como atributos compostos e multivalorados:** horário_funcionamento representa a programação semanal da unidade; escala_trabalho registra dias, horários, intervalos e folgas dos barbeiros.

- **Comissão separada do repasse:** distingue o valor devido ao profissional de sua quitação, permitindo reunir várias comissões em um pagamento.

- **Compras e vendas separadas de seus itens:** permite registrar vários produtos na mesma operação, com quantidades e preços próprios, sem repetir os dados gerais da compra ou venda.

- **Produtos e insumos no mesmo cadastro:** compartilham identificação, unidade de medida e controle de estoque. A finalidade diferencia os itens comercializados dos materiais consumidos.

- **Lotes separados das movimentações:** LOTE identifica o conjunto de itens e sua validade; MOVIMENTAÇÃO_ESTOQUE registra cada entrada ou saída. Os saldos são calculados a partir dessas movimentações.

- **Movimentações financeiras separadas do fechamento:** permite registrar cada recebimento ou desembolso antes de sua conferência e conciliação no caixa.

- **Atributos derivados:** subtotais, totais de compras e vendas, quantidades disponíveis e valores de comissão são calculados a partir dos registros relacionados.

- **Responsável pelo atendimento:** um único barbeiro realiza todos os procedimentos, conforme a regra operacional. O DER adotado não registra a atribuição do profissional na reserva, pois não possui ligação direta entre BARBEIRO e AGENDAMENTO. COMISSÃO identifica o barbeiro remunerado após a conclusão e o pagamento.

- **Regras complementares:** o cancelamento com antecedência mínima de duas horas, os preços diferenciados, a ausência de sobreposição de horários e as condições para gerar comissão são descritos nas regras de negócio, pois não são expressos integralmente pelas cardinalidades.

O modelo conceitual apresenta entidades, atributos e relacionamentos. Chaves estrangeiras e estruturas de implementação serão definidas na modelagem lógica.
- ## 9. Uso de Inteligência Artificial

O grupo utilizou o **ChatGPT** para auxiliar na compreensão do conteúdo, na elaboração e revisão do DER e na organização do README. Os principais usos estão descritos abaixo.

### 9.1 Compreensão do conteúdo e preparação da entrevista

| Item | Registro |
| :--- | :--- |
| **Ferramenta e etapa** | ChatGPT, na leitura dos materiais da disciplina e na preparação das perguntas para a pesquisa de campo. |
| **Motivação** | Entender os conceitos de modelagem e organizar as informações que precisavam ser levantadas na barbearia. |
| **Prompts utilizados** | “Analise os PDFs da disciplina e explique os conceitos necessários para elaborar o DER.”; “Explique o significado das cardinalidades (0,N), (1,N), (1,1) e (0,1), com exemplos.”; “Elabore um roteiro de entrevista para levantar as informações necessárias à construção do DER da barbearia.” |
| **Resposta recebida** | A IA explicou os conceitos de entidades, relacionamentos e cardinalidades com exemplos e sugeriu perguntas para a entrevista sobre a rotina de agendamentos, serviços, pagamentos e cancelamentos da barbearia. |
| **Fontes consultadas e verificadas** | Foram fornecidos à ferramenta os slides da disciplina e o modelo de entrega do professor. O roteiro gerado serviu como preparação e não como evidência de uma entrevista realizada. |
| **Trechos rejeitados ou corrigidos** | O escopo foi delimitado a uma única unidade. Também foi esclarecido que um barbeiro realiza todo o atendimento e que não há divisão entre formas de pagamento. |
| **Justificativa da escolha final** | Foram aproveitadas as explicações e perguntas relacionadas aos processos incluídos no projeto. |
| **Reflexão crítica** | A IA ajuda a organizar perguntas, mas não conhece a rotina da unidade e não substitui a pesquisa de campo. |


### 9.2 Organização e revisão do README

| Item | Registro |
| :--- | :--- |
| **Ferramenta e etapa** | ChatGPT, na redação da caracterização da organização, dos processos, dos requisitos, das regras de negócio e da justificativa técnica. |
| **Motivação** | Organizar o conteúdo em Markdown e tornar as explicações mais claras para leitura e apresentação. |
| **Prompts utilizados** | “Organize o conteúdo em Markdown para o README, com linguagem clara e objetiva. Explique as decisões de modelagem e mantenha o texto coerente com o DER e com as informações fornecidas sobre a barbearia.” |
| **Resposta recebida** | Sugestões de textos e tabelas para o README, com explicações sobre os processos da barbearia e as decisões do DER. |
| **Fontes consultadas e verificadas** | Foram usadas as informações fornecidas pelo grupo, como os sete barbeiros e a média de doze atendimentos por barbeiro por dia. Esses dados não foram obtidos por pesquisa independente da IA. |
| **Trechos rejeitados ou corrigidos** | Foram reduzidos textos considerados artificiais ou repetitivos. O nome do gerente foi corrigido de Pedro para Dante, e foi esclarecido que os preços a partir de R$ 50,00 se referem aos serviços avulsos. A sugestão de regra sobre validade promocional dos pacotes foi descartada por não estar confirmada. |
| **Justificativa da escolha final** | Foram priorizados textos diretos e relacionados ao escopo do projeto, com ajustes para acompanhar as mudanças no DER. |
| **Reflexão crítica** | A IA pode apresentar suposições como se fossem regras da organização. Por isso, cada sugestão precisa ser comparada com as informações da pesquisa de campo antes de entrar na versão final. |
