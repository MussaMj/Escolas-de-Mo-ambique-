# Project Background

Este projecto visa analisar as condições de infra-estrutura das escolas em Moçambique, a partir de um conjunto de dados com informações sobre água, saneamento, energia e distribuição por província.

A análise não busca resolver directamente um problema específico, mas sim contar a história da realidade das escolas moçambicanas, destacando desigualdades regionais e factores que impactam o acesso e a qualidade da educação.

Do ponto de vista de um analista de dados, o projecto foi conduzido para: 

 - Explorar e limpar os dados, removendo duplicatas e valores inconsistentes.
 - Criar métricas que refletem acesso à água potável, saneamento funcional e cobertura energética.
 - Produzir visualizações no Tableau para tornar os resultados intuitivos e fáceis de interpretar.

**Principais áreas de insights e reflexão:**

 - Distribuição nacional de escolas por província.
 - Percentual de escolas com acesso à água potável e saneamento básico.
 - Cobertura energética e principais fontes de energia.
 - Diferenças regionais que influenciam directamente o dia-a-dia dos alunos e professores.
   
As queries SQL utilizadas para exploração podem ser encontradas aqui [link].

O dashboard interactivo em Tableau que ilustra os resultados pode ser acessado aqui [link].


# Data Structure & Initial Checks

A base de dados principal utilizada para esta análise consiste num arquivo CSV do Excel, contendo 12.901 registos. A seguir está a descrição do conteúdo das colunas do arquivo:

 - Escolas: informações gerais sobre as escolas (Codigo da escola, nome, província, distrito , localização).
 - Infra-estruturas: dados sobre condições físicas das escolas (acesso a água, latrinas e casas de banho, acesso à energia, etc.).
 - Água e Saneamento: cobertura de água potável e saneamento por escola/província.
 - Distribuição Regional: número total de escolas por província, incluindo dados comparativos.

[Entity Relationship Diagram here]



# Executive Summary  

### Overview of Findings  

A análise dos dados educacionais de Moçambique revelou padrões importantes relacionados à distribuição de escolas, acesso à água potável, saneamento e energia.  
Os resultados evidenciam disparidades regionais marcantes que podem impactar directamente o aprendizado, a saúde e o bem-estar dos alunos.  

**Principais insights identificados:**  
1. **Distribuição de escolas:**  
   - A zona norte tem o total de 4237 escolas, com nampula com a maior concentracao de escolas com o total de 2334 e cabo delgado com o mminimo de 923 escolas.  
   - A zona centro e a zona com maior numero de escolas com o total de 6287 escolas no total, com a provincia do Nampula de destacando com o maior numero de escolas com 3273 no total e o minimo com 881 na provincia de Manica
   - A zona sul tem o total de 2237 escolas no total, com Inhambane com a maior concentracao de 920 escolas e maputo com 514._  

2. **Acesso à água potável:**  
   - O Norte apresenta os piores indicadores (20-30% de cobertura).  
   - O Centro mostra uma situação mista, com variações entre 25% e 53%.  
   - O Sul apresenta melhores condições, especialmente na capital (48-66%).  
   - a zona sul contem o menor numero de escolas comparando com a zona centro e norte porem e a zona que tem mais acesso a agua potavel._  

3. **Saneamento escolar:**  
   - A proporção de escolas com latrinas e casas de banho funcionais varia fortemente entre as províncias.  
   - as provincias de inhambane e cabo delgado tem uma baixa percentagem de saneamento funcional sendo elas 12% e 23% respectivamente
   - a provincia de inhambane contem 920 escolas mas apenas 12% do seu saneamento e funcional
   - a provincia de cabo delgado contem 923 escolas mas apenas 23% dessas escolas tem um saneamento funcional_  

4. **Energia eléctrica nas escolas:**  
   - As províncias urbanas apresentam maior cobertura energética, enquanto muitas escolas em zonas rurais permanecem sem acesso.  
   - 99.2% das escolas da cidade de maputo contem energia nas escolas e maputo contem 45.9%. A cidade de zambezia contem um total de 7.5% de escolas com energia porem e a provincia com o maior numero de escolas em todo mocambique (3273) _  

### Implicações  

Esses resultados reforçam a necessidade de **políticas públicas direccionadas**, com foco em reduzir desigualdades regionais e melhorar a infra-estrutura básica das escolas.  
Investimentos em água potável, saneamento e energia são fundamentais para:  
- Garantir condições adequadas de saúde e segurança.  
- Melhorar a qualidade do ensino e a frequência escolar.  
- Diminuir disparidades entre áreas urbanas e rurais.  

 

### Visual Summary  

_[Inserir aqui: gráfico ou snapshot de dashboard com visão geral nacional — ex: nº total de escolas, % com água potável, % com saneamento funcional, % com energia]._  




# Insights Deep Dive  

### Category 1: Distribuição Nacional de Escolas  

* **Main insight 1.** A análise mostra que Moçambique conta com um total de **12,993 escolas**. A província da **Zambézia concentra 3,273 escolas**, enquanto a **Cidade de Maputo apresenta apenas 514**.  
  _[Adicionar observações sobre a densidade escolar em relação à população ou ao território]._  

