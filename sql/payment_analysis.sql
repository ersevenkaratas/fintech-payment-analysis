-- PAYFLOW | FINTECH PAYMENT ANALYSIS
-- SQL BUSINESS QUESTIONS

--1. PayFlow veri setinde toplam kaç işlem bulunmaktadır?

SELECT COUNT(*) FROM PAYMENT_TRANSACTIONS

--2. Başarılı işlemlerin ortalama işlem tutarı nedir?

select * from payment_transactions

select 
	avg(transaction_amount) as basarili_islem_ortalaması
from payment_transactions
where transaction_status = 'Successful'

select 
	avg(transaction_amount) as basarisiz_islem_ortalaması
from payment_transactions
where transaction_status = 'Failed'

--3. İşlem sayısı işlem durumlarına göre nasıl dağılıyor?

select transaction_status,
	count(*) as islem_sayisi
from payment_transactions
group by transaction_status
ORDER BY islem_sayisi DESC

--4. Başarılı işlemlerde hangi ödeme yöntemi en yüksek işlem hacmini oluşturuyor?

select payment_method, 
	sum(transaction_amount) as islem_hacmi
from payment_transactions
where transaction_status = 'Successful'
group by payment_method
order by islem_hacmi desc

select payment_method from payment_transactions

--5. Hangi müşteri segmenti en yüksek ortalama işlem tutarına sahip?

select * from payment_transactions

select customer_segment, 
avg(transaction_amount) as islem_ortalaması
from payment_transactions
group by customer_segment
order by islem_ortalaması desc 

--6. Başarısız işlemlerde en sık görülen hata nedeni nedir?

select failure_reason, 
count(transaction_status) as hata_sayıları
from payment_transactions
where transaction_status = 'Failed'
group by failure_reason 
order by hata_sayıları desc

--7. Başarılı işlemlerde hangi şehir en yüksek işlem hacmini oluşturuyor?

select * from payment_transactions

select city,
sum(transaction_amount) as islem_hacim_toplamı
from payment_transactions
where transaction_status = 'Successful'
group by city
order by islem_hacim_toplamı desc

--8. En yüksek tutarlı 10 işlem hangileridir?

select * from payment_transactions

select * from payment_transactions
order by transaction_amount desc limit 10

--Bonus:Başarılı işlemlerde iş yeri kategorilerinin işlem sayısı ve hacmi nasıl karşılaştırılıyor?

select merchant_category,
Count(transaction_id) as islem_sayisi,
sum(transaction_amount) as islem_hacmi_toplamı
from payment_transactions
group by merchant_category
order by islem_sayisi desc

--Bonus:Tutarı 1.000’den yüksek işlemler arasında en yüksek tutarlı beş işlem hangileridir? 

select * from payment_transactions

select *from payment_transactions
where transaction_amount > 1000
order by transaction_amount desc limit 5
