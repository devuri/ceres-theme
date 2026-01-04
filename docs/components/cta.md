---
layout: docs
title: CTA Section
description: Call-to-action sections to drive conversions at the end of your pages.
---

The CTA (Call-to-Action) section is typically placed at the end of a page to encourage visitors to take action. It features a centered layout with a headline, description, and action buttons.

## Basic Usage

### Using the Include

```liquid
{% raw %}{% include cta.html
   title="Ready to get started?"
   description="Join thousands of happy customers today."
   cta_primary="Get Started"
   cta_primary_url="/signup"
   cta_secondary="Contact Sales"
   cta_secondary_url="/contact"
%}{% endraw %}
```

### Using HTML

```html
<section class="cta-section">
    <div class="container">
        <h2>Ready to get started?</h2>
        <p>Join thousands of happy customers today.</p>
        <div class="cta-actions">
            <a href="/signup" class="btn btn-glow btn-lg">Get Started</a>
            <a href="/contact" class="btn btn-ghost btn-lg">Contact Sales</a>
        </div>
    </div>
</section>
```

---

## Include Parameters

| Parameter | Description | Required |
|-----------|-------------|----------|
| `title` | Main headline | Yes |
| `description` | Supporting text | No |
| `cta_primary` | Primary button text | No |
| `cta_primary_url` | Primary button link | No |
| `cta_primary_icon` | Icon for primary button | No |
| `cta_secondary` | Secondary button text | No |
| `cta_secondary_url` | Secondary button link | No |
| `cta_secondary_icon` | Icon for secondary button | No |

---

## Examples

### Simple CTA

```liquid
{% raw %}{% include cta.html
   title="Start your free trial"
   description="No credit card required."
   cta_primary="Try Free"
   cta_primary_url="/signup"
%}{% endraw %}
```

### With Icons

```liquid
{% raw %}{% include cta.html
   title="Ready to dive in?"
   description="Get started with our comprehensive documentation."
   cta_primary="View Docs"
   cta_primary_url="/docs"
   cta_primary_icon="book"
   cta_secondary="Watch Demo"
   cta_secondary_url="/demo"
   cta_secondary_icon="play-circle"
%}{% endraw %}
```

### Newsletter Signup Style

```html
<section class="cta-section">
    <div class="container">
        <h2>Stay in the loop</h2>
        <p>Get the latest updates delivered to your inbox.</p>
        <div class="cta-actions">
            <a href="/newsletter" class="btn btn-glow btn-lg">
                <i class="bi bi-envelope"></i> Subscribe
            </a>
        </div>
    </div>
</section>
```

---

## CSS Classes

| Class | Description |
|-------|-------------|
| `.cta-section` | Main section container |
| `.cta-actions` | Button container |

---

## Styling Details

### Section

- Gray background (`gray-50`)
- 8rem vertical padding
- Centered text
- Radial gradient accent overlay

### Headline

- 3rem font size
- 700 font weight
- Tight letter spacing (-0.03em)
- 1.5rem bottom margin

### Description

- 1.2rem font size
- Gray-500 color
- Max-width 500px
- Auto horizontal margins (centered)
- 2.5rem bottom margin

### Button Container

- Flexbox with center alignment
- 1rem gap between buttons

---

## Responsive Behavior

| Breakpoint | Changes |
|------------|---------|
| Desktop | Side-by-side buttons |
| Mobile (<768px) | Stacked buttons, 2rem font size for headline |

---

## Variations

### Dark Background CTA

Create a custom dark CTA section:

```html
<section class="cta-section cta-dark">
    <div class="container">
        <h2>Join our community</h2>
        <p>Connect with thousands of developers.</p>
        <div class="cta-actions">
            <a href="#" class="btn btn-glow btn-lg">Join Now</a>
        </div>
    </div>
</section>
```

```scss
.cta-dark {
    background: var(--er-black);
    
    &::before {
        background: radial-gradient(circle, rgba(99, 102, 241, 0.2) 0%, transparent 70%);
    }
    
    h2 {
        color: var(--er-white);
    }
    
    p {
        color: var(--er-gray-400);
    }
}
```

### Accent Background CTA

```scss
.cta-accent {
    background: linear-gradient(135deg, var(--er-accent) 0%, var(--er-accent-dark) 100%);
    
    &::before {
        display: none;
    }
    
    h2, p {
        color: var(--er-white);
    }
    
    .btn-ghost {
        color: var(--er-white);
        border-color: rgba(255, 255, 255, 0.3);
        
        &:hover {
            background: rgba(255, 255, 255, 0.1);
            border-color: var(--er-white);
        }
    }
}
```

### With Form

```html
<section class="cta-section">
    <div class="container">
        <h2>Get early access</h2>
        <p>Be the first to know when we launch.</p>
        <form class="cta-form">
            <input type="email" placeholder="Enter your email" class="cta-input">
            <button type="submit" class="btn btn-glow">Notify Me</button>
        </form>
    </div>
</section>
```

```scss
.cta-form {
    display: flex;
    gap: 1rem;
    max-width: 500px;
    margin: 0 auto;
}

.cta-input {
    flex: 1;
    padding: 1rem 1.5rem;
    border: 1px solid var(--er-gray-300);
    border-radius: 8px;
    font-size: 1rem;
    
    &:focus {
        outline: none;
        border-color: var(--er-accent);
    }
}
```

---

## Placement Tips

1. **End of landing pages** — Primary use case, encourage conversion
2. **After feature sections** — Remind visitors to take action
3. **In the middle of long pages** — Break up content and provide exit points
4. **Footer alternative** — Replace or supplement the default footer

---

## Best Practices

1. **Strong headline** — Use action-oriented language
2. **Clear value proposition** — Tell visitors what they'll get
3. **Prominent button** — Make the primary CTA stand out
4. **Single focus** — Don't offer too many options
5. **Urgency (optional)** — "Limited time" or "Join 10,000+ users"
