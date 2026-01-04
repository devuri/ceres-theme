---
layout: docs
title: Layouts
description: Learn about the available page layouts in Ceres Theme.
---

Ceres Theme includes three layouts for different types of pages.

## Available Layouts

| Layout | Purpose | Use For |
|--------|---------|---------|
| `default` | Base layout with header and footer | Foundation for other layouts |
| `home` | Full-width landing pages | Homepage, marketing pages |
| `page` | Standard content pages | About, contact, general pages |

---

## Default Layout

The base layout that includes the header, footer, navigation, and all required CSS and JavaScript.

All other layouts extend `default`, so you typically won't use it directly.

**Includes:**
- Google Fonts (Space Grotesk, JetBrains Mono)
- Bootstrap Icons
- Theme CSS
- Header with navigation
- Footer with links and social icons
- Scroll effect for navbar

---

## Home Layout

Use the `home` layout for landing pages where you want full-width sections.

```html
---
layout: home
title: Welcome to My Site
---

<section class="hero">
    <div class="container">
        <!-- Hero content -->
    </div>
</section>

<section id="features">
    <div class="container">
        <!-- Features content -->
    </div>
</section>
```

**Characteristics:**
- Full-width sections
- No default content wrapper
- Ideal for custom section-based layouts
- Works with all components (hero, bento grid, pricing, etc.)

---

## Page Layout

Use the `page` layout for standard content pages like About, Contact, or any text-heavy pages.

```markdown
---
layout: page
title: About Us
---

## Our Story

We started this company in 2020...
```

Or with HTML:

```html
---
layout: page
title: Contact
---

<h2>Get in Touch</h2>
<p>We'd love to hear from you.</p>
```

**Characteristics:**
- Content wrapped in `<main>` tag
- Standard container width
- Good for Markdown content
- Automatic typography styling

---

## Using Layouts

### In HTML Files

```html
---
layout: home
title: My Page Title
---

<!-- Your HTML content here -->
```

### In Markdown Files

```markdown
---
layout: page
title: My Page Title
---

Your markdown content here...
```

---

## Page Front Matter

All layouts support these front matter variables:

| Variable | Description |
|----------|-------------|
| `layout` | Which layout to use |
| `title` | Page title (used in `<title>` tag) |
| `description` | Page description (used in meta tags) |
| `lang` | Page language (defaults to `en`) |
| `custom_js` | Path to custom JavaScript file |

**Example:**

```yaml
---
layout: page
title: About Our Company
description: Learn about our mission and team.
lang: en
custom_js: /assets/js/about.js
---
```

---

## Creating Custom Layouts

You can create your own layouts by extending the default layout. Create a file in `_layouts/`:

```html
<!-- _layouts/docs.html -->
---
layout: default
---

<div class="docs-wrapper">
    <aside class="sidebar">
        <!-- Sidebar navigation -->
    </aside>
    <main class="content">
        {{ content }}
    </main>
</div>
```

Then use it in your pages:

```markdown
---
layout: docs
title: Documentation
---
```

---

## Layout Examples

### Landing Page (home)

```html
---
layout: home
title: Product Name - Tagline Here
---

{% include hero.html
   tag="New Release"
   title="Welcome to <span class='gradient'>Product</span>"
   description="A brief product description."
   cta_primary="Get Started"
   cta_primary_url="#pricing"
%}

<!-- More sections... -->
```

### Content Page (page)

```markdown
---
layout: page
title: Privacy Policy
---

## Introduction

This privacy policy explains how we collect and use your data...

## Data Collection

We collect the following information:

- Name and email address
- Usage statistics
- ...
```
