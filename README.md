# Contexto do projeto

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

   
As queries SQL utilizadas para exploração podem ser encontradas aqui [link].


# Estrutura de Dados e Verificações Iniciais

A base de dados principal utilizada para esta análise consiste num arquivo CSV do Excel, contendo 12.901 registos. A seguir está a descrição do conteúdo das colunas do arquivo:

 - Escolas: informações gerais sobre as escolas (Codigo da escola, nome, província, distrito, localização).
 - Infra-estruturas: dados sobre condições físicas das escolas (acesso a água, latrinas e casas de banho, acesso à energia, etc.).
 - Água e Saneamento: cobertura de água potável e saneamento por escola/província.
 - Distribuição Regional: número total de escolas por província, incluindo dados comparativos.

# Resumo executivo  

### Visão geral das conclusões  

A análise dos dados educacionais de Moçambique revelou padrões importantes relacionados à distribuição de escolas, acesso à água potável, saneamento e energia.  
Os resultados evidenciam disparidades regionais marcantes que podem impactar directamente o aprendizado, a saúde e o bem-estar dos alunos.  

**Principais insights identificados:**  

1. **Distribuição de Escolas por Região:**  
- **Zona Norte:** Conta com **4,237 escolas**. A província de **Nampula lidera** com **2,334 escolas**, enquanto **Cabo Delgado apresenta o menor número**, com **923 escolas**.  
- **Zona Centro:** É a região com **maior concentração de escolas**, totalizando **6,287 instituições**. A **Zambézia destaca-se** com **3,273 escolas**, enquanto **Manica apresenta o menor valor**, com **881 escolas**.  
- **Zona Sul:** Registra um total de **2,237 escolas**. A província de **Inhambane possui o maior número**, com **920 escolas**, e a **Cidade de Maputo aparece na última posição**, com **514 escolas**.  


2. **Acesso à Água Potável:**  
- **Zona Norte:** Apresenta os piores indicadores, com apenas **20% a 30% de cobertura**.  
- **Zona Centro:** Situação heterogênea, variando entre **25% e 53%** de cobertura.  
- **Zona Sul:** Apesar de ter **menos escolas em comparação ao Norte e Centro**, é a região com **melhores condições de acesso à água potável**, variando entre **48% e 66%**, com destaque para a capital.  

3. **Saneamento Escolar:**  
- A disponibilidade de **latrinas e casas de banho funcionais** varia significativamente entre províncias.  
- **Inhambane:** Possui **920 escolas**, mas apenas **12%** delas contam com saneamento funcional.  
- **Cabo Delgado:** Conta com **923 escolas**, das quais apenas **23%** têm saneamento funcional.  

4. **Energia Eléctrica nas Escolas:**  
- As **províncias urbanas** apresentam índices muito mais elevados de cobertura energética, enquanto grande parte das **escolas rurais permanece sem acesso**.  
- Na **Cidade de Maputo**, **99,2% das escolas** têm acesso à energia.  
- Na **Província de Maputo**, a cobertura é bem mais baixa, com apenas **45,9% das escolas** com energia.  
- A **Zambézia**, apesar de concentrar o maior número de escolas em Moçambique (**3.273**), apresenta apenas **7,5%** de cobertura energética.  

### Implicações  

Esses resultados reforçam a necessidade de **políticas públicas direcionadas** para reduzir as desigualdades regionais e melhorar a infraestrutura básica das escolas.  
Investimentos em **água potável, saneamento e energia** são fundamentais para:  
- Garantir condições adequadas de **saúde e segurança**;  
- Melhorar a **qualidade do ensino** e a **frequência escolar**;  
- Reduzir as disparidades entre **áreas urbanas e rurais**.  



