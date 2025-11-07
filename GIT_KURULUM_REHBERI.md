# Git Kurulum ve Kullanım Rehberi

## 🚀 Hızlı Çözümler (Git Olmadan)

### Seçenek 1: GitHub Web Arayüzü (En Kolay - Önerilen)

Git yüklemeden GitHub'a dosyalarınızı yükleyebilirsiniz:

1. **GitHub'da Repository Oluşturun:**
   - https://github.com adresine gidin
   - Giriş yapın
   - "New repository" butonuna tıklayın
   - Repository adı: `OfflineKazanApp`
   - "Create repository" butonuna tıklayın

2. **Dosyaları ZIP Olarak Hazırlayın:**
   - `OfflineKazanApp` klasörünü ZIP olarak sıkıştırın
   - GitHub'da "uploading an existing file" linkine tıklayın
   - ZIP dosyasını açın ve tüm dosyaları sürükle-bırak ile yükleyin
   - "Commit changes" butonuna tıklayın

3. **GitHub Actions Otomatik Çalışacak:**
   - Actions sekmesine gidin
   - Build otomatik başlayacak

### Seçenek 2: GitHub Desktop (Görsel Arayüz)

Git komut satırı yerine görsel arayüz kullanın:

1. **GitHub Desktop İndirin:**
   - https://desktop.github.com adresine gidin
   - İndirin ve kurun

2. **Kullanım:**
   - GitHub Desktop'ı açın
   - "File > Add Local Repository" seçin
   - `c:\Users\Mursist\Downloads\OfflineKazanApp` klasörünü seçin
   - "Publish repository" butonuna tıklayın

### Seçenek 3: Codemagic (Git Gerektirmez)

Codemagic, dosya yükleme desteği sunar:

1. **Codemagic'a Kaydolun:**
   - https://codemagic.io adresine gidin
   - GitHub hesabınızla giriş yapın

2. **Proje Yükleyin:**
   - "Add app" butonuna tıklayın
   - "Upload project" seçeneğini seçin
   - ZIP dosyanızı yükleyin

## 📥 Git Kurulumu (İsteğe Bağlı)

Eğer komut satırından Git kullanmak isterseniz:

### Windows için Git Kurulumu:

1. **Git İndirin:**
   - https://git-scm.com/download/win adresine gidin
   - İndirin ve kurun (varsayılan ayarlarla)

2. **Kurulum Sonrası:**
   - PowerShell veya Command Prompt'u yeniden başlatın
   - Şu komutları çalıştırın:

```bash
cd "c:\Users\Mursist\Downloads\OfflineKazanApp"
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/KULLANICI_ADI/OfflineKazanApp.git
git push -u origin main
```

### Git Kurulumunu Kontrol Etme:

```bash
git --version
```

Bu komut Git versiyonunu gösterirse kurulum başarılıdır.

## 🎯 Önerilen Yöntem

**En kolay ve hızlı yöntem: GitHub Web Arayüzü**

1. GitHub'da repository oluşturun
2. Dosyaları ZIP yapın
3. Web arayüzünden yükleyin
4. GitHub Actions otomatik build edecek

Bu yöntem Git kurulumu gerektirmez!

