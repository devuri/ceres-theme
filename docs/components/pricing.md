---
layout: docs
title: Pricing Cards
description: Create beautiful pricing tables with feature lists and highlighted plans.
---

The pricing component displays pricing tiers in a responsive grid with feature lists, highlighting, and call-to-action buttons.

## Basic Usage

### Using the Include

```liquid
{% raw %}{% include pricing-card.html
   name="Pro"
   sites="5 site license"
   price="$79"
   period="per year"
   features=page.pro_features
   featured=true
   popular=true
   button_text="Get Pro"
   button_url="#"
%}{% endraw %}
```

### Using HTML

```html
<div class="pricing-grid">
    <div class="pricing-card">
        <div class="pricing-name">Starter</div>
        <div class="pricing-sites">1 site license</div>
        <div class="pricing-amount">$29</div>
        <div class="pricing-period">per year</div>
        <ul class="pricing-features">
            <li><i class="bi bi-check-circle-fill"></i> Feature one</li>
            <li><i class="bi bi-check-circle-fill"></i> Feature two</li>
            <li><i class="bi bi-check-circle-fill"></i> Feature three</li>
        </ul>
        <a href="#" class="btn btn-ghost w-100">Get Starter</a>
    </div>
</div>
```

---

## Include Parameters

| Parameter | Description | Required |
|-----------|-------------|----------|
| `name` | Plan name (e.g., "Pro", "Enterprise") | Yes |
| `sites` | Subtitle (e.g., "5 site license") | No |
| `price` | Price display (e.g., "$79") | Yes |
| `period` | Billing period (e.g., "per year") | No |
| `features` | Array of feature strings | No |
| `featured` | Highlight this card (`true`/`false`) | No |
| `popular` | Show "Most Popular" badge (`true`/`false`) | No |
| `button_text` | CTA button text | No |
| `button_url` | CTA button link | No |

---

## Complete Section Example

```html
<section id="pricing" class="section-gray pricing-section">
    <div class="container">
        <div class="text-center">
            <span class="section-number">Pricing</span>
            <h2 class="section-title">Simple, transparent pricing</h2>
            <p class="section-desc">No hidden fees. Cancel anytime.</p>
        </div>
        
        <div class="pricing-grid">
            <!-- Starter Plan -->
            <div class="pricing-card">
                <div class="pricing-name">Starter</div>
                <div class="pricing-sites">1 site license</div>
                <div class="pricing-amount">$29</div>
                <div class="pricing-period">per year</div>
                <ul class="pricing-features">
                    <li><i class="bi bi-check-circle-fill"></i> All core features</li>
                    <li><i class="bi bi-check-circle-fill"></i> Email support</li>
                    <li><i class="bi bi-check-circle-fill"></i> 1 year updates</li>
                </ul>
                <a href="#" class="btn btn-ghost w-100">Get Starter</a>
            </div>
            
            <!-- Pro Plan (Featured) -->
            <div class="pricing-card featured">
                <div class="popular-badge">Most Popular</div>
                <div class="pricing-name">Pro</div>
                <div class="pricing-sites">5 site license</div>
                <div class="pricing-amount">$79</div>
                <div class="pricing-period">per year</div>
                <ul class="pricing-features">
                    <li><i class="bi bi-check-circle-fill"></i> Everything in Starter</li>
                    <li><i class="bi bi-check-circle-fill"></i> Priority support</li>
                    <li><i class="bi bi-check-circle-fill"></i> Advanced features</li>
                    <li><i class="bi bi-check-circle-fill"></i> API access</li>
                </ul>
                <a href="#" class="btn btn-glow w-100">Get Pro</a>
            </div>
            
            <!-- Agency Plan -->
            <div class="pricing-card">
                <div class="pricing-name">Agency</div>
                <div class="pricing-sites">Unlimited sites</div>
                <div class="pricing-amount">$199</div>
                <div class="pricing-period">per year</div>
                <ul class="pricing-features">
                    <li><i class="bi bi-check-circle-fill"></i> Everything in Pro</li>
                    <li><i class="bi bi-check-circle-fill"></i> White-label</li>
                    <li><i class="bi bi-check-circle-fill"></i> Dedicated support</li>
                    <li><i class="bi bi-check-circle-fill"></i> Custom integrations</li>
                </ul>
                <a href="#" class="btn btn-ghost w-100">Get Agency</a>
            </div>
        </div>
        
        <!-- Optional Guarantee -->
        <div class="pricing-guarantee">
            <i class="bi bi-shield-check"></i>
            <div>
                <strong>30-Day Money-Back Guarantee</strong>
                <span>Try risk-free. Full refund if you're not satisfied.</span>
            </div>
        </div>
    </div>
</section>
```