### Resumo visual   
![image-alt](https://github.com/MussaMj/Escolas-de-Mo-ambique-/blob/main/imagens/dashboard3.0.png)



# Análise aprofundada  

### Categoria 1: Distribuição Nacional de Escolas  

* **Main insight 1.** A análise mostra que Moçambique conta com um total de **12,993 escolas**. A província da **Zambézia concentra 3,273 escolas**, enquanto a **Cidade de Maputo apresenta apenas 514**. Essa distribuição evidencia uma **desigualdade regional significativa**, já que o **Centro e o Norte concentram a maioria das escolas**, mas também enfrentam maiores problemas de infra-estrutura.

<p align="center">
  <img src="https://github.com/MussaMj/Escolas-de-Mo-ambique-/blob/main/imagens/nr%20de%20escolas.png" alt="Distribuição de Escolas" width="1000">
</p>


### Categoria 2: Água e Saneamento  

* **Principais conclusões 1.** Apenas uma fracção das escolas em Moçambique possui **acesso à água potável**. Em algumas províncias do Norte, a cobertura fica entre **20% e 30%**, revelando fortes desigualdades regionais.
  
* **Principais conclusões 2.** As províncias do Centro apresentam **situação mista**, com algumas alcançando cerca de **53% de cobertura de água potável**, enquanto outras ficam bem abaixo desse valor.

  
<p align="center">
  <img src="https://github.com/MussaMj/Escolas-de-Mo-ambique-/blob/main/imagens/%25%20qualidade%20de%20agua.png" alt="Qualidade da Água" width="900">
</p>



* **Principais conclusões 3.** O gráfico revela disparidades significativas entre províncias tanto em termos de quantidade total de infraestrutura de saneamento quanto na proporção de estruturas funcionais versus não funcionais, sugerindo diferentes níveis de desenvolvimento e manutenção da infraestrutura sanitária no país.


  <p align="center">
  <img src="https://github.com/MussaMj/Escolas-de-Mo-ambique-/blob/main/imagens/saneamento%20funcio%20e%20Nfuncio.png" alt="Saneamento Funcional e Não Funcional" width="550">
</p>

### Categoria 3: Energia  

* **Principais conclusões 1.** Uma parte considerável das escolas ainda **não possui acesso à energia elétrica**, como **Zambézia e Tete**, evidenciando desigualdades regionais.  


   <p align="center">
  <img src="https://github.com/MussaMj/Escolas-de-Mo-ambique-/blob/main/imagens/Sheet%208.png" alt="Escolas com Energia" width="700">
</p>


* **Principais conclusões 2.** Entre as escolas que têm acesso à energia, as principais fontes são a **rede pública** e, em menor escala temos os **geradores**.  



<p align="center">
  <img src="https://github.com/MussaMj/Escolas-de-Mo-ambique-/blob/main/imagens/principal%20fonte%20de%20energia.png" height="600" width ="200">
</p>

  
* **Principais conclusões 3.** As províncias do Sul, em especial **Maputo Cidade**, apresentam a maior cobertura energética, ultrapassando significativamente os níveis do Norte e Centro.  


  <p align="center">
  <img src="https://github.com/MussaMj/Escolas-de-Mo-ambique-/blob/main/imagens/escolas%20com%20energia%20%25.png" width="600">
</p>


* **Principais conclusões 4.** A ausência de energia elétrica limita atividades escolares como **uso de equipamentos tecnológicos, iluminação para turnos noturnos** e **acesso a ferramentas pedagógicas modernas**, impactando diretamente a qualidade do ensino.  
 


# Recomendações  

Com base nas conclusões e resultados acima, recomenda-se ao **Ministério da Educação, gestores escolares e parceiros de desenvolvimento** que considerem o seguinte:  

* **Distribuição desigual de escolas.** Concentrar novos investimentos em províncias como **Zambézia, Nampula e Niassa**, que têm elevada quantidade de escolas mas infraestrutura mais frágil.  

* **Baixo acesso à água potável.** Implementar projetos de **abastecimento sustentável de água** em escolas rurais e priorizar sistemas de captação (poços, furos, cisternas) onde a rede pública não chega.  

* **Déficit de saneamento.** Garantir que todas as novas escolas sejam construídas com **latrinas ou casas de banho funcionais**, e criar programas de reabilitação para escolas já existentes sem saneamento.  

* **Cobertura energética limitada.** Expandir o acesso à energia escolar com soluções **fora da rede (ex.: solar)** em áreas rurais, reduzindo desigualdades entre províncias urbanas e rurais.  

* **Infraestrutura degradada.** Criar um plano nacional de **manutenção preventiva** para escolas, com inspeções periódicas e fundos descentralizados para reparos básicos.  

## Fontes de dados

The data used in this project was obtained from Kutiva  
- Link: [(https://data.humdata.org/dataset/mozambique-school-data#:~:text=Mozambique_Rede,-Escolar_WiS_School)]  
- Modified: 30 November 2022  
- Formato: CSV  


