SELECT * FROM EscolasMZ.`cleaned escolas de moz - sheet1`;

/*Quantas escolas existem em Moçambique e como estão distribuídas pelas províncias?*/
SELECT Provincia, COUNT(NomeEscola) AS TotalEscolas
FROM EscolasMZ.`cleaned escolas de moz - sheet1`
GROUP BY Provincia

UNION ALL

SELECT 'Total Moçambique' AS Provincia, COUNT(NomeEscola) AS TotalEscolas
FROM EscolasMZ.`cleaned escolas de moz - sheet1`;

/*Quantas escolas têm acesso à água potável e condições mínimas de saneamento?*/
SELECT 
    Provincia,
    COUNT(*) AS TotalEscolas,
    SUM(CASE WHEN QualidadeAgua = 'potável' THEN 1 ELSE 0 END) AS EscolasComAguaPotavel,
    SUM(CASE WHEN EstadoLatrina IN ('bom', 'razoavel') 
              OR EstadoUrino IN ('bom', 'razoavel') 
             THEN 1 ELSE 0 END) AS EscolasComSaneamento,
    ROUND(
        SUM(CASE 
                WHEN QualidadeAgua = 'potável' 
                     AND (EstadoLatrina IN ('bom','razoavel') 
                          OR EstadoUrino IN ('bom','razoavel')) 
                THEN 1 ELSE 0 
            END) / COUNT(*) * 100, 2
    ) AS PercentualComAguaESaneamento
FROM EscolasMZ.`cleaned escolas de moz - sheet1`
GROUP BY Provincia;

/*Qual % de escolas com acesso à água em cada província? E a qualidade?*/
/* Qual % de escolas com acesso à água em cada província? */
SELECT 
    Provincia,
    ROUND(100.0 * SUM(CASE WHEN TemAgua = 'sim' THEN 1 ELSE 0 END) / COUNT(*), 2) AS PercEscolasComAgua
FROM EscolasMZ.`cleaned escolas de moz - sheet1`
GROUP BY Provincia;

/* Qual % de escolas com acesso à água potável em cada província? */
SELECT 
    Provincia,
    ROUND(100.0 * SUM(CASE WHEN TemAgua = 'Sim' AND QualidadeAgua = 'Potável' THEN 1 ELSE 0 END) / COUNT(*), 2) AS PercAguaPotavel
FROM EscolasMZ.`cleaned escolas de moz - sheet1`
GROUP BY Provincia;

/* Escolas sem latrinas e casas de banho funcionais */
SELECT 
    Provincia,
    COUNT(*) AS TotalEscolas,
    SUM(CASE WHEN (TotalLatrina = 0 OR EstadoLatrina = 'Mau') 
              AND (TotalCB = 0 OR CBFunci = 0) THEN 1 ELSE 0 END) AS EscolasSemSaneamento,
    ROUND(
        100.0 * SUM(CASE WHEN (TotalLatrina = 0 OR EstadoLatrina = 'Mau') 
                          AND (TotalCB = 0 OR CBFunci = 0) THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS PercSemSaneamento
FROM EscolasMZ.`cleaned escolas de moz - sheet1`
GROUP BY Provincia
ORDER BY PercSemSaneamento DESC;

/* Comparação de saneamento por província */
SELECT 
    Provincia,
    SUM(CASE WHEN (EstadoLatrina IN ('Bom','Razoavel') OR CBFunci > 0) THEN 1 ELSE 0 END) AS EscolasComSaneamento,
    SUM(CASE WHEN (EstadoLatrina = 'Mau' OR CBFunci = 0) THEN 1 ELSE 0 END) AS EscolasSemSaneamento,
    COUNT(*) AS TotalEscolas,
    ROUND(100.0 * SUM(CASE WHEN (EstadoLatrina IN ('Bom','Razoavel') OR CBFunci > 0) THEN 1 ELSE 0 END) / COUNT(*), 2) AS PercComSaneamento,
    ROUND(100.0 * SUM(CASE WHEN (EstadoLatrina = 'Mau' OR CBFunci = 0) THEN 1 ELSE 0 END) / COUNT(*), 2) AS PercSemSaneamento
FROM EscolasMZ.`cleaned escolas de moz - sheet1`
GROUP BY Provincia
ORDER BY PercComSaneamento desc;

/*Quantas escolas têm acesso à energia elétrica?*/
Select
	Provincia,
	Count(NomeEscola)
FROM EscolasMZ.`cleaned escolas de moz - sheet1`
where TemEnergia = 'sim'
group by Provincia;

/* Qual é a principal fonte de energia em cada província? */
SELECT 
    Provincia,
    TipoEnergia,
    COUNT(*) AS TotalEscolas
FROM EscolasMZ.`cleaned escolas de moz - sheet1`
WHERE TemEnergia = 'Sim'
GROUP BY Provincia, TipoEnergia
HAVING COUNT(*) = (
    SELECT MAX(Cnt)
    FROM (
        SELECT COUNT(*) AS Cnt
        FROM EscolasMZ.`cleaned escolas de moz - sheet1` e2
        WHERE e2.Provincia = EscolasMZ.`cleaned escolas de moz - sheet1`.Provincia
          AND e2.TemEnergia = 'Sim'
        GROUP BY e2.TipoEnergia
    ) AS Sub
);
