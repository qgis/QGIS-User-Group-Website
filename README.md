# 🌐 QGIS User Group Website Template

> ## 👋 Welcome to the QGIS User Group Website Template!
>
> **This repository provides a template for creating QGIS User Group websites:**
> 🌍 Hosted as subdomains of qgis.org (e.g., `yourgroup.qgis.org`)
>
> Here you'll find everything you need to **build, develop, and customize** your User Group Website.

![-----------------------------------------------------](./img/green-gradient.png)

<!-- TABLE OF CONTENTS -->
<h2 id="table-of-contents"> 📖 Table of Contents</h2>

<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#-project-overview"> 🚀 Project Overview </a></li>
    <li><a href="#-getting-started"> 🎯 Getting Started </a></li>
    <li><a href="#️-setting-up-your-user-group-site"> 🛠️ Setting Up Your User Group Site </a></li>
    <li><a href="#-folder-structure"> 📂 Folder Structure </a></li>
    <li><a href="#️-customizing-your-site"> ✏️ Customizing Your Site </a></li>
    <li><a href="#-license"> 📜 License </a></li>
    <li><a href="#-using-the-nix-shell"> 🧊 Using the Nix Shell </a></li>
    <li><a href="#-contributing"> ✨ Contributing </a></li>
  </ol>
</details>

![-----------------------------------------------------](./img/green-gradient.png)

## 🚀 Project Overview

This template is designed for QGIS User Groups to quickly set up a professional website with:

- **Home page** - Welcome visitors and introduce your group
- **Events page** - List upcoming and past events
- **Who we are page** - Introduce your team and members
- **Rules page** - Community guidelines and code of conduct

The template uses Hugo static site generator with a clean, responsive design that maintains consistency with the QGIS ecosystem.

![-----------------------------------------------------](./img/green-gradient.png)

## 🎯 Getting Started

### Prerequisites

- Hugo (version 0.139.0 or higher)
- Git
- A text editor or an IDE (eg. VSCode)

### Local Development (for this template)
***The steps below are ONLY for contributing to THIS template. If you want to initiate the website for your user group, please see the section 🛠️ Setting Up Your User Group Site***

1. **Clone this repository:**
   ```bash
   git clone https://github.com/QGIS/QGIS-User-Group-Website.git
   cd QGIS-User-Group-Website
   ```

2. **Install submodule with QGIS website theme**
   ```bash
   git submodule update --init --recursive
   ```

3. **Run the development server:**
   ```bash
   make hugo-run-dev
   ```
   Or directly with Hugo:
   ```bash
   hugo server --config config.toml,config/config.dev.toml
   ```

4. **View your site:**
   Open your browser to `http://localhost:1313`

![-----------------------------------------------------](./img/green-gradient.png)

## 🛠️ Setting Up Your User Group Site

### Step 1: User group recognition 

Before proceeding with the next steps, **please make sure** that your user group has been **officially recognized** by QGIS.org first.

### Step 2: Create a repo from this template

This repository is a template that you can use to create your user group's website repo from.
For that:

1. From this repo homepage, on the top-left, click on **Use this template** > **Create a new repository**
2. Create the new repo on your GitHub account and name it **QGIS-UG-Country-name**
3. Clone your new repo and follow the steps in CONTRIBUTING.md to spin up your local environment
4. Make all the necessary changes for your user group website:

   - Edit `config.toml` with your group details
   - Update the `baseURL` to match your subdomain
   - Customize the title and other settings
   - Edit content pages in the `content/` directory
   - Add your team information
   - Update events and rules
   - Replace placeholder images

### Step 3: Transfer your repo to QGIS organization account

Email the QGIS website team at [tim@kartoza.com](mailto:tim@kartoza.com), [lova@kartoza.com](mailto:lova@kartoza.com) and [marco@qgis.org](mailto:marco@qgis.org) to request for the transfer to QGIS GitHub account and specify the following information
   - User Group name
   - Country/region
   - Preferred subdomain name
   - Contact person(s) with GitHub usernames
We will eventually contact you to initialize the transfer from your repo.


