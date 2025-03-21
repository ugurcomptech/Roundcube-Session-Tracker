# Roundcube-Session-Tracker

Bu repo, Roundcube webmail platformu için oturumları izlemek ve raporlamak amacıyla yazılmış shell scriptlerini içerir. Webmail kullanıcılarının giriş aktivitelerini izlemek için kullanılır. Ayrıca, PRTG ile entegrasyon için uyumlu bir formatta çıktı üretir.

## 📌 Özellikler:
- Son 10 dakikadaki webmail girişlerini izler
- Kullanıcı bilgilerini (IP ve kullanıcı adı) listeler
- PRTG uyumlu formatta çıktı alabilir
- MySQL/MariaDB veritabanı desteği

## 🚀 Kullanım

### **1. Webmail Oturum İzleyici (`sessions.sh`)**

Son 10 dakikadaki webmail girişlerini takip eder ve kullanıcı bilgilerini listeler. Kullanıcı adı ve IP bilgilerini görüntüler.

#### Kullanım:
```bash
bash sessions.sh

Son 10 Dakikadaki Webmail Girişleri:
----------------------------------
Kullanıcı: test@test.com, IP:  1.1.1.1
```


### **2. PRTG Uyumlu Çıktı (prtg.sh)**

Eğer PRTG ile uyumlu bir izleme yapmak isterseniz, PRTG formatında çıktı alabilirsiniz. Bunun için `prtg.sh` scripti çalıştırmanız gerekir.  Bu script, oturum verilerini PRTG tarafından okunabilir bir formatta sunar.

```bash
bash prtg.sh

0:1:1 Adet giriş
```

### Önemli

Aşağıdaki dokümanı inceleyerek sunucunuz üzerindeki scripti PRTG üzerinde nasıl tanımlayacağınız yazmaktadır.

https://www.paessler.com/manuals/prtg/ssh_script_sensor



## Teşekkürler!



