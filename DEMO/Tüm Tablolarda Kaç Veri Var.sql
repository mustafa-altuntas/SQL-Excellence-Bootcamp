

SELECT COUNT(*) [Musteriler] FROM [dbo].[Musteriler]	-- 12.889
SELECT COUNT(*) [Arabalar] FROM [dbo].[Arabalar]		-- 1.998
SELECT COUNT(*) [Kiralamalar] FROM [dbo].[Kiralamalar]	-- 116.213
SELECT COUNT(*) [Odemeler] FROM [dbo].[Odemeler]		-- 116.213
SELECT COUNT(*) [Log] FROM [dbo].[Log]					-- 48397

-- Log tablosu güncel veriler
SELECT *  FROM [dbo].[Log] order by Id desc

-- Log tablosunu temizle
-- DELETE FROM Log 

SELECT * FROM [dbo].[Musteriler]	-- 12.889
SELECT * FROM [dbo].[Arabalar]		-- 1.998
SELECT * FROM [dbo].[Kiralamalar]	-- 116.213
SELECT * FROM [dbo].[Odemeler]		-- 116.213
SELECT * FROM [dbo].[Log]			-- 48397




