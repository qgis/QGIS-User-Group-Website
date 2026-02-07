# ✨ Contributing to QGIS-User-Group-Website

Thank you for considering contributing to QGIS User Conference Website!
We welcome contributions of all kinds, including bug fixes, feature requests,
documentation improvements, and more. Please follow the guidelines below to
ensure a smooth contribution process.

![-----------------------------------------------------](./img/green-gradient.png)


## 🏃Before you start

This web site is a static site built using [Hugo](https://gohugo.io/).

![Hugo Logo](./img/hugo-logo.png) and using the [hugo bulma blocks theme](https://github.com/kartoza/hugo-bulma-blocks-theme).


![-----------------------------------------------------](./img/green-gradient.png)


## 🛒 Getting the Code

development
```
git clone https://github.com/qgis/QGIS-User-Group-Website.git
cd QGIS-User-Group-Website
```

![-----------------------------------------------------](./img/green-gradient.png)


## 🧑💻 Development

For Nix based development environment, please skip directly to the [Nix](#nix) section.

First install hugo for your local machine:

**📝 Note:** we need to install the 'extended' hugo version which includes a SASS compiler. If you don't install the extended version you will get errors like this when compiling:

```sh
ERROR 2022/12/11 07:33:37 Rebuild failed: TOCSS: failed to transform 
"css/style.scss" (text/x-scss). Check your Hugo installation; you need 
the extended version to build SCSS/SASS.: this feature is not available 
in your current Hugo version, see https://goo.gl/YMrWcn for more information
```

Currently, the website requires Hugo with a minimum version of `v0.139.0`. Ensure you have a compatible version installed to avoid any build issues.

You can find the extended version `v0.139.0` [here](https://github.com/gohugoio/hugo/releases/tag/v0.139.0).


### 🐧 Linux: 

Download the latest version and then do 

``sudo dpkg -i hugo_extended_<latest>_linux-amd64.deb``

**📝 Note:** if your system has another version of Hugo, no need to mess up with docker, snap, nix. Just extract the binaries somewhere with `dpkg -x` .
Example, assuming that you use a dedicated directory for your local binaries :

```sh
mkdir -p ~/apps/hugo_139/
wget https://github.com/gohugoio/hugo/releases/download/v0.139.0/hugo_extended_0.139.3_linux-amd64.deb --output-document ~/apps/hugo_128/hugo_extended_0.139.3_linux-amd64.deb 
dpkg -x hugo_extended_0.139.3_linux-amd64.deb
~/apps/hugo_128/usr/local/bin/hugo server  
```

### 🪟 Windows

# Setting Up QGIS Website Development Environment (WSL + Hugo)

This guide provides a step-by-step workflow to set up a local development environment for the QGIS website using Windows Subsystem for Linux (WSL) and the Hugo static site generator.

---

## 1. Initialize WSL and Ubuntu
WSL allows you to run a Linux environment directly on Windows without the overhead of a traditional virtual machine.

1.  **Install WSL:** Open PowerShell (as a standard user) and run:
    ```powershell
    wsl --install
    ```
2.  **Verify & Reboot:** Check the status to ensure the subsystem is active:
    ```powershell
    wsl --status
    ```
    *Note: A system reboot is required after the initial installation to enable the necessary virtualization features.*

3.  **Install Ubuntu 24.04:** After rebooting, install the specific distribution:
    ```powershell
    wsl --install Ubuntu-24.04
    ```
    *Launch **Ubuntu 24.04** from your Start Menu to complete the initial Linux user profile setup (username and password).*

---

## 2. Install Build Essentials and Hugo
The QGIS website development workflow relies on `make` for automation and the `hugo` extended binary for rendering the site.

1.  **Install Make:** Update your package lists and install the make utility:
    ```bash
    sudo apt update && sudo apt install make
    ```
2.  **Download Hugo (Extended Version):** We use the extended version specifically to support SCSS/SASS processing required by the QGIS website themes.
    ```bash
    wget [https://github.com/gohugoio/hugo/releases/download/v0.155.2/hugo_extended_0.155.2_linux-amd64.deb](https://github.com/gohugoio/hugo/releases/download/v0.155.2/hugo_extended_0.155.2_linux-amd64.deb)
    ```
3.  **Install the Package:**
    ```bash
    sudo dpkg -i hugo_extended_0.155.2_linux-amd64.deb
    ```

---

## 3. Resolving Folder Permission Issues
When working on a repository stored on your Windows file system (e.g., `/mnt/c/Users/...`), you may encounter errors during `git clone` or when Hugo tries to write to the disk. This is because WSL mounts Windows drives with different permission structures by default.

To fix this, you must remount the drive with **metadata** enabled. This allows Linux to manage file permissions and ownership correctly on the Windows drive.

1.  **Unmount the C: Drive:**
    ```bash
    sudo umount /mnt/c
    ```
2.  **Remount with Metadata:**
    ```bash
    sudo mount -t drvfs C: /mnt/c -o metadata
    ```

> **Note:** With these permissions set, you can now navigate to your project folder and clone the repository without write errors.

---

## 4. Clone the Repository
Navigate to your preferred directory on your local Windows system via the WSL terminal and clone the repository:

```bash
# Example: Navigating to your user Documents folder
cd /mnt/c/Users/YourUsername/Documents
```

# Clone the repository
 git clone https://github.com/QGIS/QGIS-User-Group-Website.git
cd qgis-website

### 🍏 macOS: 

[Follow these notes](https://gohugo.io/installation/macos/#prebuilt-binaries)

### Nix

Run the following command on this project root folder:

```sh
nix-shell # It will install all the dependecies
hugo server # To run the local server
```

![-----------------------------------------------------](./img/green-gradient.png)

## ⚙️ Setting up VSCode

If you are using VSCode, I recommend the following extensions:

* Hugo Language and Syntax Support
* Color Highlight

Clone the repo:

```
git clone https://github.com/qgis/QGIS-User-Group-Website.git
```

Run the site:

Press ```Ctl-Shift-D``` then choose the following runner:

'Run dev using locally installed Hugo'

the click the green triangle next to  the runner to start it.

Once the site is running, you can open it at:

<http://localhost:1313>

The site will automatically refresh any page you have open if you edit it and save your work. Magical eh?

![-----------------------------------------------------](./img/green-gradient.png)


## Run in other IDEs

Use an appropriate Hugo plugin for your IDE, or run Hugo från the command line:

```shell
hugo server
```

You can then visit the hot-reloaded site in your browser at `http://localhost:1313/`


![-----------------------------------------------------](./img/green-gradient.png)

## Running Playwright End to End (e2e) Tests

Test files are located in ```playwright/ci-test/tests```.

These tests exist to make sure code changes to this repository do not break how the site currently functions.
They are intended to run on each commit to verify the site is working in the expected order.


### Run tests with VSCode

**Requirements:** NodeJS v18+

1. **Install playwright:** If you haven't already installed Playwright, you can do so by running the following commands in `playwright/ci-test` directory.

```bash
cd playwright/ci-test
npm install
```

2. **Install playwright browsers:**

```bash
npx playwright install --with-deps chromium
```

3. **Install the extension [Playwright Test for VSCode](https://marketplace.visualstudio.com/items?itemName=ms-playwright.playwright)**: This extension provides a seamless integration of Playwright testing into VSCode.


4. **Open the Testing Tab:** In VSCode, click on the Testing icon in the Activity Bar on the side of the window. This will open the Testing tab.

5. **Run Playwright Tests from the Testing Tab:**
- In the Testing tab, you should see your Playwright tests listed. If not, ensure the browser is checked under Playwright > Project menu.
- Click on the refresh button in the Testing tab to reload the tests.
- You can run individual tests by clicking the play button next to the test name.
- You can also run all tests by clicking the play button at the top of the Testing tab.


6. **Debugging Tests:**

- You can debug individual tests by clicking the debug icon (a small bug with a play button) next to the test name.
- Make sure to set breakpoints in your test files before running the debugger.

### Run tests with CLI

By default, this will run in `headless` mode just as it is in CI.

```bash
./run-tests.sh
```

**NOTE:** To run it in `UI` mode, add the `--ui` tag to the script.

```bash
$PLAYWRIGHT \
    test \
    --ui \
    --project chromium
```

Read more on testing [here](https://github.com/qgis/QGIS-User-Group-Website/blob/main/playwright/ci-test/README.md).

### Running as github action

There is a github action that will run the tests automatically on PR submission, merge.

See ```.github/workflows/playwright-e2e.yml```

![-----------------------------------------------------](./img/green-gradient.png)

## Search Functionality 
The search functionality uses both [FuseJS](https://fusejs.io/) and [MarkJS](https://markjs.io/).

The search functionality code is based on this [Blog Post](https://makewithhugo.com/add-search-to-a-hugo-site/) and [GitHub Gist](https://gist.github.com/eddiewebb/735feb48f50f0ddd65ae5606a1cb41ae) by [Eddie Webb](https://twitter.com/eddturtle).

Content folders need to be excluded from search, by making them [headless bundles](https://gohugo.io/content-management/page-bundles/#headless-bundle) - which we have done for the sustaining member and flagship user folders in content/. To make other content folders which are not rendered and included in search results, add an ```index.md``` file with the following content: ```headless = true```.

![-----------------------------------------------------](./img/green-gradient.png)

## Referencing URLs in templates

The site needs to work in production, where the links of the site are all below the root URL, and in staging, where the site is deployed to GitHub pages in a subpath. To ensure both deployment strategies work, please use the following method of constructing URLs in templates.

```html
<a class="button is-primary" href="{{ "donate/" | absURL }}">
```

**Note:** We do not use a leading slash, only an ending slash.

![-----------------------------------------------------](./img/green-gradient.png)


## Styles (SASS/CSS)

SASS for most components is stored in themes/hugo-bulma-blocks-theme/assets/sass/bulma/components/

Some common styles are places in themes/hugo-bulma-blocks-theme/assets/sass/style.sass - this file is compiled as hugo template, hence has access to config.toml variables and hugo macroses

Also some bulma theme overrides are placed in themes/hugo-bulma-blocks-theme/assets/css/custom.css

![-----------------------------------------------------](./img/green-gradient.png)


## 📁 File naming conventions

* Separate words in file names with hyphens e.g. windows-download.md
* Avoid abbreviations in the words of your files
* Write file names in lower case only
* No spaces in file names

![-----------------------------------------------------](./img/green-gradient.png)

## 💮 Changing the templates

| Page type       | Path                                     |
| --------------- | ---------------------------------------- |
| Landing Page    | themes/qgis/layouts/index.html           |
| Top Level Pages | themes/qgis/layouts/_default/single.html |

![-----------------------------------------------------](./img/green-gradient.png)


## 🏠 Editing the landing (home) page

The layout of the landing page is themes/hugo-bulma-blocks-theme/layouts/index.html: the main page has many diverse blocks, that are not used anywhere else, hence its content is mostly in the partials.

The ``content/_index.md`` contains the front matter of the page and the contents for the `feature` shortcodes. Just edit whatever you like there. The blocks shortcodes are described [here](https://github.com/qgis/QGIS-User-Group-Website/blob/main/docs/shortcodes.md)

![-----------------------------------------------------](./img/green-gradient.png)


## 📃 Adding a top level page

### Create the content

Content pages are stored in the ``content`` folder. The top level documents there will be rendered with the top level page theming.

For example to add an about page, create ``content/about.md``

The page will be accessible then at /about/

### 🖼️ Referencing Images and Media

Place images and media in ```static/img```. Everything in ```static``` is referenced
from the top level of the site e.g.  ```static/img/foo.png``` would be referenced in
markdown as ```/img/foo.png```.


![-----------------------------------------------------](./img/green-gradient.png)

## 📦 Blocks Shortcodes

The site uses a number of shortcodes to create reusable blocks of content. These are defined in the ```themes/hugo-bulma-blocks-theme/layouts/shortcodes/``` folder.

The shortcodes with screenshots are described [here](https://github.com/qgis/QGIS-User-Group-Website/blob/main/docs/shortcodes.md)

<!-- 3rd level header with icon with title Reusable header web component -->
### Reusable header web component

TODO

### Sidebar

Sidebar is implemented in themes/hugo-bulma-blocks-theme/layouts/partials/sidebar.html

Items are retrieved from config.toml under `[menu]` section. `weight` parameter defines the order of the item.

To enable sidebar on the content page, use the following template:

```
---
type: "page"
...
sidebar: true
---
{{< content-start  >}}

... add content here ...

{{< content-end  >}}
```

![-----------------------------------------------------](./img/green-gradient.png)
