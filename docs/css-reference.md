---
layout: docs
title: CSS Reference
description: Complete reference for all CSS classes available in Ceres Theme.
---

## Buttons

### Base Button

All buttons start with the `.btn` class.

```html
<a href="#" class="btn">Default Button</a>
```

### Button Variants

| Class | Description | Use For |
|-------|-------------|---------|
| `.btn-glow` | Primary accent button with hover glow | Primary actions |
| `.btn-ghost` | Outline button | Secondary actions |

```html
<a href="#" class="btn btn-glow">Primary</a>
<a href="#" class="btn btn-ghost">Secondary</a>
```

### Button Sizes

| Class | Description |
|-------|-------------|
| `.btn-lg` | Large button (1rem padding, larger font) |

```html
<a href="#" class="btn btn-glow btn-lg">Large Button</a>
```

### Button Properties

| Property | Value |
|----------|-------|
| Padding | 0.625rem 1.5rem |
| Border radius | 8px |
| Font weight | 600 |
| Font size | 0.95rem |

---

## Layout

### Containers

| Class | Max Width | Use For |
|-------|-----------|---------|
| `.container` | 1200px | Standard page width |
| `.container-narrow` | 720px | Narrow content (articles, forms) |

```html
<div class="container">
    <!-- Standard width content -->
</div>

<div class="container-narrow">
    <!-- Narrow content -->
</div>
```

---

## Sections

### Section Styling

| Class | Description |
|-------|-------------|
| `<section>` | Standard padding (7rem vertical) |
| `.section-gray` | Gray background |

```html
<section>
    <!-- Standard section -->
</section>

<section class="section-gray">
    <!-- Gray background section -->
</section>
```

### Section Typography

| Class | Description |
|-------|-------------|
| `.section-number` | Small uppercase label |
| `.section-title` | Large section heading (2.5rem) |
| `.section-desc` | Section description text |

```html
<span class="section-number">Features</span>
<h2 class="section-title">Why Choose Us</h2>
<p class="section-desc">Our key features explained.</p>
```

---

## Typography

### Gradient Text

Apply a gradient effect to text:

```html
<h1>Build something <span class="gradient">amazing</span></h1>
```

### Code Styling

Code and preformatted text uses JetBrains Mono:

```html
<code>inline code</code>
<pre>block code</pre>
<span class="mono">monospace text</span>
```

---

## Spacing Utilities

### Margin Top

| Class | Value |
|-------|-------|
| `.mt-1` | 0.5rem |
| `.mt-2` | 1rem |
| `.mt-3` | 1.5rem |
| `.mt-4` | 2rem |
| `.mt-5` | 3rem |

### Margin Bottom

| Class | Value |
|-------|-------|
| `.mb-1` | 0.5rem |
| `.mb-2` | 1rem |
| `.mb-3` | 1.5rem |
| `.mb-4` | 2rem |
| `.mb-5` | 3rem |

```html
<div class="mt-3 mb-5">
    <!-- 1.5rem top margin, 3rem bottom margin -->
</div>
```

---

## Text Utilities

| Class | Description |
|-------|-------------|
| `.text-center` | Center-aligned text |
| `.text-left` | Left-aligned text |
| `.text-right` | Right-aligned text |

```html
<div class="text-center">
    <h2>Centered Heading</h2>
</div>
```

---

## Width Utilities

| Class | Description |
|-------|-------------|
| `.w-100` | Full width (100%) |

```html
<a href="#" class="btn btn-glow w-100">Full Width Button</a>
```

---

## Component Classes

### Hero

| Class | Description |
|-------|-------------|
| `.hero` | Hero section container |
| `.hero-content` | Content wrapper |
| `.hero-tag` | Uppercase label |
| `.hero-actions` | Button container |
| `.hero-stats` | Stats row |
| `.stat-item` | Individual stat |
| `.stat-value` | Large stat number |
| `.stat-label` | Stat description |

### Bento Grid

| Class | Description |
|-------|-------------|
| `.bento-grid` | Grid container |
| `.bento-card` | Card component |
| `.bento-card.large` | 2-column card |
| `.bento-icon` | Icon container |
| `.bento-visual` | Background decorative icon |

### Steps

| Class | Description |
|-------|-------------|
| `.steps-grid` | Grid container |
| `.step-card` | Step card |
| `.step-number` | Numbered badge |

### Use Cases

| Class | Description |
|-------|-------------|
| `.use-cases-grid` | Grid container |
| `.use-case-card` | Horizontal card |
| `.use-case-icon` | Icon container |

### Pricing

| Class | Description |
|-------|-------------|
| `.pricing-section` | Section with centered text |
| `.pricing-grid` | Grid container |
| `.pricing-card` | Pricing card |
| `.pricing-card.featured` | Highlighted card |
| `.popular-badge` | "Most Popular" badge |
| `.pricing-name` | Plan name |
| `.pricing-sites` | Plan subtitle |
| `.pricing-amount` | Price display |
| `.pricing-period` | Billing period |
| `.pricing-features` | Feature list |
| `.pricing-guarantee` | Guarantee box |

### CTA

| Class | Description |
|-------|-------------|
| `.cta-section` | CTA section |
| `.cta-actions` | Button container |

### Navigation

| Class | Description |
|-------|-------------|
| `.navbar` | Main navigation bar |
| `.navbar.scrolled` | Scrolled state |
| `.navbar-brand` | Logo/brand link |
| `.nav-links` | Navigation list |
| `.nav-link` | Individual nav link |

### Footer

| Class | Description |
|-------|-------------|
| `.site-footer` | Footer container |
| `.footer-grid` | Column grid |
| `.footer-brand` | Brand in footer |
| `.footer-desc` | Tagline text |
| `.footer-title` | Column heading |
| `.footer-links` | Link list |
| `.footer-bottom` | Bottom row |
| `.footer-socials` | Social icon links |

---

## Code Block Classes

For syntax highlighting in code blocks:

| Class | Description |
|-------|-------------|
| `.code-block` | Code block container |
| `.accent` | Accent color |
| `.string` | String color (green) |
| `.key` | Key color (indigo) |
| `.comment` | Comment color (gray) |

```html
<div class="code-block">
    <pre><span class="key">const</span> name = <span class="string">"Ceres"</span>;</pre>
</div>
```
