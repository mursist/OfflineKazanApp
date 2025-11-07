# GitHub'a Yükleme için ZIP Hazırlama

## Adımlar:

1. **OfflineKazanApp klasörünü bulun:**
   - `c:\Users\Mursist\Downloads\OfflineKazanApp`

2. **Klasörü ZIP yapın:**
   - Klasöre sağ tıklayın
   - "Send to" > "Compressed (zipped) folder" seçin
   - Veya klasörü seçip Ctrl+Shift+Z tuşlarına basın

3. **ZIP dosyasını açın:**
   - ZIP dosyasını çift tıklayarak açın
   - İçindeki tüm dosya ve klasörleri görün

4. **GitHub'a Yükleyin:**
   - https://github.com adresine gidin
   - Yeni repository oluşturun
   - "uploading an existing file" linkine tıklayın
   - ZIP içindeki tüm dosya ve klasörleri sürükle-bırak ile yükleyin
   - "Commit changes" butonuna tıklayın

## Önemli Notlar:

- `.gitignore` dosyası zaten var, bu yüzden gereksiz dosyalar yüklenmeyecek
- GitHub Actions workflow dosyası otomatik çalışacak
- Build sonuçlarını Actions sekmesinden görebilirsiniz