---

## CSS Classes

| Class | Description |
|-------|-------------|
| `.pricing-section` | Section with centered text |
| `.pricing-grid` | 3-column grid container |
| `.pricing-card` | Individual pricing card |
| `.pricing-card.featured` | Highlighted card with accent border |
| `.popular-badge` | "Most Popular" badge |
| `.pricing-name` | Plan name |
| `.pricing-sites` | Plan subtitle |
| `.pricing-amount` | Large price display |
| `.pricing-period` | Billing period text |
| `.pricing-features` | Feature list |
| `.pricing-guarantee` | Money-back guarantee box |

---

## Featured Card

Add the `.featured` class to highlight a plan:

```html
<div class="pricing-card featured">
    <!-- Card content -->
</div>
```

This adds:
- Accent color border
- Box shadow with accent color
- Changes the button to `.btn-glow` style

---

## Popular Badge

Add a "Most Popular" badge to any card:

```html
<div class="pricing-card featured">
    <div class="popular-badge">Most Popular</div>
    <!-- Rest of card -->
</div>
```

The badge is:
- Positioned above the card
- Accent color background
- White text
- Pill-shaped

---

## Using with Front Matter

Define features in your page's front matter:

```yaml
---
layout: home
title: Pricing

starter_features:
  - All core features
  - Email support
  - 1 year updates

pro_features:
  - Everything in Starter
  - Priority support
  - Advanced features
  - API access

agency_features:
  - Everything in Pro
  - White-label
  - Dedicated support
  - Custom integrations
---
```

Then use in your template:

```liquid
{% raw %}<div class="pricing-grid">
    {% include pricing-card.html
       name="Starter"
       sites="1 site"
       price="$29"
       period="per year"
       features=page.starter_features
       button_text="Get Starter"
    %}
    {% include pricing-card.html
       name="Pro"
       sites="5 sites"
       price="$79"
       period="per year"
       features=page.pro_features
       featured=true
       popular=true
       button_text="Get Pro"
    %}
    {% include pricing-card.html
       name="Agency"
       sites="Unlimited"
       price="$199"
       period="per year"
       features=page.agency_features
       button_text="Get Agency"
    %}
</div>{% endraw %}
```

---

## Responsive Behavior

| Breakpoint | Layout |
|------------|--------|
| Desktop (>992px) | 3 columns |
| Tablet (768-992px) | 1 column, featured first |
| Mobile (<768px) | 1 column, featured first |

On mobile, the featured card is reordered to appear first using `order: -1`.

---

## Customization

### Two Pricing Tiers

```scss
.pricing-grid {
    grid-template-columns: repeat(2, 1fr);
    max-width: 800px;
    margin-left: auto;
    margin-right: auto;
}
```

### Custom Badge Text

Replace the badge text:

```html
<div class="popular-badge">Best Value</div>
```

### Annual/Monthly Toggle

Add a toggle above the pricing grid:

```html
<div class="pricing-toggle">
    <span class="toggle-label">Monthly</span>
    <button class="toggle-switch">
        <span class="toggle-knob"></span>
    </button>
    <span class="toggle-label active">
        Annual
        <span class="toggle-badge">Save 20%</span>
    </span>
</div>
```
