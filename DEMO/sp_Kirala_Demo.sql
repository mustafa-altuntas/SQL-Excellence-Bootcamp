USE [ALTUNTAS_OTOMOBIL]
GO

DECLARE @MusteriId int = 7000
DECLARE @ArabaId int = 5
DECLARE @BaslangicTarihi date = GETDATE()
DECLARE @BitisTarihi date = DATEADD(DAY,2,GETDATE())
DECLARE @KiralamaUcreti decimal(10,2) = 10
DECLARE @OdemeYontemi nvarchar(50) ='Kredi Kartý'

-- Son eklenen aracýn son kiralanma tarihi -- Ekleme öncesi kontrol
SELECT TOP 1 * FROM Kiralamalar where ArabaId=@ArabaId ORDER BY BitisTarihi DESC 

EXECUTE [dbo].[sp_Kirala] 
   @MusteriId
  ,@ArabaId
  ,@BaslangicTarihi
  ,@BitisTarihi
  ,@KiralamaUcreti
  ,@OdemeYontemi

-- Son eklenen aracýn son kiralanma tarihi
SELECT TOP 1 * FROM Kiralamalar where ArabaId=@ArabaId ORDER BY BitisTarihi DESC 



