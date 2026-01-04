---
layout: docs
title: Steps
description: Display numbered steps for processes, workflows, or how-it-works sections.
---

The steps component displays numbered cards in a row, perfect for explaining processes, onboarding flows, or how-it-works sections.

## Basic Usage

```html
<div class="steps-grid">
    <div class="step-card">
        <div class="step-number">1</div>
        <h3>Sign Up</h3>
        <p>Create your free account in seconds.</p>
    </div>
    <div class="step-card">
        <div class="step-number">2</div>
        <h3>Configure</h3>
        <p>Set up your preferences and integrations.</p>
    </div>
    <div class="step-card">
        <div class="step-number">3</div>
        <h3>Launch</h3>
        <p>Go live and start seeing results.</p>
    </div>
</div>
```

---

## Complete Section Example

```html
<section id="how-it-works" class="section-gray">
    <div class="container">
        <div class="text-center">
            <span class="section-number">How It Works</span>
            <h2 class="section-title">Get started in minutes</h2>
            <p class="section-desc">Three simple steps to transform your workflow.</p>
        </div>
        
        <div class="steps-grid">
            <div class="step-card">
                <div class="step-number">1</div>
                <h3>Create Account</h3>
                <p>Sign up with your email or connect with Google, GitHub, or SSO.</p>
            </div>
            <div class="step-card">
                <div class="step-number">2</div>
                <h3>Import Data</h3>
                <p>Connect your existing tools or import data from CSV files.</p>
            </div>
            <div class="step-card">
                <div class="step-number">3</div>
                <h3>Start Building</h3>
                <p>Use our templates or start from scratch. You're ready to go!</p>
            </div>
        </div>
    </div>
</section>
```

---

## CSS Classes

| Class | Description |
|-------|-------------|
| `.steps-grid` | Grid container for step cards |
| `.step-card` | Individual step card |
| `.step-number` | Numbered badge |

---

## Styling Details

### Steps Grid

- 3-column grid on desktop
- 1-column on tablet and mobile
- 2rem gap between cards
- 4rem top margin

### Step Card

- Centered text alignment
- 2.5rem top/bottom padding
- 2rem left/right padding

### Step Number

- 56px × 56px circle
- Accent color background
- White text
- 1.5rem font size
- 700 font weight
- 14px border radius
- Centered horizontally
- 1.5rem bottom margin

---

## Responsive Behavior

| Breakpoint | Layout |
|------------|--------|
| Desktop (>992px) | 3 columns |
| Tablet/Mobile (≤992px) | 1 column, stacked vertically |

---

## Variations

### Four Steps

Add a fourth step—the grid will wrap appropriately:

```html
<div class="steps-grid">
    <div class="step-card">
        <div class="step-number">1</div>
        <h3>Plan</h3>
        <p>Define your goals and requirements.</p>
    </div>
    <div class="step-card">
        <div class="step-number">2</div>
        <h3>Design</h3>
        <p>Create wireframes and mockups.</p>
    </div>
    <div class="step-card">
        <div class="step-number">3</div>
        <h3>Build</h3>
        <p>Develop and test your product.</p>
    </div>
    <div class="step-card">
        <div class="step-number">4</div>
        <h3>Launch</h3>
        <p>Deploy and gather feedback.</p>
    </div>
</div>
```

### With Icons Instead of Numbers

You can replace numbers with icons:

```html
<div class="steps-grid">
    <div class="step-card">
        <div class="step-number"><i class="bi bi-person-plus"></i></div>
        <h3>Sign Up</h3>
        <p>Create your account.</p>
    </div>
    <div class="step-card">
        <div class="step-number"><i class="bi bi-gear"></i></div>
        <h3>Configure</h3>
        <p>Set your preferences.</p>
    </div>
    <div class="step-card">
        <div class="step-number"><i class="bi bi-rocket"></i></div>
        <h3>Launch</h3>
        <p>Go live!</p>
    </div>
</div>
```

---

## Customization

Override the step number styling:

```scss
.step-number {
    // Different color
    background: #10b981;
    
    // Square instead of rounded
    border-radius: 8px;
    
    // Different size
    width: 48px;
    height: 48px;
    font-size: 1.25rem;
}
```

Add connecting lines between steps:

```scss
.steps-grid {
    position: relative;
}

.step-card {
    position: relative;
    
    &:not(:last-child)::after {
        content: '';
        position: absolute;
        top: 28px;
        right: -1rem;
        width: calc(100% - 56px);
        height: 2px;
        background: var(--er-gray-200);
    }
}
```

---

## Best Practices

1. **Keep it concise** — Use 3-4 steps maximum for clarity
2. **Use action verbs** — Start step titles with verbs (Sign Up, Configure, Launch)
3. **Be specific** — Descriptions should explain what happens at each step
4. **Logical order** — Ensure steps follow a natural progression
