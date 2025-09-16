# Project Background

Este projeto tem como objetivo analisar as condições de infraestrutura das escolas em Moçambique, a partir de um conjunto de dados com informações sobre água, saneamento, energia e distribuição por província.

A análise não busca resolver diretamente um problema específico, mas sim contar a história da realidade das escolas moçambicanas, destacando desigualdades regionais e fatores que impactam o acesso e a qualidade da educação.

Do ponto de vista de um analista de dados, o projeto foi conduzido para: 

 - Explorar e limpar os dados, removendo duplicatas e valores inconsistentes.
 - Criar métricas que refletem acesso à água potável, saneamento funcional e cobertura energética.
 - Produzir visualizações no Tableau para tornar os resultados intuitivos e fáceis de interpretar.

Principais áreas de insights e reflexão:

 - Distribuição nacional de escolas por província.
 - Percentual de escolas com acesso à água potável e saneamento básico.
 - Cobertura energética e principais fontes de energia.
 - Diferenças regionais que influenciam diretamente o dia a dia dos alunos e professores.
   
As queries SQL utilizadas para exploração podem ser encontradas aqui [link].

O dashboard interativo em Tableau que ilustra os resultados pode ser acessado aqui [link].



# Data Structure & Initial Checks

A base de dados principal utilizada para esta análise contém X tabelas com um total de Y registos. A seguir está a descrição de cada uma:

 - Escolas: informações gerais sobre as escolas (ID, nome, província, localização, nível de ensino).
 - Infraestruturas: dados sobre condições físicas das escolas (salas, latrinas, acesso à energia, etc.).
 - Água e Saneamento: cobertura de água potável e saneamento por escola/província.
 - Distribuição Regional: número total de escolas por província, incluindo dados comparativos.

[Entity Relationship Diagram here]



# Executive Summary

### Overview of Findings

Explain the overarching findings, trends, and themes in 2-3 sentences here. This section should address the question: "If a stakeholder were to take away 3 main insights from your project, what are the most important things they should know?" You can put yourself in the shoes of a specific stakeholder - for example, a marketing manager or finance director - to think creatively about this section.

[Visualization, including a graph of overall trends or snapshot of a dashboard]



# Insights Deep Dive
### Category 1:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 1]


### Category 2:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 2]


### Category 3:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 3]


### Category 4:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 4]



# Recommendations:

Based on the insights and findings above, we would recommend the [stakeholder team] to consider the following: 

* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  


# Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Assumption 1 (ex: missing country records were for customers based in the US, and were re-coded to be US citizens)
  
* Assumption 1 (ex: data for December 2021 was missing - this was imputed using a combination of historical trends and December 2020 data)
  
* Assumption 1 (ex: because 3% of the refund date column contained non-sensical dates, these were excluded from the analysis)
