---
layout: docs
title: Getting Started
description: Learn how to install and set up Ceres Theme for your GitHub Pages site.
---

## Installation

Ceres Theme works as a remote theme for Jekyll and GitHub Pages. There's no need to download or install anything locally.

### Step 1: Create Your Repository

Create a new GitHub repository for your site, or use an existing one. Make sure it's set up for GitHub Pages.

### Step 2: Add the Theme

Create or edit your `_config.yml` file and add the remote theme:

```yaml
remote_theme: devuri/ceres-theme
```

### Step 3: Enable GitHub Pages

Go to your repository settings, navigate to **Pages**, and select your branch (usually `main`) as the source.

---

## Basic Configuration

Here's a minimal `_config.yml` to get started:

```yaml
# Theme
remote_theme: devuri/ceres-theme

# Site settings
title: My Site
description: A brief description of your site

# Navigation
navigation:
  - title: Home
    url: /
  - title: About
    url: /about
  - title: Contact
    url: /contact

# Footer
footer_tagline: Your site tagline here.
footer_copyright: "© 2025 Your Name. All rights reserved."
```

---

## Creating Your First Page

Create an `index.html` file in your repository root:

```html
---
layout: home
title: Home
---

<section class="hero">
    <div class="container">
        <div class="hero-content">
            <div class="hero-tag">Welcome</div>
            <h1>Hello, <span class="gradient">World</span></h1>
            <p>This is my first page using Ceres Theme.</p>
            <div class="hero-actions">
                <a href="#" class="btn btn-glow btn-lg">Get Started</a>
            </div>
        </div>
    </div>
</section>
```

---

## Project Structure

A typical Ceres Theme project looks like this:

```
your-site/
├── _config.yml          # Site configuration
├── index.html           # Homepage
├── about.md             # About page (Markdown)
├── contact.md           # Contact page (Markdown)
└── assets/
    └── css/
        └── custom.scss  # Custom styles (optional)
```

---

## What's Next?

<div class="callout info">
<strong>Recommended Reading</strong>
<p>Continue with the <a href="/configuration">Configuration</a> guide to learn about all available options, or jump to <a href="/components/">Components</a> to start building your pages.</p>
</div>

- [Configuration](/configuration) — Complete configuration reference
- [Layouts](/layouts) — Available page layouts
- [Components](/components/) — Pre-built UI components
- [Customization](/customization) — Customize colors and styles
