# Projetos de Data Analytics

Relatórios e dashboards construídos em **Power BI** e **Tableau**, cobrindo
modelagem dimensional, medidas DAX, navegação por bookmarks e design de
visualização.

`Power BI` `DAX` `Tableau` `SQL Server` `Modelagem Dimensional`

---

## Power BI

Os arquivos `.pbix` estão versionados: além de ver o resultado, é possível abrir
no Power BI Desktop e inspecionar o modelo, os relacionamentos e as medidas.

### [Vendas e Comissão](Relaorio%20Vendas%20comiss%C3%A3o.pbix)

Relatório de três páginas sobre uma operação de varejo de vestuário, com modelo
em estrela: uma tabela fato e nove dimensões, mais tabela dedicada de medidas.

| Página | Conteúdo |
|---|---|
| Clientes | Distribuição por gênero, cruzamento com profissão, faturamento por produto e por cidade, comparativo 2012 × 2013 |
| Produtos | Ranking de faturamento bruto (R$ 1.034.931 no total), faturamento médio por cidade, distribuição por loja, evolução por UF |
| Departamento | Quebra Adulto / Infantil / Adolescente, com matriz cruzando gênero, departamento e produto |

A separação entre **faturamento bruto e líquido** percorre todo o relatório: a
comissão é modelada como medida DAX, permitindo comparar receita antes e depois
da remuneração da venda.

**Modelo:** `fvendas` · `dBairro` `dCidade` `dcliente` `dDepartamento` `dEstado`
`dGenero` `dLoja` `dproduto` `dProfissão` · `medidas`

---

### [Automóveis](Relat%C3%B3rio%20autom%C3%B3veis.pbix)

Cinco páginas com **menu de navegação por bookmarks** — a página inicial não
contém gráficos, apenas botões que levam a cada análise, com retorno ao menu em
todas as telas.

Os mesmos cinco indicadores acompanham todas as páginas (total de R$ 2,99 bi,
média de R$ 104,7 mil, máximo, mínimo e 29 mil unidades), mantendo a referência
constante durante a navegação.

| Página | Conteúdo |
|---|---|
| Automóvel | Total e quantidade por modelo, ticket médio em funil percentual |
| Cliente | Ranking de faturamento por cliente |
| Estado | Mapa coroplético do Brasil, segmentação por mês, quantidade por cor |
| Vendedor | Matriz com formatação condicional em três camadas: ícones de tendência, escala de cores e barras de dados |

Um achado que a combinação de medidas revela: o modelo mais vendido em volume
tem o **menor ticket médio** do portfólio (R$ 77,1 mil contra R$ 212,74 mil do
primeiro colocado). Olhar só o faturamento total esconderia isso.

**Modelo:** `fvendas` · `dAutomovel` `dCliente` `dCor` `dEstado` `dVendedor` · `Medidas`

---

### [Produtos](Relatorio%20Produtos.pbix)

Dashboard de página única com tema escuro, desenhado para leitura executiva
rápida em vez de navegação por drill.

Cartões de KPI com faturamento médio (R$ 31.068,98), total (R$ 7.549.761,93) e
uma classificação de estoque em faixas — **21 itens em nível baixo contra 222 em
nível normal** —, calculada por medida DAX com lógica condicional.

Painel lateral com quatro segmentações encadeadas (cidade, marca, país de origem
e produto) filtrando ranking de marcas, faturamento por país e total por cidade.

**Modelo:** `Vendas` · `dCidade` `dMarca` `dPais` `dProduto` · `medidas`

---

### [Comparativo Rio de Janeiro × São Paulo](Relatorio%20RJxSP.pbix)

Relatório de comparação regional com **página de navegação personalizada**: a
tela inicial apresenta os dois estados e botões por linha de produto, levando ao
consolidado correspondente.

A página de destino traz mapa da região metropolitana, cartões de total e média
de vendas, contagem por produto e cidade, e combinado de total com média em
eixos independentes.

**Modelo:** `Vendas_RioxSP` · `Vendas_SaoPaulo` · `VendasRJ`

---

### [Teste Vendas](Teste%20vendas.pbix) + [consultas SQL](Teste%20vendas.sql)

Teste técnico entregue em duas frentes: as consultas em SQL Server e o relatório
visual sobre a mesma base.

**As consultas** respondem a duas perguntas de negócio:

1. *Quais clientes nunca compraram?* — base de reativação para o time de CRM,
   resolvida com subconsulta de exclusão sobre a tabela de vendas.
2. *Quais endereços concentram mais compras?* — insumo para campanhas
   regionalizadas, com `HAVING` filtrando apenas as localidades recorrentes.

**O relatório** traz seis indicadores (valor total, quantidade, ticket médio,
valor médio por produto, primeira e última venda), matriz cliente × produto e
dois gráficos de proporção lado a lado — **participação em receita contra
participação em volume**. A comparação mostra que o produto líder em unidades
não é o líder em faturamento.

**Modelo:** `tabela vendas` · `tabela clientes` · `dPrdutos`

---

## Tableau

Dashboards publicados no Tableau Public, com acesso direto pelo navegador.

| Dashboard | Descrição |
|---|---|
| [Construindo Visualizações](https://public.tableau.com/app/profile/rafael.cardoso6074/viz/Atividade-ConstruindoVisualizaes/Cascata) | Gráfico de cascata e composição de visualizações |
| [Trabalho Final — SARESP](https://public.tableau.com/app/profile/rafael.cardoso6074/viz/TrabalhoMBA-Saresp/VisoGeral) | Análise de desempenho escolar a partir da base do SARESP |

Todos os dashboards: [perfil no Tableau Public](https://public.tableau.com/app/profile/rafael.cardoso6074/vizzes)

---

## Como abrir

Os arquivos `.pbix` exigem o [Power BI Desktop](https://powerbi.microsoft.com/desktop/),
gratuito para Windows. Baixe o arquivo e abra — os dados estão embutidos no
modelo, sem necessidade de conexão externa.

---

**Rafael Cardoso Nascimento** · [GitHub](https://github.com/RafaelCardoso140701)
