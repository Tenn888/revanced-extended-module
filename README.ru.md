<p align="center">
    <a href="README.md">🇺🇸 English</a>
</p>

# ReVanced Extended Module

Сборщик модулей и APK на основе ReVanced.

Получите [последний релиз CI](https://github.com/Tenn888/revanced-extended-module/releases).

Используйте [**zygisk-detach**](https://github.com/j-hc/zygisk-detach), чтобы отвязать YouTube и YT Music от Play Store, если вы используете модули Magisk.

## Установка

<details>
<summary><big>Non-Root APK</big></summary>

1. Установите [MicroG RE](https://github.com/MorpheApp/MicroG-RE/releases). Он необходим для входа в Google-аккаунт и работы сервисов Google.
2. Скачайте подходящий APK из [релизов](https://github.com/Tenn888/revanced-extended-module/releases/) и установите его.
3. Для обновления установите новую версию APK поверх предыдущей.

</details>

<details>
<summary><big>Root-модули</big></summary>

1. Установите ZIP-модуль через Magisk или KernelSU и перезагрузите устройство.
2. В KernelSU откройте **Superuser**, выберите YouTube или YouTube Music и отключите параметр **Unmount modules**. Если доступен раздел **Custom**, измените параметр там.
3. Для обновления используйте функцию обновления root-менеджера или установите новый ZIP поверх текущего модуля.
4. Чтобы Google Play не заменял стоковое приложение, установите [zygisk-detach](https://github.com/j-hc/zygisk-detach/releases) и отвяжите YouTube или YouTube Music.

</details>

## Если у вас проблемы с классическим методом монтирования модулей
Например:
- **«Требуется перепрошивка»** ошибка после перезагрузок
- **«Обнаружено подозрительное монтирование»** предупреждения от приложений-детекторов рута

Рассмотрите использование [rvmm-zygisk-mount](https://github.com/j-hc/rvmm-zygisk-mount)

## Сборка локально

### Требования

- Java 21, curl, git, jq, unzip и zip

### В Termux
```console
bash <(curl -sSf https://raw.githubusercontent.com/Tenn888/revanced-extended-module/main/build-termux.sh)
```

### В Linux
```console
$ git clone https://github.com/Tenn888/revanced-extended-module --depth 1
$ cd revanced-extended-module
$ ./build.sh
```
