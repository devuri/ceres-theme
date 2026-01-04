---
layout: docs
title: Use Cases
description: Horizontal cards with icons for showcasing use cases, benefits, or audience segments.
---

The use cases component displays horizontal cards with icons on the left, perfect for showcasing different use cases, target audiences, or key benefits.

## Basic Usage

```html
<div class="use-cases-grid">
    <div class="use-case-card">
        <div class="use-case-icon"><i class="bi bi-building"></i></div>
        <div>
            <h3>Enterprise Teams</h3>
            <p>Scale your operations with advanced security and admin controls.</p>
        </div>
    </div>
    <div class="use-case-card">
        <div class="use-case-icon"><i class="bi bi-people"></i></div>
        <div>
            <h3>Small Teams</h3>
            <p>Collaborate effectively without the complexity of enterprise tools.</p>
        </div>
    </div>
</div>
```

---

## Complete Section Example

```html
<section id="use-cases">
    <div class="container">
        <div class="text-center">
            <span class="section-number">Use Cases</span>
            <h2 class="section-title">Built for everyone</h2>
            <p class="section-desc">From startups to enterprises, we've got you covered.</p>
        </div>
        
        <div class="use-cases-grid">
            <div class="use-case-card">
                <div class="use-case-icon"><i class="bi bi-rocket-takeoff"></i></div>
                <div>
                    <h3>Startups</h3>
                    <p>Move fast with templates and integrations built for speed.</p>
                </div>
            </div>
            <div class="use-case-card">
                <div class="use-case-icon"><i class="bi bi-graph-up"></i></div>
                <div>
                    <h3>Marketing Teams</h3>
                    <p>Track campaigns, analyze performance, and optimize spend.</p>
                </div>
            </div>
            <div class="use-case-card">
                <div class="use-case-icon"><i class="bi bi-code-slash"></i></div>
                <div>
                    <h3>Developers</h3>
                    <p>Powerful APIs and webhooks for custom integrations.</p>
                </div>
            </div>
            <div class="use-case-card">
                <div class="use-case-icon"><i class="bi bi-briefcase"></i></div>
                <div>
                    <h3>Agencies</h3>
                    <p>Manage multiple clients with workspaces and white-labeling.</p>
                </div>
            </div>
        </div>
    </div>
</section>
```

---

## CSS Classes

| Class | Description |
|-------|-------------|
| `.use-cases-grid` | 2-column grid container |
| `.use-case-card` | Horizontal card with flexbox layout |
| `.use-case-icon` | Icon container on the left |

---

## Styling Details

### Use Cases Grid

- 2-column grid on desktop
- 1-column on tablet and mobile
- 1.5rem gap between cards
- 4rem top margin

### Use Case Card

- White background
- 1px border (gray-200)
- 16px border radius
- 2rem padding
- Flexbox layout with 1.5rem gap
- Hover effect: lighter border, subtle shadow

### Use Case Icon

- 48px × 48px
- Accent color background at 10% opacity
- 10px border radius
- Centered icon in accent color
- Flex-shrink: 0 (prevents squishing)

---

## Responsive Behavior

| Breakpoint | Layout |
|------------|--------|
| Desktop (>992px) | 2 columns |
| Tablet/Mobile (≤992px) | 1 column |

---

## Variations

### Benefits List

Use for listing key benefits:

```html
<div class="use-cases-grid">
    <div class="use-case-card">
        <div class="use-case-icon"><i class="bi bi-clock"></i></div>
        <div>
            <h3>Save Time</h3>
            <p>Automate repetitive tasks and focus on what matters.</p>
        </div>
    </div>
    <div class="use-case-card">
        <div class="use-case-icon"><i class="bi bi-currency-dollar"></i></div>
        <div>
            <h3>Save Money</h3>
            <p>Reduce costs with efficient workflows and fewer tools.</p>
        </div>
    </div>
    <div class="use-case-card">
        <div class="use-case-icon"><i class="bi bi-graph-up-arrow"></i></div>
        <div>
            <h3>Grow Faster</h3>
            <p>Scale your operations without scaling your team.</p>
        </div>
    </div>
    <div class="use-case-card">
        <div class="use-case-icon"><i class="bi bi-shield-check"></i></div>
        <div>
            <h3>Stay Secure</h3>
            <p>Enterprise-grade security for peace of mind.</p>
        </div>
    </div>
</div>
```

### Industry Segments

Target different industries:

```html
<div class="use-cases-grid">
    <div class="use-case-card">
        <div class="use-case-icon"><i class="bi bi-hospital"></i></div>
        <div>
            <h3>Healthcare</h3>
            <p>HIPAA-compliant solutions for medical practices.</p>
        </div>
    </div>
    <div class="use-case-card">
        <div class="use-case-icon"><i class="bi bi-bank"></i></div>
        <div>
            <h3>Finance</h3>
            <p>Secure tools for financial institutions.</p>
        </div>
    </div>
    <div class="use-case-card">
        <div class="use-case-icon"><i class="bi bi-mortarboard"></i></div>
        <div>
            <h3>Education</h3>
            <p>Affordable plans for schools and universities.</p>
        </div>
    </div>
    <div class="use-case-card">
        <div class="use-case-icon"><i class="bi bi-shop"></i></div>
        <div>
            <h3>Retail</h3>
            <p>Inventory and customer management tools.</p>
        </div>
    </div>
</div>
```

---

## Customization

### Different Icon Colors

```scss
.use-case-card:nth-child(1) .use-case-icon {
    background: rgba(16, 185, 129, 0.1);
    i { color: #10b981; }
}

.use-case-card:nth-child(2) .use-case-icon {
    background: rgba(245, 158, 11, 0.1);
    i { color: #f59e0b; }
}
```

### Three-Column Layout

```scss
.use-cases-grid {
    grid-template-columns: repeat(3, 1fr);
}
```

### Vertical Cards

Convert to a vertical layout:

```scss
.use-case-card {
    flex-direction: column;
    text-align: center;
}

.use-case-icon {
    margin: 0 auto;
}
```

---

## Best Practices

1. **Use consistent icons** — Choose icons from the same family/style
2. **Keep descriptions short** — One or two sentences maximum
3. **Be specific** — Generic descriptions don't convert
4. **Use even numbers** — 2 or 4 cards work best in a 2-column grid
