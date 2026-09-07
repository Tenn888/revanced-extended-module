<p align="center">
    <a href="README.md">🇺🇸 English</a>
</p>

# Модуль ReVanced для Magisk

Продвинутый сборщик ReVanced

Получите [последний релиз CI](https://github.com/Tenn888/revanced-extended-module/releases).

Используйте [**zygisk-detach**](https://github.com/j-hc/zygisk-detach), чтобы отвязать YouTube и YT Music от Play Store, если вы используете модули Magisk.

<details><summary><big>Возможности</big></summary>
<ul>
 <li> Поддерживает все текущие и будущие приложения ReVanced (включая проекты, реализующие тот же API)</li>
 <li> Может собирать модули Magisk и обычные APK без root</li>
 <li> Обновляется ежедневно с последними версиями приложений и патчей</li>
 <li> Оптимизирует APK и модули по размеру</li>
 <li> Модули
    <ul>
     <li> перекомпилирует инвалидированные odex для более быстрой работы</li>
     <li> получает обновления через приложение Magisk</li>
     <li> не ломает SafetyNet и не вызывает детекторы рута</li>
     <li> корректно устанавливает нужную версию стокового приложения и т.д.</li>
     <li> поддержка Magisk и KernelSU</li>
    </ul>
 </li>
</ul>
</details>

## Как включать/исключать патчи или патчить другие приложения

 * Поставьте звезду репозиторию :eyes:
 * Используйте репозиторий как [шаблон](https://github.com/new?template_name=revanced-magisk-module&template_owner=j-hc)
 * Настройте `config.toml` через [rvmm-config-gen](https://j-hc.github.io/rvmm-config-gen/)
 * Запустите workflow сборки [workflow](../../actions/workflows/build.yml)
 * Возьмите ваши модули и APK из [релизов](../../releases)

см. также [`CONFIG.md`](./CONFIG.md)

## Если у вас проблемы с классическим методом монтирования модулей
например,
- **«Требуется перепрошивка»** ошибка после перезагрузок
- **«Обнаружено подозрительное монтирование»** предупреждения от приложений-детекторов рута

Рассмотрите использование [rvmm-zygisk-mount](https://github.com/j-hc/rvmm-zygisk-mount)

## Сборка локально
### В Termux
```console
bash <(curl -sSf https://raw.githubusercontent.com/j-hc/revanced-magisk-module/main/build-termux.sh)
```

### В Linux
```console
$ git clone https://github.com/j-hc/revanced-magisk-module --depth 1
$ cd revanced-magisk-module
$ ./build.sh
```
