# Offline Kazan iOS Uygulaması

Bu iOS uygulaması, Offline Kazan girişim raporunu görüntülemek için geliştirilmiştir.

## Özellikler

- 📱 Modern SwiftUI arayüzü
- 📄 Girişim raporu bölümlerini görüntüleme
- 🔍 Detaylı alt bölümler
- 📊 Organize edilmiş içerik yapısı
- 🎨 Kullanıcı dostu tasarım

## Gereksinimler

- iOS 17.0 veya üzeri
- Xcode 15.0 veya üzeri
- macOS (Xcode için)

## Kurulum

1. Projeyi Xcode'da açın:
   ```
   OfflineKazanApp.xcodeproj dosyasını çift tıklayın
   ```

2. Geliştirme ekibinizi seçin:
   - Xcode'da proje ayarlarına gidin
   - "Signing & Capabilities" sekmesinde Development Team seçin

3. Uygulamayı çalıştırın:
   - Simulator veya gerçek cihaz seçin
   - ⌘ + R tuşlarına basın veya Run butonuna tıklayın

## Proje Yapısı

```
OfflineKazanApp/
├── OfflineKazanApp/
│   ├── OfflineKazanAppApp.swift    # Ana uygulama giriş noktası
│   ├── ContentView.swift            # Ana içerik görünümü
│   ├── Models/
│   │   └── ReportSection.swift      # Veri modelleri
│   ├── Views/
│   │   ├── ReportListView.swift     # Rapor listesi görünümü
│   │   └── ReportDetailView.swift   # Rapor detay görünümü
│   ├── Assets.xcassets/             # Görsel varlıklar
│   └── Info.plist                   # Uygulama bilgileri
└── README.md
```

## Kullanım

Uygulama açıldığında, girişim raporunun tüm bölümlerini listeleyen bir ekran görürsünüz. Herhangi bir bölüme dokunarak detaylı içeriği görüntüleyebilirsiniz.

## İçerik Özelleştirme

Rapor içeriğini özelleştirmek için `Models/ReportSection.swift` dosyasındaki `ReportData.sampleData` dizisini düzenleyebilirsiniz.

## Geliştirme

Bu uygulama SwiftUI kullanılarak geliştirilmiştir ve modern iOS geliştirme pratiklerini takip eder.

## Lisans

Bu proje özel kullanım içindir.

