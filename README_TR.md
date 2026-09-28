# Emlak Takip - Android Studio Projesi

Bu proje Android Studio ile acilabilir ve APK olarak derlenebilir.

## En kolay yol
1. ZIP'i cikartin.
2. Klasoru Android Studio ile **Open** edin.
3. Gradle senkronizasyonunun tamamlanmasini bekleyin.
4. APK icin `Build > Build APK(s)` secin.

## Tek tikla APK (Windows)
Proje klasorundeki `APK_OLUSTUR.bat` dosyasina cift tiklayin.
Ilk calistirmada Gradle 8.9 internetten indirilir. Daha sonra APK otomatik olarak:
`app\build\outputs\apk\debug\app-debug.apk`
konumuna olusur.

## Gereksinimler
- Windows 10/11 (tek tikla BAT icin)
- Android Studio guncel bir surum
- Android SDK Platform 35
- Internet (ilk Gradle indirmesi ve Android bagimliliklari icin)

## Not
Olusan debug APK test ve manuel kurulum icindir. Telefonda bilinmeyen kaynaklardan uygulama kurulumuna izin vermeniz gerekebilir.
