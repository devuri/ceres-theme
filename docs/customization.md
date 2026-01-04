---
layout: docs
title: Customization
description: Learn how to customize colors, fonts, and styles in Ceres Theme.
---

Ceres Theme is designed to be easily customizable. You can override colors, fonts, and component styles without modifying the theme files directly.

## Custom CSS File

### Step 1: Create the File

Create `assets/css/custom.scss` in your project:

```scss
---
---

// Your custom styles here
```

<div class="callout info">
<strong>Important</strong>
<p>The empty front matter (the two lines of <code>---</code>) is required for Jekyll to process the SCSS file.</p>
</div>

### Step 2: Reference in Config

Add to your `_config.yml`:

```yaml
custom_css: /assets/css/custom.scss
```

---

## Changing Colors

Override CSS custom properties in your custom file:

```scss
---
---

:root {
    // Primary accent color
    --er-accent: #10b981;
    --er-accent-dark: #059669;
    --er-accent-dim: rgba(16, 185, 129, 0.1);
    
    // Optionally change other colors
    --er-black: #1a1a2e;
    --er-gray-50: #f0f4f8;
}
```

See the [Colors](/colors) page for all available color variables.

---

## Changing Fonts

### Replace Primary Font

```scss
---
---

// Import your font
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');

* {
    font-family: 'Inter', sans-serif;
}
```

### Replace Code Font

```scss
code, pre, .mono {
    font-family: 'Fira Code', monospace;
}
```

---

## Overriding Components

### Buttons

```scss
// Larger border radius
.btn {
    border-radius: 50px; // Pill shape
}

// Different primary button color
.btn-glow {
    background: linear-gradient(135deg, #ec4899 0%, #8b5cf6 100%);
    
    &:hover {
        box-shadow: 0 4px 20px rgba(236, 72, 153, 0.35);
    }
}
```

### Hero Section

```scss
// Custom hero background
.hero {
    background: linear-gradient(180deg, #1a1a2e 0%, #16213e 100%);
    
    h1 {
        color: #ffffff;
    }
    
    p {
        color: #a0aec0;
    }
}

// Larger hero title
.hero h1 {
    font-size: 4.5rem;
}
```

### Cards

```scss
// Rounded cards
.bento-card,
.pricing-card,
.use-case-card {
    border-radius: 24px;
}

// Shadow on cards
.bento-card {
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
    border: none;
}
```

### Navigation

```scss
// Always visible navbar background
.navbar {
    background: rgba(255, 255, 255, 0.95);
    backdrop-filter: blur(20px);
}

// Larger logo
.navbar-brand {
    font-size: 1.5rem;
}
```

### Footer

```scss
// Dark footer
.site-footer {
    background: var(--er-black);
    border-top: none;
    
    .footer-brand,
    .footer-title {
        color: var(--er-white);
    }
    
    .footer-desc,
    .footer-links a,
    .footer-bottom p {
        color: var(--er-gray-400);
    }
}
```

---

## Overriding Layouts

Copy any layout file from the theme to your project at the same path to override it.

### Example: Custom Default Layout

Create `_layouts/default.html`:

```html
<!DOCTYPE html>
<html lang="{{ page.lang | default: 'en' }}">
<head>
    <!-- Your custom head content -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ page.title }} | {{ site.title }}</title>
    
    <!-- Add your own fonts, scripts, etc. -->
    <link rel="stylesheet" href="{{ '/assets/css/style.css' | relative_url }}">
</head>
<body>
    {% include header.html %}
    
    {{ content }}
    
    {% include footer.html %}
    
    <!-- Add your own scripts -->
</body>
</html>
```

---

## Overriding Includes

Similarly, copy any include file to override it.

### Example: Custom Header

Create `_includes/header.html`:

```html
<header class="navbar">
    <div class="container">
        <!-- Your custom logo -->
        <a href="{{ '/' | relative_url }}" class="navbar-brand">
            <img src="/assets/images/logo.svg" alt="{{ site.title }}">
        </a>
        
        <!-- Your custom navigation -->
        <nav>
            <!-- ... -->
        </nav>
    </div>
</header>
```

---

## Adding Custom JavaScript

### Per-Page JavaScript

Add to page front matter:

```yaml
---
layout: home
title: My Page
custom_js: /assets/js/my-script.js
---
```

### Global JavaScript

Override the default layout and add your script:

```html
<script src="{{ '/assets/js/global.js' | relative_url }}"></script>
```

---

## Responsive Customization

Override responsive styles:

```scss
// Custom mobile styles
@media (max-width: 768px) {
    .hero h1 {
        font-size: 2rem;
    }
    
    .bento-grid {
        gap: 1rem;
    }
}

// Custom tablet styles
@media (max-width: 992px) {
    .pricing-grid {
        grid-template-columns: 1fr;
        max-width: 400px;
        margin: 0 auto;
    }
}
```

---

## Tips

1. **Use CSS variables** — Override `--er-*` variables for global changes
2. **Be specific** — Use specific selectors to override component styles
3. **Test responsively** — Check your customizations on all screen sizes
4. **Keep it minimal** — Only override what you need to change
5. **Document changes** — Comment your custom CSS for future reference

---

## Example: Complete Custom Theme

```scss
---
---

// Custom color scheme
:root {
    --er-accent: #8b5cf6;
    --er-accent-dark: #7c3aed;
    --er-accent-dim: rgba(139, 92, 246, 0.1);
    --er-black: #1e1b4b;
}

// Custom font
@import url('https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap');

* {
    font-family: 'Plus Jakarta Sans', sans-serif;
}

// Pill-shaped buttons
.btn {
    border-radius: 50px;
}

// Softer card corners
.bento-card,
.pricing-card,
.use-case-card,
.step-card {
    border-radius: 20px;
}

// Custom gradient
.gradient {
    background: linear-gradient(135deg, #8b5cf6 0%, #ec4899 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

// Dark footer
.site-footer {
    background: var(--er-black);
    
    .footer-brand, .footer-title {
        color: #fff;
    }
    
    .footer-desc, .footer-links a, .footer-bottom p {
        color: #a5b4fc;
    }
}
```
