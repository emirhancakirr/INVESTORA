## Proje Amacı
Bu açık kaynak proje, bireysel yatırımcıların Türk yatırım fonları, BIST hisse senetleri ve vadeli mevduat hesaplarını tek bir arayüzde takip edebilmelerini sağlar. Sistem, fiyat verilerini otomatik olarak günceller, portföyün toplam değerini ve getiri oranlarını hesaplar, sonuçları tablo ve grafiklerle sunar.

### Temel Özellikler
- **Fon Verisi**  
  - TEFAS arka uç API’si üzerinden günlük fon fiyatı ve geçmiş performans verisi
- **Hisse Senedi Verisi**  
  - *yahoo-finance2* kütüphanesi ile BIST sembollerinin (örn. `AKBNK.IS`) anlık fiyatı
- **Vadeli Mevduat**  
  - Kullanıcı, vadeli hesaplarını faiz oranı ve vade tarihleriyle sisteme kaydeder; beklenen faiz getirisi otomatik hesaplanır
- **Portföy Analizi**  
  - Toplam portföy değeri, kar/zarar, günlük–aylık getiri, varlık dağılım grafikleri
- **Hafif Yığın**  
  - Backend: Node.js + SQLite  
  - Frontend: React (Vite)  
  - Tek komutla kurulum ve dağıtım için Docker desteği

## Hedef Kitle
1. **Bireysel Yatırımcılar**  
   - Excel dosyalarıyla uğraşmadan fon, hisse ve vadeli hesaplarını canlı izlemek isteyen kullanıcılar
2. **Geliştiriciler**  
   - TEFAS ve Yahoo Finance verilerini bağlayan örnek bir Node.js + React projesine katkı sunmak veya kendi projelerinde yeniden kullanmak isteyenler
3. **Eğitim Amaçlı Kullanıcılar**  
   - Web API tüketimi, cron job, Docker konteynerleştirme ve basit veritabanı kullanımını öğrenmek isteyen öğrenciler

> Not: Uygulama tamamen açık kaynak olup MIT lisansı ile dağıtılır; isteyen herkes kodu inceleyebilir, çatallayabilir ve geliştirebilir.
