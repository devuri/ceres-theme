---
layout: docs
title: Components
description: Overview of all pre-built UI components available in Ceres Theme.
---

Ceres Theme includes a comprehensive set of pre-built components for building professional landing pages.

## Component List

| Component | Description | Use For |
|-----------|-------------|---------|
| [Hero](/components/hero) | Full-height intro section | Page headers, landing intros |
| [Bento Grid](/components/bento-grid) | Feature card grid | Feature showcases |
| [Steps](/components/steps) | Numbered step cards | Processes, how-it-works |
| [Use Cases](/components/use-cases) | Horizontal cards with icons | Use cases, benefits |
| [Pricing](/components/pricing) | Pricing tier cards | Pricing pages |
| [CTA](/components/cta) | Call-to-action section | Page endings, conversions |

---

## Using Components

### As Includes

Some components are available as Jekyll includes:

```liquid
{% raw %}{% include hero.html
   tag="Welcome"
   title="Hello <span class='gradient'>World</span>"
   description="Your description here."
   cta_primary="Get Started"
   cta_primary_url="#"
%}{% endraw %}
```

### As HTML

All components can also be used as plain HTML:

```html
<section class="hero">
    <div class="container">
        <div class="hero-content">
            <div class="hero-tag">Welcome</div>
            <h1>Hello <span class="gradient">World</span></h1>
        </div>
    </div>
</section>
```

---

## Available Includes

The theme provides these reusable includes:

### hero.html

Full-height hero section with tag, title, description, CTAs, and optional stats.

[View Hero Documentation →](/components/hero)

### bento-card.html

Individual feature card for use in bento grids.

[View Bento Grid Documentation →](/components/bento-grid)

### pricing-card.html

Individual pricing tier card.

[View Pricing Documentation →](/components/pricing)

### cta.html

Call-to-action section with title, description, and buttons.

[View CTA Documentation →](/components/cta)

---

## Component Sections

Most components are organized into sections. Use this pattern:

```html
<section id="features">
    <div class="container">
        <span class="section-number">Features</span>
        <h2 class="section-title">Why Choose Us</h2>
        <p class="section-desc">Our key features explained.</p>
        
        <!-- Component content here -->
    </div>
</section>
```

### Section Classes

| Class | Description |
|-------|-------------|
| `section` | Standard section (automatic with `<section>` tag) |
| `section-gray` | Gray background section |
| `section-number` | Small uppercase label above title |
| `section-title` | Large section heading |
| `section-desc` | Section description text |

---

## Quick Examples

### Feature Section

```html
<section id="features">
    <div class="container">
        <div class="text-center">
            <span class="section-number">Features</span>
            <h2 class="section-title">Everything you need</h2>
        </div>
        
        <div class="bento-grid">
            <div class="bento-card">
                <div class="bento-icon"><i class="bi bi-shield-check"></i></div>
                <h3>Secure</h3>
                <p>Enterprise-grade security built in.</p>
            </div>
            <!-- More cards... -->
        </div>
    </div>
</section>
```

### Pricing Section

```html
<section id="pricing" class="section-gray">
    <div class="container">
        <div class="text-center">
            <span class="section-number">Pricing</span>
            <h2 class="section-title">Simple pricing</h2>
        </div>
        
        <div class="pricing-grid">
            <!-- Pricing cards... -->
        </div>
    </div>
</section>
```

---

## Next Steps

Explore each component in detail:

- [Hero Section](/components/hero)
- [Bento Grid](/components/bento-grid)
- [Steps](/components/steps)
- [Use Cases](/components/use-cases)
- [Pricing Cards](/components/pricing)
- [CTA Section](/components/cta)
