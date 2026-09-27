<p align="center">
    <a href="README.ru.md">🇷🇺 Русский</a>
</p>

# ReVanced Extended Module

ReVanced module and APK builder.

Get the [latest CI release](https://github.com/Tenn888/revanced-extended-module/releases).

Use [**zygisk-detach**](https://github.com/j-hc/zygisk-detach) to detach YouTube and YT Music from the Play Store if you use Magisk modules.

## Installation

<details>
<summary><big>Non-root APKs</big></summary>

1. Install [MicroG RE](https://github.com/MorpheApp/MicroG-RE/releases). It is required to sign in to a Google account and use Google services.
2. Download and install the matching APK from [Releases](https://github.com/Tenn888/revanced-extended-module/releases/).
3. To update, install the newer APK over the existing version.

</details>

<br>

<details>
<summary><big>Root modules</big></summary>

1. Flash the module ZIP through Magisk or KernelSU and reboot the device.
2. In KernelSU, open **Superuser**, select YouTube or YouTube Music, and disable **Unmount modules**. If the **Custom** section is available, change the setting there.
3. To update, use the root manager's update function or flash the newer ZIP over the existing module.
4. To prevent Google Play from replacing the stock app, install [zygisk-detach](https://github.com/j-hc/zygisk-detach/releases) and detach YouTube or YouTube Music.

</details>


## Troubleshooting the classic module mount method

For example:
- **"Reflash needed"** errors after rebooting
- **"Suspicious mount detected"** warnings from root detection apps

Consider using [rvmm-zygisk-mount](https://github.com/j-hc/rvmm-zygisk-mount).

## Building Locally

### Requirements

- Java 21, curl, git, jq, unzip and zip

### On Termux
```console
bash <(curl -sSf https://raw.githubusercontent.com/Tenn888/revanced-extended-module/main/build-termux.sh)
```

### On Linux
```console
$ git clone https://github.com/Tenn888/revanced-extended-module --depth 1
$ cd revanced-extended-module
$ ./build.sh
```
