SELECT banda.nombreBanda, m.nombreMiembro 
FROM Banda banda 
JOIN Miembro m ON banda.idBanda = m.idBanda 
LIMIT 0, 1000;

SELECT b.nombreBanda, d.descripcion 
FROM Banda b 
JOIN Delito d ON b.idBanda = d.idBanda;

SELECT d.descripcion, i.nombreInvestigador 
FROM Delito d 
JOIN Investigador i ON d.idInvestigador = i.idInvestigador;

SELECT d.descripcion, v.nombreVictima 
FROM Delito d 
JOIN Victima v ON d.idDelito = v.idDelito;

SELECT b.nombreBanda, COUNT(m.idMiembro) AS TotalMiembros 
FROM Banda b 
LEFT JOIN Miembro m ON b.idBanda = m.idBanda 
GROUP BY b.idBanda;

SELECT d.descripcion, d.fechaDelito 
FROM Delito d;

SELECT b.nombreBanda, m.nombreMiembro 
FROM Banda b 
JOIN Miembro m ON b.idJefe = m.idMiembro;

SELECT b.nombreBanda, i.nombreInvestigador 
FROM Banda b 
JOIN Delito d ON b.idBanda = d.idBanda 
JOIN Investigador i ON d.idInvestigador = i.idInvestigador;

SELECT v.nombreVictima, d.descripcion 
FROM Victima v 
JOIN Delito d ON v.idDelito = d.idDelito;

SELECT b.nombreBanda, COUNT(d.idDelito) AS TotalDelitos 
FROM Banda b 
LEFT JOIN Delito d ON b.idBanda = d.idBanda 
GROUP BY b.idBanda;


