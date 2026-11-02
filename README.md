# PayFlow | Fintech Payment & Transaction Analysis 💳

## 📌 Proje Genel Bakış
Bu proje, kurgusal fintech platformu **PayFlow**'un 2026 yılının ilk yarısına (Ocak - Haziran) ait ödeme işlem verilerini analiz etmektedir. Projenin temel amacı; platformun ödeme performansını ölçmek, başarısız işlem dinamiklerini incelemek ve veriye dayalı stratejik iş önerileri sunmaktır. 🚀

---

## 📊 Temel Metrikler & Dashboard Özeti
* **Toplam İşlem Adedi:** 1,200 📝
* **Toplam İşlem Hacmi:** 2.4M 💰
* **Ortalama İşlem Tutarı:** 2.0K ⚖️
* **En Popüler Ödeme Yöntemi:** Kredi Kartı (%40.3 oranla lider) 💳
* **En Yüksek Hacimli Kategori:** Seyahat (Travel) ✈️

---

## 🎯 İş Problemi & Çözülen Sorular
PayFlow yönetiminin veri odaklı kararlar alabilmesi için şu kritik sorular yanıtlanmıştır:
1. İşlemlerin ödeme yöntemlerine ve duruma (Başarılı, Başarısız, İptal) göre dağılımı nasıldır?
2. En yüksek işlem hacmini hangi ödeme yöntemi ve üye işyeri kategorisi üretmektedir?
3. Başarısız işlemlerin arkasındaki ana nedenler (Yetersiz Bakiye, Teknik Hata vb.) nelerdir?
4. Aylık bazda işlem hacmi ve adetlerinde nasıl bir seyir izlenmektedir?

---

## 🗂️ Veri Seti
- **Kapsam:** Ocak 2026 - Haziran 2026 dönemi 📅
- **İçerik:** 1,200 satırlık sentetik ödeme verisi (İşlem tarihleri, ödeme yöntemleri, tutarlar, durumlar, müşteri segmentleri, şehirler, üye işyeri kategorileri ve hata nedenleri).

---

## 🛠️ Kullanılan Araçlar & Teknolojiler
- **Microsoft Excel:** İlk veri keşfi ve veri temizliği 📑
- **PostgreSQL / SQLiteOnline:** Veri tabanı sorgulama ve iş sorularını yanıtlama🗄️
- **Google Sheets & Looker Studio:** Etkileşimli analitik dashboard tasarımı 📈
- **GitHub:** Versiyon kontrolü ve proje dokümantasyonu 🐙

---

## 🔍 Analiz Süreci
1. **Veri Keşfi:** Excel kullanılarak veri yapısı incelenmiş, sütun tipleri ve eksik/hatalı veri kontrolleri yapılmıştır.
2. **SQL ile Veri Analizi:** Agregasyonlar, gruplamalar ve filtrelemeler yapılarak ödeme performans metrikleri çıkarılmıştır.
3. **Görselleştirme:** Looker Studio üzerinde; ödeme yöntemlerine göre durum dağılımları, aylık trendler, hata nedenleri kırılımı ve kategori hacimleri panoya aktarılmıştır.
4. **İçgörü Üretimi:** Çıkan sonuçlar iş stratejilerine uyarlanarak öneriler geliştirilmiştir.

---

## 💡 Öne Çıkan Bulgular & İçgörüler
* **Ödeme Yöntemleri:** Kredi kartı, %40.3 pay ile işlem hacminde ve adetlerinde açık ara liderdir. Bunu Debit Card ve Digital Wallet takip etmektedir.
* **Hata Nedenleri:** Başarısız işlemler içerisinde **"Insufficient Funds" (Yetersiz Bakiye)** yaklaşık %23-24 pay ile ilk sırada yer alırken, bunu teknik hatalar ve limit aşımları izlemektedir. ⚠️
* **Aylık Trend:** Haziran ayı, hem işlem adedi hem de işlem hacmi (600K seviyesine yaklaşarak) bazında yılın en yüksek hareketliliğini yaşatmaktadır. 📈
* **Kategori Bazlı Dağılım:** Seyahat (Travel) kategorisi finansal hacim olarak zirvedeyken, elektronik ve moda kategorileri de onu takip etmektedir.

---

## 💡 Öneriler
- **Yetersiz Bakiye Yönetimi:** Kullanıcılara bakiye yetersizliği durumunda alternatif ödeme yöntemleri hızlıca önerilmelidir.
- **Banka Havalesi Optimizasyonu:** Banka havalesi süreçlerindeki olası sürtünmeler teknik ekiplerle incelenmelidir.
- **Kampanya Dönemleri:** Haziran ayındaki hacim artışının sebepleri analiz edilerek bu dönemsel ivme yılın diğer aylarına yayılmalıdır.

---

## 📈 Dashboard & Görselleştirme
* [View Payment Performance Dashboard (PDF)](dashboard/Payment_Performance_Dashboard.pdf) 📄
* **Live Looker Studio Dashboard:** [View Dashboard](https://datastudio.google.com/reporting/3daf67d6-4637-4e1c-922f-faa849e33655) 🌐

---

## 🗃️ Proje Yapısı
```text
├── data/
│   └── payment_transactions.csv
├── sql/
│   └── payment_analysis.sql
├── dashboard/
│   └── PayFlow_-_Payment_Transactions_Dashboard.pdf
├── insights/
│   └── insights_and_recommendations.md
└── README.md