* **Main insight 2.** Existe uma clara desigualdade regional: o **Centro e o Norte concentram a maioria das escolas**, mas também enfrentam maiores problemas de infra-estrutura.  
  _[Adicionar percentuais de distribuição por região]._   

* **Main insight 3.** O contraste entre áreas urbanas e rurais é evidente, sendo as capitais provinciais as que apresentam melhor cobertura de serviços educacionais.  
  _[Adicionar aqui correlações com indicadores de água, saneamento ou energia]._  

[📊 Inserir visualização aqui: mapa coroplético + gráfico de barras mostrando nº de escolas por província]  


### Category 2: Água e Saneamento  

* **Main insight 1.** Apenas uma fracção das escolas em Moçambique possui **acesso à água potável**. Em algumas províncias do Norte, a cobertura fica entre **20% e 30%**, revelando fortes desigualdades regionais.  
  _[Adicionar números exactos da análise para cada província]._  

* **Main insight 2.** As províncias do Centro apresentam **situação mista**, com algumas alcançando cerca de **53% de cobertura de água potável**, enquanto outras ficam bem abaixo desse valor.  
  _[Adicionar observações sobre províncias mais críticas]._  

* **Main insight 3.** O saneamento escolar (latrinas, urinóis e casas de banho) mostra-se **altamente precário** em várias regiões, com muitas escolas declarando não possuir estruturas funcionais.  
  _[Adicionar percentuais de escolas sem saneamento mínimo]._  

* **Main insight 4.** A falta de água potável e de saneamento funcional impacta directamente a **saúde, higiene e permanência das crianças nas escolas**, ampliando desigualdades sociais e regionais.  
  _[Adicionar achados de impacto no dia-a-dia das crianças]._  

[ Inserir visualizações aqui:  
- Gráfico de barras (% escolas com água potável por província)  
- Mapa coroplético mostrando distribuição de água potável  
- Gráfico de barras empilhadas (saneamento funcional vs não funcional)  
]  



### Category 3: Energia  

* **Main insight 1.** Uma parte considerável das escolas ainda **não possui acesso à energia elétrica**, especialmente em províncias rurais como **Niassa e Cabo Delgado**, evidenciando desigualdades regionais.  
  _[Adicionar percentuais de escolas com e sem energia]._  

* **Main insight 2.** Entre as escolas que têm acesso, as principais fontes de energia são **rede elétrica nacional** e **geradores**, com algumas escolas recorrendo a soluções alternativas como **painéis solares**.  
  _[Adicionar distribuição por tipo de energia]._  

* **Main insight 3.** As províncias do Sul, em especial **Maputo Cidade**, apresentam a maior cobertura energética, ultrapassando significativamente os níveis do Norte e Centro.  
  _[Adicionar números comparativos]._  

* **Main insight 4.** A ausência de energia elétrica limita atividades escolares como **uso de equipamentos tecnológicos, iluminação para turnos noturnos** e **acesso a ferramentas pedagógicas modernas**, impactando diretamente a qualidade do ensino.  

[📊 Inserir visualizações aqui:  
- Gráfico de barras mostrando % de escolas com energia por província  
- Gráfico de pizza ou barras para distribuição das fontes de energia  
]  

# Recommendations  

Based on the insights and findings above, we would recommend the **Ministério da Educação, gestores escolares e parceiros de desenvolvimento** to consider the following:  

* **Distribuição desigual de escolas.** Concentrar novos investimentos em províncias como **Zambézia, Nampula e Niassa**, que têm elevada quantidade de escolas mas infraestrutura mais frágil.  

* **Baixo acesso à água potável.** Implementar projetos de **abastecimento sustentável de água** em escolas rurais e priorizar sistemas de captação (poços, furos, cisternas) onde a rede pública não chega.  

* **Déficit de saneamento.** Garantir que todas as novas escolas sejam construídas com **latrinas ou casas de banho funcionais**, e criar programas de reabilitação para escolas já existentes sem saneamento.  

* **Cobertura energética limitada.** Expandir o acesso à energia escolar com soluções **fora da rede (ex.: solar)** em áreas rurais, reduzindo desigualdades entre províncias urbanas e rurais.  

* **Infraestrutura degradada.** Criar um plano nacional de **manutenção preventiva** para escolas, com inspeções periódicas e fundos descentralizados para reparos básicos.  

  


# Assumptions and Caveats

Throughout the analysis, several assumptions and caveats were made to address challenges with the data. These are documented below:

* **Assumption 1**: (ex: missing country records were assumed to be US customers, and were re-coded as such).  
* **Assumption 2**: (ex: data for December 2021 was missing — imputed using a combination of historical trends and December 2020 data).  
* **Assumption 3**: (ex: 3% of the refund date column contained invalid dates, which were excluded from the analysis).  

---

### Additional Notes (to be updated as project evolves):
- **Assumption 4**: ...
- **Assumption 5**: ...
- **Caveat 1**: ...
- **Caveat 2**: ...

