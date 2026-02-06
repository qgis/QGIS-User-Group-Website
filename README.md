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

### Local Development

1. **Clone this repository:**
   ```bash
   git clone https://github.com/QGIS/QGIS-User-Group-Website.git
   cd QGIS-User-Group-Website
   ```

2. **Run the development server:**
   ```bash
   make hugo-run-dev
   ```
   Or directly with Hugo:
   ```bash
   hugo server --config config.toml,config/config.dev.toml
   ```

3. **View your site:**
   Open your browser to `http://localhost:1313`

![-----------------------------------------------------](./img/green-gradient.png)

## 🛠️ Setting Up Your User Group Site

### Step 1: Request a Branch

To set up a website for your QGIS User Group:

1. **Contact the QGIS Website Team:**
   - Open an issue in [this repository](https://github.com/qgis/QGIS-User-Group-Website/issues) or
   - Email the QGIS website team at [tim@kartoza.com](mailto:tim@kartoza.com) and [lova@kartoza.com](mailto:lova@kartoza.com)
   - Specify your user group name and preferred subdomain (e.g., `sweden.qgis.org`)

2. **Provide Information:**
   - User Group name
   - Country/region
   - Preferred subdomain name
   - Contact person(s) with GitHub usernames

### Step 2: Branch Creation and Permissions

The QGIS team will:

1. Create a dedicated branch for your user group (e.g., `usergroup/sweden`)
2. Set up branch protection rules
3. Grant you write permissions to your branch
4. Configure GitHub Actions for automated deployment

### Step 3: Configure Your Branch

Once your branch is ready:

1. **Clone and checkout your branch:**
   ```bash
   git clone https://github.com/qgis/QGIS-User-Group-Website.git
   cd QGIS-User-Group-Website
   git checkout usergroup/your-group-name
   ```

2. **Update configuration:**
   - Edit `config.toml` with your group details
   - Update the `baseURL` to match your subdomain
   - Customize the title and other settings

3. **Customize content:**
   - Edit content pages in the `content/` directory
   - Add your team information
   - Update events and rules
   - Replace placeholder images

4. **Commit and push:**
   ```bash
   git add .
   git commit -m "Initial customization for [Your Group Name]"
   git push origin usergroup/your-group-name
   ```

### Step 4: Request Deployment

After customizing your site:

1. **Request subdomain deployment:**
   - Contact the QGIS team to request deployment
   - Provide your desired subdomain (e.g., `sweden.qgis.org`)
   
2. **The QGIS team will:**
   - Configure the subdomain on qgis.org
   - Set up automated deployment from your branch
   - Provide you with the live URL

### Managing Your Branch

You have full control over your branch:

- **Push changes:** Changes pushed to your branch will automatically deploy
- **Collaborate:** Add other team members as collaborators on your branch
- **Keep updated:** Periodically merge updates from the main template branch to get new features

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

Edit the `themes/hugo-bulma-blocks-theme/layouts/partials/menu.html` file to customize:

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

The template uses the `hugo-bulma-blocks-theme` which provides:

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
