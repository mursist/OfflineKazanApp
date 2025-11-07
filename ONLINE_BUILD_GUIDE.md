# iOS Uygulamasını Online Derleme Rehberi

iOS uygulamanızı online/cloud ortamında derlemek için birkaç seçenek bulunmaktadır:

## 🚀 Seçenek 1: GitHub Actions (Ücretsiz - Önerilen)

GitHub Actions, macOS runner'larında iOS uygulamalarınızı ücretsiz derleyebilirsiniz.

### Adımlar:

1. **GitHub'da Repository Oluşturun:**
   ```bash
   cd OfflineKazanApp
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/KULLANICI_ADI/OfflineKazanApp.git
   git push -u origin main
   ```

2. **GitHub Actions Workflow:**
   - `.github/workflows/ios-build.yml` dosyası zaten oluşturuldu
   - GitHub'a push yaptığınızda otomatik olarak build başlar
   - Actions sekmesinden build durumunu takip edebilirsiniz

3. **Team ID Ayarlama:**
   - `ExportOptions.plist` dosyasındaki `YOUR_TEAM_ID` değerini kendi Apple Developer Team ID'niz ile değiştirin
   - Apple Developer hesabınızda Team ID'yi bulabilirsiniz

## 🍎 Seçenek 2: Xcode Cloud (Apple Resmi - Ücretli)

Apple'ın kendi cloud build servisi.

### Adımlar:

1. **Xcode'da Projeyi Açın**
2. **Xcode Cloud'u Etkinleştirin:**
   - Xcode > Preferences > Accounts
   - Apple ID ile giriş yapın
   - Proje ayarlarından "Xcode Cloud" sekmesine gidin
   - "Enable Xcode Cloud" butonuna tıklayın

3. **Workflow Oluşturun:**
   - Build ve test workflow'ları otomatik oluşturulur
   - TestFlight'a otomatik yükleme yapılabilir

## 🔧 Seçenek 3: Codemagic (Ücretsiz Plan Mevcut)

Codemagic, iOS ve Android uygulamaları için özel bir CI/CD servisi.

### Adımlar:

1. **Codemagic'a Kaydolun:**
   - https://codemagic.io adresine gidin
   - GitHub hesabınızla giriş yapın

2. **Projeyi Bağlayın:**
   - GitHub repository'nizi seçin
   - iOS platformunu seçin

3. **Build Ayarları:**
   - Otomatik olarak Xcode projesini algılar
   - Team ID ve sertifikaları yapılandırın

## 📦 Seçenek 4: Bitrise (Ücretsiz Plan Mevcut)

Bitrise, mobil uygulama geliştirme için CI/CD platformu.

### Adımlar:

1. **Bitrise'e Kaydolun:**
   - https://bitrise.io adresine gidin
   - GitHub hesabınızla giriş yapın

2. **App Ekle:**
   - "Add new app" butonuna tıklayın
   - Repository'nizi seçin
   - iOS workflow'unu seçin

3. **Sertifikaları Yapılandırın:**
   - Code signing sertifikalarınızı yükleyin
   - Provisioning profile'ları ekleyin

## 🎯 Seçenek 5: App Store Connect / TestFlight

Uygulamayı doğrudan App Store'a yüklemek için:

### Adımlar:

1. **Apple Developer Hesabı:**
   - Apple Developer Program'a üye olun ($99/yıl)
   - https://developer.apple.com

2. **Xcode'da Archive:**
   ```bash
   # Xcode'da:
   Product > Archive
   ```

3. **App Store Connect'e Yükle:**
   - Archive oluşturulduktan sonra "Distribute App" butonuna tıklayın
   - "App Store Connect" seçeneğini seçin
   - TestFlight veya App Store'a yükleyin

## 📝 Hızlı Başlangıç: GitHub Actions

En hızlı ve ücretsiz yöntem:

1. **GitHub Repository Oluşturun**
2. **Kodu Push Edin:**
   ```bash
   git init
   git add .
   git commit -m "iOS app"
   git branch -M main
   git remote add origin https://github.com/KULLANICI_ADI/OfflineKazanApp.git
   git push -u origin main
   ```

3. **GitHub'da Actions Sekmesine Gidin**
4. **Workflow Otomatik Çalışacak**

## ⚙️ Yapılandırma Notları

- **Team ID:** Apple Developer hesabınızda bulunur
- **Code Signing:** Development build için otomatik, App Store için sertifika gerekli
- **Simulator Build:** Test için yeterli
- **Device Build:** Gerçek cihazlarda çalıştırmak için gereklidir

## 🔐 Güvenlik

- Sertifikaları ve provisioning profile'ları GitHub'a commit etmeyin
- GitHub Secrets kullanarak hassas bilgileri saklayın:
  - Settings > Secrets and variables > Actions
  - `APPLE_TEAM_ID`, `APPLE_CERTIFICATE`, vb. ekleyin

## 📚 Daha Fazla Bilgi

- [GitHub Actions iOS Guide](https://docs.github.com/en/actions/guides/building-and-testing-swift)
- [Xcode Cloud Documentation](https://developer.apple.com/xcode-cloud/)
- [Codemagic iOS Guide](https://docs.codemagic.io/getting-started/ios/)

