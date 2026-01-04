---
layout: docs
title: Colors
description: Color palette and CSS custom properties used throughout Ceres Theme.
---

Ceres Theme uses CSS custom properties (variables) for all colors, making it easy to customize the entire color scheme.

## Color Palette

### Primary Colors

| Variable | Value | Description |
|----------|-------|-------------|
| `--er-white` | `#ffffff` | White |
| `--er-black` | `#0f172a` | Dark blue-black |
| `--er-accent` | `#6366f1` | Indigo accent |
| `--er-accent-dark` | `#4f46e5` | Darker indigo |
| `--er-accent-dim` | `rgba(99, 102, 241, 0.1)` | Accent at 10% opacity |

### Gray Scale

| Variable | Value | Description |
|----------|-------|-------------|
| `--er-gray-50` | `#f8fafc` | Lightest gray (backgrounds) |
| `--er-gray-100` | `#f1f5f9` | Very light gray |
| `--er-gray-200` | `#e2e8f0` | Light gray (borders) |
| `--er-gray-300` | `#cbd5e1` | Medium-light gray |
| `--er-gray-400` | `#94a3b8` | Medium gray |
| `--er-gray-500` | `#64748b` | Medium-dark gray (secondary text) |
| `--er-gray-600` | `#475569` | Dark gray (body text) |
| `--er-gray-700` | `#334155` | Darker gray |

### Semantic Colors

| Variable | Value | Description |
|----------|-------|-------------|
| `--er-success` | `#10b981` | Green (success states) |
| `--er-warning` | `#f59e0b` | Amber (warnings) |
| `--er-danger` | `#ef4444` | Red (errors) |

---

## Usage

### In CSS

```css
.my-element {
    color: var(--er-accent);
    background: var(--er-gray-50);
    border-color: var(--er-gray-200);
}
```

### In SCSS

The theme also provides SCSS variables:

```scss
$er-accent: #6366f1;
$er-gray-500: #64748b;

.my-element {
    color: $er-accent;
}
```

---

## Color Applications

### Text Colors

| Use Case | Variable |
|----------|----------|
| Headings | `--er-black` |
| Body text | `--er-gray-600` or `--er-gray-700` |
| Secondary text | `--er-gray-500` |
| Muted text | `--er-gray-400` |
| Links | `--er-accent` |

### Background Colors

| Use Case | Variable |
|----------|----------|
| Page background | `--er-white` |
| Section background | `--er-gray-50` |
| Card background | `--er-white` |
| Icon background | `--er-accent-dim` |

### Border Colors

| Use Case | Variable |
|----------|----------|
| Default borders | `--er-gray-200` |
| Hover borders | `--er-gray-300` |
| Focus/active borders | `--er-accent` |

---

## Customizing Colors

### Override in Custom CSS

Create `assets/css/custom.scss`:

```scss
---
---

:root {
    // Change the accent color
    --er-accent: #10b981;
    --er-accent-dark: #059669;
    --er-accent-dim: rgba(16, 185, 129, 0.1);
}
```

### Common Color Schemes

#### Green Accent

```scss
:root {
    --er-accent: #10b981;
    --er-accent-dark: #059669;
    --er-accent-dim: rgba(16, 185, 129, 0.1);
}
```

#### Blue Accent

```scss
:root {
    --er-accent: #3b82f6;
    --er-accent-dark: #2563eb;
    --er-accent-dim: rgba(59, 130, 246, 0.1);
}
```

#### Purple Accent

```scss
:root {
    --er-accent: #8b5cf6;
    --er-accent-dark: #7c3aed;
    --er-accent-dim: rgba(139, 92, 246, 0.1);
}
```

#### Orange Accent

```scss
:root {
    --er-accent: #f97316;
    --er-accent-dark: #ea580c;
    --er-accent-dim: rgba(249, 115, 22, 0.1);
}
```

#### Pink Accent

```scss
:root {
    --er-accent: #ec4899;
    --er-accent-dark: #db2777;
    --er-accent-dim: rgba(236, 72, 153, 0.1);
}
```

---

## Gradient

The theme includes a text gradient using the accent colors:

```css
.gradient {
    background: linear-gradient(135deg, var(--er-accent) 0%, var(--er-accent-dark) 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}
```

### Custom Gradient

Override the gradient in your custom CSS:

```scss
.gradient {
    background: linear-gradient(135deg, #ec4899 0%, #8b5cf6 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}
```

---

## Dark Mode (Custom)

Ceres Theme doesn't include dark mode by default, but you can add it:

```scss
@media (prefers-color-scheme: dark) {
    :root {
        --er-white: #0f172a;
        --er-black: #f8fafc;
        --er-gray-50: #1e293b;
        --er-gray-100: #334155;
        --er-gray-200: #475569;
        --er-gray-500: #94a3b8;
        --er-gray-600: #cbd5e1;
        --er-gray-700: #e2e8f0;
    }
}
```

Or with a class toggle:

```scss
.dark-mode {
    --er-white: #0f172a;
    --er-black: #f8fafc;
    // ... other overrides
}
```
