![Start background image for GitHub's README](public/startbgforgithub.jpg)

# Building from Source

To get started, you need to have Node.js and Rust installed on your machine. We recommend using the latest LTS version of Node.js, version 22.1x.x or higher.

As well, we recommend using the `pnpm` package manager, instead of `npm`, but you still can use `npm` if you prefer. (we did not tested it)

Before doing all of these steps, you need do prerequisites from [Tauri](https://tauri.app/start/prerequisites/), since it required to do and install some tools before developing with the Tauri.

1. Clone the repository:
```bash
git clone https://github.com/standard-group/mayo-client.git
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

## Building and Running

To build the application, run the following command:

```bash
pnpm tauri build # or npm run tauri build
```

This will create a `dist` directory in the project root, which contains the built application installer files.