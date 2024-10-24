

-- Kiralanamayan ara�lar yani �uanda kiral�k olan ara�lar
SELECT DISTINCT A.Id, A.Model
FROM dbo.Arabalar A
INNER JOIN Kiralamalar K ON A.Id = K.ArabaId
WHERE K.BitisTarihi = (
    SELECT MAX(K2.BitisTarihi) 
    FROM dbo.Kiralamalar K2
    WHERE K2.ArabaId = A.Id
)
AND (
    K.BitisTarihi >  GETDATE() 
)
ORDER BY A.Id

-- AND den sonra NOT koyarak kiralanabilecek ara�lar listelenebilir







