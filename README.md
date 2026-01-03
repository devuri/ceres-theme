# Ceres Theme

A clean, modern Jekyll theme for GitHub Pages. Uses Space Grotesk font, indigo accent colors, and a professional design system.

## Quick Start

### 1. Create the Theme Repository

Create a **public** GitHub repository (e.g., `ceres-theme`) and upload all these files.

### 2. Use the Theme in Any Project

In your project's `_config.yml`:

```yaml
remote_theme: devuri/ceres-theme

# Site settings
title: My Site
description: Site description

# Navigation
navigation:
  - title: Features
    url: "#features"
  - title: Pricing
    url: "#pricing"
  - title: Docs
    url: /docs

# Optional CTA button in nav
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

### 3. Create Your Pages

Create `index.html` with `layout: home` for landing pages:

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

## Switching from Slate (or other themes)

1. Open your `_config.yml`
2. Remove: `theme: jekyll-theme-slate` or `remote_theme: pages-themes/slate`
3. Add: `remote_theme: YOUR_USERNAME/ceres-theme`
4. Update your pages to use the new layouts and CSS classes
5. Commit and push

## Layouts

| Layout | Description |
|--------|-------------|
| `default` | Base layout with header, footer, nav |
| `home` | For landing pages (full-width) |
| `page` | For content pages |

## Components

### Hero Section
```html
<section class="hero">
    <div class="container">
        <div class="hero-content">
            <div class="hero-tag">Tag Line</div>
            <h1>Headline <span class="gradient">Gradient</span></h1>
            <p>Description</p>
            <div class="hero-actions">
                <a href="#" class="btn btn-glow">CTA</a>
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
        <h3>Title</h3>
        <p>Description</p>
    </div>
    <div class="bento-card large"><!-- spans 2 columns --></div>
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

### Use Cases
```html
<div class="use-cases-grid">
    <div class="use-case-card">
        <div class="use-case-icon"><i class="bi bi-people"></i></div>
        <div>
            <h3>Use Case</h3>
            <p>Description</p>
        </div>
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
            <li><i class="bi bi-check-circle-fill"></i> Feature</li>
        </ul>
        <a href="#" class="btn btn-glow w-100">Buy Now</a>
    </div>
</div>
```

### CTA Section
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

## CSS Classes

### Buttons
- `.btn` - Base button
- `.btn-glow` - Primary purple button
- `.btn-ghost` - Outline button  
- `.btn-lg` - Large button

### Sections
- `section` - Standard section padding
- `.section-gray` - Gray background section
- `.section-number` - Small uppercase label
- `.section-title` - Large heading
- `.section-desc` - Section description

### Layout
- `.container` - Max 1200px centered
- `.container-narrow` - Max 720px centered

### Utilities
- `.text-center`, `.text-left`, `.text-right`
- `.mt-1` to `.mt-5` - Margin top
- `.mb-1` to `.mb-5` - Margin bottom
- `.w-100` - Full width
- `.gradient` - Gradient text color

## Icons

Uses [Bootstrap Icons](https://icons.getbootstrap.com/):

```html
<i class="bi bi-check-circle-fill"></i>
<i class="bi bi-shield-check"></i>
<i class="bi bi-rocket-takeoff"></i>
```

## Customization

### Override Colors

Create `assets/css/custom.scss` in your project:

```scss
---
---

:root {
    --er-accent: #your-color;
    --er-accent-dark: #your-darker-color;
}
```

Add to `_config.yml`:
```yaml
custom_css: /assets/css/custom.scss
```

### Override Layouts

Copy any file from `_layouts/` or `_includes/` to your project with the same path to override it.

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
└── README.md
```

## License

GNU General Public License v2.0