![-----------------------------------------------------](./img/green-gradient.png)

## 📂 Folder Structure

```plaintext
QGIS-User-Group-Website/
  ├── ⚙️  config/           # Hugo configuration files
  ├── 📄  content/          # Markdown content files (pages, posts)
  ├── 🖼️  img/              # Images files used by this README
  ├── 🧩  layouts/          # Hugo templates and partials
  ├── 📦  public/           # Generated site output (after `hugo` build)
  ├── 🗂️  resources/        # Hugo-generated resources (e.g., minified assets)
  ├── 📄  static/           # Static files served as-is (e.g., favicon, images)
  ├── 🎨  themes/           # Hugo themes
  ├── ⚙️  config.toml       # Main Hugo configuration file
  ├── 🤝  CONTRIBUTING.md   # Contribution guidelines
  ├── 📜  LICENSE           # Project license
  ├── ⚙️  Makefile          # Build/Deployment automation commands
  └── 📖  README.md         # This file
```

![-----------------------------------------------------](./img/green-gradient.png)

## ✏️ Customizing Your Site

### Content Pages

All content is in the `content/` directory:

- `_index.md` - Home page
- `events.md` - Events listing
- `about.md` - Team and member information
- `rules.md` - Community guidelines
- `case-studies.md` - Local project highlights
- `community.md` - Join and contribute
- `tutorials.md` - QGIS tutorials list
- `blog/_index.md` - Blog intro and list

You are free to edit or add new files as needed to customize your content. The files use Markdown with Hugo shortcodes.

### Configuration

Edit `config.toml` to customize:

- Site title and URL
- Menu structure
- Colors and branding
- Social media links
- Analytics settings

### Navigation menu

Edit the `themes/qgis-website-theme/layouts/partials/menu.html` file to customize:

- `logo-icon`: The logo on the main navigation menu (by default: QGIS logo)
- `logo-link`: The link where the logo points to (by default: qgis.org). You can set it to `/` if you want to point the logo the homepage of your user group website.
- `second-menu-prefix`: The link of this user group website (eg. https://sweden.qgis.org)
- `secondary-menu-config`: The link to the `navigation.json` used for the mobile menu (See below). For example: https://raw.githubusercontent.com/qgis/QGIS-User-Group-Website/usergroup_switzerland/static/config/navigation.json

Edit the `static/config/navigation.json` file to customize the secondary menu on mobile. This file should be updated whenever you modify your menu entries.

### Images and Assets

- Place images in `static/img/` or `content/`
- Update hero images in page front matter
- Replace the logo files
- Add your own favicon

### Styling

The template uses the `qgis-website-theme` which provides:

- Responsive design
- Clean, modern look
- Customizable colors
- Reusable content blocks

Colors and fonts can be customized in `config.toml` under `[params]`.

![-----------------------------------------------------](./img/green-gradient.png)


## 📜 License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.

![-----------------------------------------------------](./img/green-gradient.png)

## 🧊 Using the Nix Shell

Please refer to the [Nix section](./CONTRIBUTING.md#nix) in [CONTRIBUTING.md](./CONTRIBUTING.md).

![-----------------------------------------------------](./img/green-gradient.png)

## ✨ Contributing

We welcome contributions to improve this template!

- **For template improvements:** Submit PRs to the main branch
- **For your user group site:** Work on your dedicated branch

Please read the [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

![-----------------------------------------------------](./img/green-gradient.png)

## 🙋 Have Questions?

- **Template questions:** Open an issue in this repository
- **General QGIS questions:** Visit [qgis.org](https://qgis.org)

![-----------------------------------------------------](./img/green-gradient.png)

## 🧑‍💻👩‍💻 Contributors

- [Tim Sutton](https://github.com/timlinux) – Original QGIS Website author
- [Lova Andriarimalala](https://github.com/Xpirix) – Template developer
- [QGIS Contributors](https://github.com/qgis/GIS-User-Group-Website/graphs/contributors) – Community contributors

![-----------------------------------------------------](./img/green-gradient.png)

Made with ❤️ by the QGIS Contributors.
