---
layout: docs
title: Hero Section
description: Create eye-catching hero sections with gradient text, stats, and call-to-action buttons.
---

The hero section is typically the first thing visitors see. It spans the full viewport height and includes a tag line, headline, description, CTA buttons, and optional stats.

## Basic Usage

### Using the Include

```liquid
{% raw %}{% include hero.html
   tag="Jekyll Theme"
   title="Build beautiful sites with <span class='gradient'>Ceres</span>"
   description="A clean, modern theme for GitHub Pages."
   cta_primary="Get Started"
   cta_primary_url="/getting-started"
   cta_secondary="View on GitHub"
   cta_secondary_url="https://github.com/devuri/ceres-theme"
%}{% endraw %}
```

### Using HTML

```html
<section class="hero">
    <div class="container">
        <div class="hero-content">
            <div class="hero-tag">Jekyll Theme</div>
            <h1>Build beautiful sites with <span class="gradient">Ceres</span></h1>
            <p>A clean, modern theme for GitHub Pages.</p>
            <div class="hero-actions">
                <a href="/getting-started" class="btn btn-glow btn-lg">Get Started</a>
                <a href="https://github.com" class="btn btn-ghost btn-lg">View on GitHub</a>
            </div>
        </div>
    </div>
</section>
```

---

## Include Parameters

| Parameter | Description | Required |
|-----------|-------------|----------|
| `tag` | Small uppercase label above the title | No |
| `title` | Main headline (supports HTML for gradient) | Yes |
| `description` | Paragraph text below the headline | No |
| `cta_primary` | Primary button text | No |
| `cta_primary_url` | Primary button link | No |
| `cta_secondary` | Secondary button text | No |
| `cta_secondary_url` | Secondary button link | No |
| `stats` | Array of stat objects for hero stats | No |

---

## With Stats

Add stats below the CTA buttons by passing a `stats` array:

### In Front Matter

```yaml
---
layout: home
title: Home
hero_stats:
  - value: "10k+"
    label: "Users"
  - value: "99.9%"
    label: "Uptime"
  - value: "24/7"
    label: "Support"
---
```

### In the Include

```liquid
{% raw %}{% include hero.html
   tag="SaaS Product"
   title="Your headline here"
   description="Description text."
   cta_primary="Get Started"
   cta_primary_url="#pricing"
   stats=page.hero_stats
%}{% endraw %}
```

### Or with HTML

```html
<section class="hero">
    <div class="container">
        <div class="hero-content">
            <div class="hero-tag">SaaS Product</div>
            <h1>Your headline here</h1>
            <p>Description text.</p>
            <div class="hero-actions">
                <a href="#pricing" class="btn btn-glow btn-lg">Get Started</a>
            </div>
            <div class="hero-stats">
                <div class="stat-item">
                    <div class="stat-value">10k+</div>
                    <div class="stat-label">Users</div>
                </div>
                <div class="stat-item">
                    <div class="stat-value">99.9%</div>
                    <div class="stat-label">Uptime</div>
                </div>
                <div class="stat-item">
                    <div class="stat-value">24/7</div>
                    <div class="stat-label">Support</div>
                </div>
            </div>
        </div>
    </div>
</section>
```

---

## Gradient Text

Use the `.gradient` class inside headings to apply the accent gradient:

```html
<h1>Build something <span class="gradient">amazing</span></h1>
```

You can apply it to any part of the headline:

```html
<h1><span class="gradient">Transform</span> your workflow</h1>
```

---

## CSS Classes

| Class | Description |
|-------|-------------|
| `.hero` | Main hero section container |
| `.hero-content` | Content wrapper (max-width 540px) |
| `.hero-tag` | Small uppercase label |
| `.hero-actions` | Button container |
| `.hero-stats` | Stats row container |
| `.stat-item` | Individual stat |
| `.stat-value` | Large stat number |
| `.stat-label` | Small stat description |
| `.gradient` | Gradient text effect |

---

## Styling

The hero section includes:

- Full viewport height (`min-height: 100vh`)
- Gradient background from gray-50 to white
- Subtle radial gradient accent overlay
- Responsive typography (scales down on mobile)
- Centered content on mobile

### Customizing the Background

Override the hero background in your custom CSS:

```scss
.hero {
    background: linear-gradient(180deg, #f0f9ff 0%, #ffffff 100%);
}
```

---

## Responsive Behavior

| Breakpoint | Changes |
|------------|---------|
| Desktop (>992px) | Full layout, large typography |
| Tablet (768-992px) | Reduced font sizes |
| Mobile (<768px) | Centered, stacked buttons, column stats |

---

## Examples

### Minimal Hero

```html
<section class="hero">
    <div class="container">
        <div class="hero-content">
            <h1>Simple and clean</h1>
            <p>Sometimes less is more.</p>
        </div>
    </div>
</section>
```

### Full Featured Hero

```liquid
{% raw %}{% include hero.html
   tag="Launching Soon"
   title="The future of <span class='gradient'>productivity</span>"
   description="Join thousands of teams who are already transforming how they work."
   cta_primary="Join Waitlist"
   cta_primary_url="/waitlist"
   cta_secondary="Learn More"
   cta_secondary_url="#features"
   stats=page.hero_stats
%}{% endraw %}
```
