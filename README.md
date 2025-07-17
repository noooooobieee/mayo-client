![Start background image for GitHub's README](public/bannermd.png)

<div align="center">
    <img alt="Desktop Build Mayo (nightly)" src="https://github.com/noooooobieee/mayo-client/actions/workflows/desktop.yml/badge.svg?branch=main" href="https://github.com/noooooobieee/mayo-client/actions/workflows/desktop.yml">
    <img alt="Mobile Build Mayo (nightly)" src="https://github.com/noooooobieee/mayo-client/actions/workflows/mobile.yml/badge.svg?branch=main" href="https://github.com/noooooobieee/mayo-client/actions/workflows/mobile.yml">
    <img alt="Matrix" src="https://img.shields.io/matrix/project-mesa-room%3Amatrix.org?style=flat&logo=matrix" href="https://matrix.to/#/#project-mesa-room:matrix.org">
    <img alt="Discord" src="https://img.shields.io/badge/Discord-7289DA?style=flat&logo=discord&logoColor=white" href="https://sdiscord.gg/Z997UBvFJ4">
</div>

# Project Mayo Client

This is the client-side code for the Project Mayo desktop application. It is built using Vue.js + Vite and Tauri.

> What is Mayo?

Mayo is a fork of Mesa, aims to have better performance and more functions.

> Why you choose Tauri?

Tauri offers almost the same functionality as Electron, but with a more modern, faster and low-memory eater. It also has a better developer experience, as it is written in Rust and uses the WebView2 API for rendering.

## Getting Started

To install and run the client, go grab our latest release from [here](https://github.com/standard-group/mesa-client/releases/latest) for your platform. 

As well, we recommend using the `pnpm` package manager, instead of `npm`, but you still can use `npm` if you prefer. (we did not tested it)

Before doing all of these steps, you need do prerequisites from [Tauri](https://tauri.app/start/prerequisites/), since it required to do and install some tools before developing with the Tauri.

1. Clone the repository:
```bash
git clone https://github.com/noooooobie/mayo-client.git
```

2. Change the directory to the project:
```bash
cd mayo-client
```

3. Install the dependencies:
```bash
pnpm install # or npm install
```

4. Run the development server:
```bash
pnpm tauri dev # or npm run tauri dev
```

5. (optional) If you will be building the Android version of client, you need to install the Android SDK and NDK. You can find the instructions [here](https://tauri.app/start/prerequisites/#android).
After that, initialize the Android environment:
```bash
pnpm tauri init android # or npm run tauri init android
```

Now you can run and test our app, as well help us contribute to the project.

OR,

If you want nightly builds, you can find them [here for desktop](https://github.com/standard-group/mesa-client/actions/workflows/desktop.yml) and [here for mobile (Android)](https://github.com/standard-group/mesa-client/actions/workflows/mobile.yml).

## Contributing

We welcome contributions to the project. If you want to contribute, please follow steps in [CONTRIBUTING.md](CONTRIBUTING.md).

## Project Structure

The project is structured as follows:

- `src-tauri`: This directory contains the Tauri configuration files, including the `tauri.conf.json` file, which is used to configure the Tauri application.
- `src`: This directory contains the source code for the client-side application. (frontend in Vue)

## Building from Source

Please read [BUILDING.md](BUILDING.md) for more information.

## Contact (Mayo)

Join my [discord server](https://discord.gg/UKDBb3Ymyw)!

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

## Donate

[![Donate using DonationAlerts](public/donate.svg)](https://www.donationalerts.com/r/standardgroup)

> *why our donations via donationalerts?*

cuz we are two dumb teenagers and we are from different countries, so we cant send money to each other. donationalerts is only a one way for us.

## Donate (Mayo)

[![Donate using Ko-fi](public/donate.svg)](https://ko-fi.com/blue16th)

> *Why my donations only via ko-fi?*

I use ko-fi because i can get money instantly to my Paypal, as well Stripe. Also it has more functions.

*donations are appreciated, but not required.*
