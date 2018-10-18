# Prepare your machine (BETA)

Helping preparation of your local env for development on First Time

Are you bored to install everything manually after format your computer or buy a new one? This is the repo that helps you and avoids your fears! (I hope)

### **It's still on BETA. Please be sure when you are trying to run this.**

**(WIP)**

- Node.js
- GO
- Python
- Java / Android
- C#
- Ruby
- Crystal
- GUI Apps
- CLI Apps
- Development Settings
- GIT Settings

## How to use

Before starting to run installer, please change `GIT_NAME` and `GIT_EMAIL` variables on launch file. Otherwise It will prepare GIT system with wrong information.

- For OSX

```bash
git clone --depth=1 https://github.com/Sly777/prepare-your-machine PrepareYourMachine
cd PrepareYourMachine
sh ./osx/launch.sh
```

- For Linux

```bash
git clone --depth=1 https://github.com/Sly777/prepare-your-machine PrepareYourMachine
cd PrepareYourMachine
sh ./linux/launch.sh
```

- For Windows

Before starting to use installer, Please install Ubuntu WSL for Windows. (https://docs.microsoft.com/en-us/windows/wsl/install-win10)

```bash
git clone --depth=1 https://github.com/Sly777/prepare-your-machine PrepareYourMachine
cd PrepareYourMachine
sh ./windows/launch.sh
```

## License

This project is licensed under the MIT license, Copyright (c) 2018 Ilker Guller. For more information see [LICENSE.md](LICENSE.md).

## Roadmap

- [x] Mac Support
- [x] Homebrew Support
- [x] Node.js Support
- [x] GO Support
- [x] Python Support
- [x] Java/Android Support
- [x] Crystal Support
- [x] C# Support
- [x] Ruby Support
- [x] Windows support (WSL)
- [x] Linux Support
- [x] Linuxbrew Support
- [ ] Optional Installation by specific dev languages
- [ ] Confirmation before running Script (exp; asking default settings)

## Author

* **Ilker Guller** - [website](https://ilkerguller.com) / [twitter](https://twitter.com/the_bluescreen)
