# Telefonda bulut üzerinden APK oluşturma

Bu proje GitHub Actions ile bilgisayar olmadan APK oluşturacak şekilde hazırlanmıştır.

1. GitHub'da yeni bir repository oluşturun (ör. EmlakTakip).
2. Bu klasörün içindeki dosyaları repository'nin köküne yükleyin. `emlakv4` klasörünün içeriği kökte olmalıdır; `.github/workflows/android-apk.yml` yolu korunmalıdır.
3. Repository'de **Actions** sekmesini açın.
4. **Emlak Takip APK** iş akışını seçin.
5. **Run workflow** düğmesine basın.
6. İşlem bitince workflow sayfasındaki **Artifacts** bölümünden `EmlakTakip-APK` dosyasını indirin.
7. ZIP'i açın; içindeki `app-debug.apk` dosyasını Android telefona kurabilirsiniz.

Not: GitHub Actions GitHub'ın bulut makinelerinde çalışır. Android/Gradle derlemesi için Gradle ve Android araçlarını runner üzerinde kullanır.
