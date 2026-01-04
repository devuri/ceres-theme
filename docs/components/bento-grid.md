---
layout: docs
title: Bento Grid
description: Create flexible feature card grids with icons, titles, and descriptions.
---

The bento grid is a flexible card layout for showcasing features, benefits, or any collection of items. Cards can span multiple columns for visual hierarchy.

## Basic Usage

### Grid Container

```html
<div class="bento-grid">
    <div class="bento-card">
        <div class="bento-icon"><i class="bi bi-shield-check"></i></div>
        <h3>Secure</h3>
        <p>Enterprise-grade security for all your data.</p>
    </div>
    <div class="bento-card">
        <div class="bento-icon"><i class="bi bi-lightning"></i></div>
        <h3>Fast</h3>
        <p>Optimized for speed and performance.</p>
    </div>
    <div class="bento-card">
        <div class="bento-icon"><i class="bi bi-gear"></i></div>
        <h3>Flexible</h3>
        <p>Customize everything to fit your needs.</p>
    </div>
</div>
```

### Using the Include

```liquid
{% raw %}{% include bento-card.html
   icon="shield-check"
   title="Secure"
   description="Enterprise-grade security for all your data."
%}{% endraw %}
```

---

## Include Parameters

| Parameter | Description | Required |
|-----------|-------------|----------|
| `icon` | Bootstrap Icons icon name (without `bi-` prefix) | No |
| `title` | Card heading | Yes |
| `description` | Card body text | Yes |
| `large` | Set to `true` for 2-column span | No |
| `visual_icon` | Large background icon for visual effect | No |
| `content` | Additional HTML content | No |

---

## Large Cards

Use the `.large` class or `large=true` parameter to span two columns:

```html
<div class="bento-grid">
    <div class="bento-card">
        <div class="bento-icon"><i class="bi bi-star"></i></div>
        <h3>Feature One</h3>
        <p>Description here.</p>
    </div>
    <div class="bento-card large">
        <div class="bento-icon"><i class="bi bi-rocket"></i></div>
        <h3>Featured Item</h3>
        <p>This card spans two columns for more emphasis and content.</p>
    </div>
    <div class="bento-card">
        <div class="bento-icon"><i class="bi bi-heart"></i></div>
        <h3>Feature Three</h3>
        <p>Description here.</p>
    </div>
</div>
```

Or with includes:

```liquid
{% raw %}{% include bento-card.html
   icon="rocket"
   title="Featured Item"
   description="This card spans two columns."
   large=true
%}{% endraw %}
```

---

## Visual Background Icon

Add a large decorative icon in the background:

```liquid
{% raw %}{% include bento-card.html
   icon="shield-check"
   title="Security First"
   description="Built with security in mind from day one."
   visual_icon="shield"
%}{% endraw %}
```

Or in HTML:

```html
<div class="bento-card">
    <div class="bento-icon"><i class="bi bi-shield-check"></i></div>
    <h3>Security First</h3>
    <p>Built with security in mind from day one.</p>
    <div class="bento-visual">
        <i class="bi bi-shield"></i>
    </div>
</div>
```

---

## Complete Section Example

```html
<section id="features">
    <div class="container">
        <div class="text-center">
            <span class="section-number">Features</span>
            <h2 class="section-title">Everything you need</h2>
            <p class="section-desc">A complete solution for modern teams.</p>
        </div>
        
        <div class="bento-grid">
            <div class="bento-card">
                <div class="bento-icon"><i class="bi bi-lightning-charge"></i></div>
                <h3>Lightning Fast</h3>
                <p>Optimized for speed with sub-second load times.</p>
            </div>
            <div class="bento-card">
                <div class="bento-icon"><i class="bi bi-shield-lock"></i></div>
                <h3>Secure by Default</h3>
                <p>Enterprise-grade security built into every layer.</p>
            </div>
            <div class="bento-card">
                <div class="bento-icon"><i class="bi bi-phone"></i></div>
                <h3>Mobile Ready</h3>
                <p>Responsive design that works on any device.</p>
            </div>
            <div class="bento-card large">
                <div class="bento-icon"><i class="bi bi-puzzle"></i></div>
                <h3>Integrations</h3>
                <p>Connect with your favorite tools. We support Slack, GitHub, Jira, and 50+ other apps out of the box.</p>
            </div>
            <div class="bento-card">
                <div class="bento-icon"><i class="bi bi-people"></i></div>
                <h3>Team Collaboration</h3>
                <p>Work together seamlessly with real-time updates.</p>
            </div>
        </div>
    </div>
</section>
```

---

## CSS Classes

| Class | Description |
|-------|-------------|
| `.bento-grid` | Grid container (3 columns on desktop) |
| `.bento-card` | Individual card |
| `.bento-card.large` | Card spanning 2 columns |
| `.bento-icon` | Icon container |
| `.bento-visual` | Large background decorative icon |

---

## Grid Layout

The bento grid uses CSS Grid:

| Breakpoint | Columns |
|------------|---------|
| Desktop (>992px) | 3 columns |
| Tablet (768-992px) | 2 columns |
| Mobile (<768px) | 1 column |

Large cards always span 2 columns on tablet+ and 1 column on mobile.

---

## Styling

### Card Dimensions

- Minimum height: 280px
- Padding: 2rem
- Border radius: 16px
- Gap between cards: 1.5rem

### Icon Styling

- Size: 52px × 52px
- Background: Accent color at 10% opacity
- Border radius: 12px
- Icon color: Accent color

### Hover Effects

Cards include a subtle hover animation:
- Border color lightens
- Box shadow appears
- Card lifts up 4px

---

## Customization

Override card styles in your custom CSS:

```scss
.bento-card {
    // Custom background
    background: linear-gradient(135deg, #fff 0%, #f8fafc 100%);
    
    // Custom min-height
    min-height: 200px;
}

.bento-icon {
    // Custom icon background
    background: rgba(16, 185, 129, 0.1);
    
    // Custom icon color
    i {
        color: #10b981;
    }
}
```
