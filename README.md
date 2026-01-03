# ER Theme for Jekyll / GitHub Pages

A clean, minimal Jekyll theme you can use across multiple GitHub Pages projects.

## Usage

### Step 1: Create the Theme Repo

1. Create a new **public** GitHub repo named `er-theme` (or whatever you want)
2. Upload all these files to that repo
3. That's it — no GitHub Pages needed for the theme repo itself

### Step 2: Use in Any Project

In your project's `_config.yml`, add:

```yaml
remote_theme: YOURUSERNAME/er-theme

title: Your Project Name
description: Your project description

# Optional - customize header
header_link:
  text: "My Account"
  url: "/account"
  icon: "person-circle"

# Optional - customize footer
footer_links:
  - text: "Terms"
    url: "/terms"
  - text: "Privacy"
    url: "/privacy"
  - text: "Support"
    url: "/support"

footer_text: "© 2026 Your Company. All rights reserved."
```

### Step 3: Create Your Pages

Create an `index.md` or `index.html`:

```markdown
---
layout: page
title: Home
---

<div class="hero">
    <div class="hero-icon">
        <i class="bi bi-check-lg"></i>
    </div>
    <h1>Welcome!</h1>
    <p>Your content here.</p>
</div>

<div class="card">
    <h2>
        <span class="card-icon"><i class="bi bi-star"></i></span>
        Section Title
    </h2>
    <p>Your card content...</p>
</div>
```

## Switching from Slate

In your existing repo using Slate:

1. Open `_config.yml`
2. Remove: `theme: jekyll-theme-slate` or `remote_theme: pages-themes/slate`
3. Add: `remote_theme: YOURUSERNAME/er-theme`
4. Update your markdown/html to use the new CSS classes
5. Commit and push

## Available CSS Classes

### Layout
- `.page-content` - Main content wrapper (720px max)
- `.container` - General container (1200px max)

### Components
- `.card` - White card with border
- `.card-icon` - Icon box for card headers
- `.hero` - Centered hero section
- `.hero-icon` - Large icon circle

### Buttons
- `.btn` - Base button
- `.btn-primary` - Purple filled button
- `.btn-secondary` - Ghost/outline button

### Lists & Details
- `.detail-row` - Label/value row
- `.steps-list` - Numbered steps with counter
- `.step-content` - Content inside step

### Utilities
- `.license-box` - Code/key display box
- `.copy-btn` - Copy button
- `.download-item` - Download file row
- `.help-box` - Help/support callout
- `.note` - Small info note
- `.mono` - Monospace font

### Progress (optional)
- `.progress-steps` - Step indicator bar
- `.step` / `.step.active` / `.step.completed`
- `.step-connector` / `.step-connector.completed`

## Icons

Uses [Bootstrap Icons](https://icons.getbootstrap.com/). Example:
```html
<i class="bi bi-download"></i>
<i class="bi bi-check-lg"></i>
<i class="bi bi-key"></i>
```

## Customizing Colors

Override in your project by creating `assets/css/custom.css`:

```css
:root {
    --er-accent: #your-color;
    --er-accent-dark: #your-darker-color;
}
```

Then in `_config.yml`:
```yaml
custom_css: /assets/css/custom.css
```
