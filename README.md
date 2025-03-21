# Roundcube-Session-Tracker

Bu repo, Roundcube webmail platformu için oturumları izlemek ve raporlamak amacıyla yazılmış shell scriptlerini içerir. Webmail kullanıcılarının giriş aktivitelerini izler, kullanıcı bilgilerini listeler ve PRTG uyumlu formatta çıktı üretir.

## Özellikler:
- Son 10 dakikadaki webmail girişlerini izler
- Kullanıcı bilgilerini (IP ve kullanıcı adı) listeler
- PRTG uyumlu formatta çıktı alabilir
- MySQL/MariaDB veritabanı desteği

## Kullanım

### **1. Webmail Oturum İzleyici (`sessions.sh`)**

Son 10 dakikadaki webmail girişlerini takip eder ve kullanıcı bilgilerini listeler. Kullanıcı adı ve IP bilgilerini görüntüler. 

#### Script Açıklaması:
- `sessions.sh` scripti, Roundcube veritabanındaki `session` tablosundaki oturumları sorgular. 
- Sadece son 10 dakika içinde aktif olan girişleri gösterir.
- Giriş yapan kullanıcının IP adresi ve kullanıcı adı görüntülenir.
- Eğer kullanıcı adı base64 şifreleme ile saklanmışsa, base64 çözülür ve kullanıcı adı regex kullanılarak çıkartılır.

#### Kullanım:
```bash
bash sessions.sh

Son 10 Dakikadaki Webmail Girişleri:
----------------------------------
Kullanıcı: test@test.com, IP:  1.1.1.1
Kullanıcı: test2@test.com, IP:  1.1.1.2
```

### **2. PRTG Uyumlu Çıktı (`prtg.sh`)**

PRTG ile uyumlu bir izleme yapmak için `prtg.sh` scripti kullanılır. Bu script, son 10 dakika içinde giriş yapan kullanıcıları sayar ve PRTG formatında çıktı sunar.

#### Script Açıklaması:
- `prtg.sh` scripti, son 10 dakika içinde giriş yapan benzersiz IP adreslerini sayar.
- Çıktıyı, PRTG'nin kabul ettiği formatta verir. Bu format, giriş sayısını ve açıklamaları içerir.
- Eğer giriş yapan kullanıcı yoksa, çıktı olarak `0:0:0 Adet giriş` döndürülür.

#### Kullanım:
```bash
bash prtg.sh

0:1:1 Adet giriş
```

### Önemli

Aşağıdaki dokümanı inceleyerek sunucunuz üzerindeki scripti PRTG üzerinde nasıl tanımlayacağınız yazmaktadır.

https://www.paessler.com/manuals/prtg/ssh_script_sensor

## Teşekkürler!
