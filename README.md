# Ceres Theme

A clean, modern Jekyll theme for GitHub Pages featuring Space Grotesk typography, an indigo accent palette, and a professional component system.

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Jekyll](https://img.shields.io/badge/jekyll-%3E%3D%204.0-red.svg)

## Features

- **Modern Design** — Clean layouts with gradient accents and professional typography
- **Responsive** — Mobile-first design that works across all devices
- **Component Library** — Pre-built hero sections, pricing cards, bento grids, and more
- **Easy Configuration** — Simple YAML-based setup for navigation, footer, and social links
- **GitHub Pages Ready** — Works seamlessly as a remote theme

---

## Quick Start

### 1. Add the Theme

In your project's `_config.yml`:

```yaml
remote_theme: devuri/ceres-theme
```

### 2. Configure Your Site

```yaml
# Site settings
title: My Site
description: Your site description

# Navigation
navigation:
  - title: Features
    url: "#features"
  - title: Pricing
    url: "#pricing"
  - title: Docs
    url: /docs

# Call-to-action button (optional)
cta_button:
  title: Get Started
  url: "#pricing"

# Footer columns
footer_columns:
  - title: Product
    links:
      - title: Features
        url: "#features"
      - title: Pricing
        url: "#pricing"
  - title: Resources
    links:
      - title: Documentation
        url: /docs
      - title: Support
        url: /support

# Social links
social_links:
  - platform: Twitter
    icon: twitter-x
    url: https://twitter.com/yourusername
  - platform: GitHub
    icon: github
    url: https://github.com/yourusername

# Footer
footer_tagline: A short tagline for your site.
footer_copyright: "© 2025 Your Company. All rights reserved."
```

### 3. Create Your Homepage

Create `index.html`:

```html
---
layout: home
title: Home
---

<section class="hero">
  <div class="container">
    <div class="hero-content">
      <div class="hero-tag">Your Tag</div>
      <h1>Your headline with <span class="gradient">gradient text</span></h1>
      <p>Your description goes here.</p>
      <div class="hero-actions">
        <a href="#" class="btn btn-glow btn-lg">Primary CTA</a>
        <a href="#" class="btn btn-ghost btn-lg">Secondary CTA</a>
      </div>
    </div>
  </div>
</section>
```

---

## Layouts

| Layout    | Purpose                              |
|-----------|--------------------------------------|
| `default` | Base layout with header and footer   |
| `home`    | Full-width landing pages             |
| `page`    | Standard content pages               |

---

## Components

### Hero Section

```html
<section class="hero">
  <div class="container">
    <div class="hero-content">
      <div class="hero-tag">Tag Line</div>
      <h1>Headline with <span class="gradient">Gradient</span></h1>
      <p>Description text</p>
      <div class="hero-actions">
        <a href="#" class="btn btn-glow">Get Started</a>
      </div>
      <div class="hero-stats">
        <div class="stat-item">
          <div class="stat-value">10k+</div>
          <div class="stat-label">Users</div>
        </div>
      </div>
    </div>
  </div>
</section>
```

### Bento Grid

```html
<div class="bento-grid">
  <div class="bento-card">
    <div class="bento-icon"><i class="bi bi-shield-check"></i></div>
    <h3>Feature Title</h3>
    <p>Feature description</p>
  </div>
  <div class="bento-card large">
    <!-- Spans 2 columns -->
  </div>
</div>
```

### Steps

```html
<div class="steps-grid">
  <div class="step-card">
    <div class="step-number">1</div>
    <h3>Step Title</h3>
    <p>Step description</p>
  </div>
</div>
```

### Pricing Cards

```html
<div class="pricing-grid">
  <div class="pricing-card featured">
    <div class="popular-badge">Most Popular</div>
    <div class="pricing-name">Pro</div>
    <div class="pricing-sites">5 site license</div>
    <div class="pricing-amount">$79</div>
    <div class="pricing-period">per year</div>
    <ul class="pricing-features">
      <li><i class="bi bi-check-circle-fill"></i> Feature item</li>
    </ul>
    <a href="#" class="btn btn-glow w-100">Buy Now</a>
  </div>
</div>
```

### Call-to-Action Section

```html
<section class="cta-section">
  <div class="container">
    <h2>Ready to get started?</h2>
    <p>Description text here.</p>
    <div class="cta-actions">
      <a href="#" class="btn btn-glow btn-lg">Primary</a>
      <a href="#" class="btn btn-ghost btn-lg">Secondary</a>
    </div>
  </div>
</section>
```

---

## CSS Reference

### Buttons

| Class       | Description            |
|-------------|------------------------|
| `.btn`      | Base button style      |
| `.btn-glow` | Primary accent button  |
| `.btn-ghost`| Outline button         |
| `.btn-lg`   | Large button variant   |

### Sections

| Class            | Description              |
|------------------|--------------------------|
| `.section-gray`  | Gray background section  |
| `.section-number`| Small uppercase label    |
| `.section-title` | Large section heading    |
| `.section-desc`  | Section description text |

### Layout

| Class               | Description           |
|---------------------|-----------------------|
| `.container`        | Max 1200px, centered  |
| `.container-narrow` | Max 720px, centered   |

### Utilities

| Class                   | Description        |
|-------------------------|--------------------|
| `.text-center/left/right` | Text alignment   |
| `.mt-1` to `.mt-5`      | Margin top         |
| `.mb-1` to `.mb-5`      | Margin bottom      |
| `.w-100`                | Full width         |
| `.gradient`             | Gradient text      |

---

## Icons

This theme uses [Bootstrap Icons](https://icons.getbootstrap.com/). Example usage:

```html
<i class="bi bi-check-circle-fill"></i>
<i class="bi bi-shield-check"></i>
<i class="bi bi-rocket-takeoff"></i>
```

---

## Customization

### Custom Colors

Create `assets/css/custom.scss` in your project:

```scss
---
---

:root {
  --er-accent: #your-color;
  --er-accent-dark: #your-darker-color;
}
```

Then add to `_config.yml`:

```yaml
custom_css: /assets/css/custom.scss
```

### Override Templates

Copy any file from `_layouts/` or `_includes/` into your project at the same path to override it.

---

## Migrating from Another Theme

To switch from Slate or another theme:

1. Remove the existing theme line from `_config.yml`:
   ```yaml
   # Remove this
   theme: jekyll-theme-slate
   ```

2. Add the Ceres theme:
   ```yaml
   remote_theme: devuri/ceres-theme
   ```

3. Update your pages to use Ceres layouts and components

4. Commit and push

---

## File Structure

```
ceres-theme/
├── _includes/
│   ├── header.html
│   ├── footer.html
│   ├── hero.html
│   ├── bento-card.html
│   ├── pricing-card.html
│   └── cta.html
├── _layouts/
│   ├── default.html
│   ├── home.html
│   └── page.html
├── _sass/
│   └── ceres.scss
├── assets/
│   └── css/
│       └── style.scss
├── LICENSE
└── README.md
```

---

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
