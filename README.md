
# Roundcube-Session-Tracker

Bu repo, Roundcube webmail platformu için oturumları izlemek ve raporlamak amacıyla yazılmış shell scriptlerini içerir. Webmail kullanıcılarının giriş aktivitelerini izlemek için kullanılır. Ayrıca, PRTG ile entegrasyon için uyumlu bir formatta çıktı üretir.

## Özellikler:
- Son 10 dakikadaki webmail girişlerini izler
- Kullanıcı bilgilerini (IP ve kullanıcı adı) listeler
- PRTG uyumlu formatta çıktı alabilir
- MySQL/MariaDB veritabanı desteği

## Kullanım

### **1. Webmail Oturum İzleyici (`sessions.sh`)**

Bu script, son 10 dakikadaki webmail girişlerini takip eder ve kullanıcı bilgilerini (IP adresi ve kullanıcı adı) listeler.

#### Kullanım:
```bash
bash sessions.sh
```

#### Örnek Çıktı:
```txt
Son 10 Dakikadaki Webmail Girişleri:
----------------------------------
Kullanıcı: test@test.com, IP:  1.1.1.1
Kullanıcı: example@domain.com, IP:  2.2.2.2
```

### **2. PRTG Uyumlu Çıktı (`prtg.sh`)**

PRTG izleme aracıyla uyumlu bir çıktı almak için bu scripti kullanabilirsiniz. Bu script, oturum verilerini PRTG tarafından okunabilir bir formatta sunar.

#### Kullanım:
```bash
bash prtg.sh
```

#### Örnek Çıktı:
```txt
0:1:1 Adet giriş
```

### Önemli

Aşağıdaki dokümanı inceleyerek sunucunuz üzerindeki scripti PRTG üzerinde nasıl tanımlayacağınız yazmaktadır.

https://www.paessler.com/manuals/prtg/ssh_script_sensor


## Teşekkürler!
