---
layout: docs
title: Configuration
description: Complete reference for all _config.yml options available in Ceres Theme.
---

## Site Settings

Basic site information used throughout your site.

```yaml
title: My Site
description: A brief description of your site
url: "https://yourusername.github.io"
baseurl: "/your-repo-name"  # Leave empty if using root domain
```

| Option | Description |
|--------|-------------|
| `title` | Your site's name, displayed in the header and footer |
| `description` | Used for SEO and meta tags |
| `url` | Your site's full URL |
| `baseurl` | Path prefix if your site isn't at the root |

---

## Navigation

Configure the main navigation menu in the header.

```yaml
navigation:
  - title: Home
    url: /
  - title: Features
    url: "#features"
  - title: Pricing
    url: "#pricing"
  - title: Docs
    url: /docs
  - title: GitHub
    url: https://github.com/yourusername
```

Each navigation item requires:

| Option | Description |
|--------|-------------|
| `title` | Link text displayed in the nav |
| `url` | Link destination (can be relative, anchor, or external) |

---

## Call-to-Action Button

Add a highlighted CTA button to the navigation bar.

```yaml
cta_button:
  title: Get Started
  url: "#pricing"
```

| Option | Description |
|--------|-------------|
| `title` | Button text |
| `url` | Button link destination |

---

## Footer Columns

Configure the footer link columns.

```yaml
footer_columns:
  - title: Product
    links:
      - title: Features
        url: "#features"
      - title: Pricing
        url: "#pricing"
      - title: Changelog
        url: /changelog
  - title: Resources
    links:
      - title: Documentation
        url: /docs
      - title: Support
        url: /support
  - title: Company
    links:
      - title: About
        url: /about
      - title: Blog
        url: /blog
      - title: Contact
        url: /contact
```

You can have as many columns as you need. Each column contains:

| Option | Description |
|--------|-------------|
| `title` | Column heading |
| `links` | Array of link objects with `title` and `url` |

---

## Social Links

Add social media icons to the footer.

```yaml
social_links:
  - platform: Twitter
    icon: twitter-x
    url: https://twitter.com/yourusername
  - platform: GitHub
    icon: github
    url: https://github.com/yourusername
  - platform: LinkedIn
    icon: linkedin
    url: https://linkedin.com/in/yourusername
  - platform: YouTube
    icon: youtube
    url: https://youtube.com/@yourusername
```

| Option | Description |
|--------|-------------|
| `platform` | Name (used for accessibility) |
| `icon` | Bootstrap Icons icon name (without `bi-` prefix) |
| `url` | Link to your social profile |

<div class="callout info">
<strong>Available Icons</strong>
<p>See <a href="https://icons.getbootstrap.com/" target="_blank">Bootstrap Icons</a> for all available icon names.</p>
</div>

---

## Footer Content

Configure footer branding and copyright.

```yaml
footer_tagline: A short tagline for your site.
footer_copyright: "© 2025 Your Company. All rights reserved."
```

| Option | Description |
|--------|-------------|
| `footer_tagline` | Short description shown below the brand |
| `footer_copyright` | Copyright text at the bottom |

---

## Custom CSS

Add your own stylesheet to override theme styles.

```yaml
custom_css: /assets/css/custom.scss
```

Then create the file in your project:

```scss
---
---

// Your custom styles here
:root {
    --er-accent: #10b981;  // Change accent color
}
```

---

## Complete Example

Here's a full `_config.yml` example:

```yaml
# Theme
remote_theme: devuri/ceres-theme

# Site settings
title: My Awesome Site
description: Building something great with Ceres Theme
url: "https://mysite.com"
baseurl: ""

# Navigation
navigation:
  - title: Features
    url: "#features"
  - title: Pricing
    url: "#pricing"
  - title: Docs
    url: /docs
  - title: GitHub
    url: https://github.com/myusername/mysite

# CTA Button
cta_button:
  title: Get Started
  url: "#pricing"

# Footer columns
footer_columns:
  - title: Product
    links:
      - title: Features
        url: "#features"
      - title: Pricing
        url: "#pricing"
      - title: Roadmap
        url: /roadmap
  - title: Resources
    links:
      - title: Documentation
        url: /docs
      - title: API Reference
        url: /api
      - title: Support
        url: /support
  - title: Company
    links:
      - title: About
        url: /about
      - title: Blog
        url: /blog
      - title: Contact
        url: /contact

# Social links
social_links:
  - platform: Twitter
    icon: twitter-x
    url: https://twitter.com/myusername
  - platform: GitHub
    icon: github
    url: https://github.com/myusername

# Footer
footer_tagline: Making the web beautiful, one site at a time.
footer_copyright: "© 2025 My Company. All rights reserved."

# Custom CSS (optional)
custom_css: /assets/css/custom.scss

# Build settings
markdown: kramdown
plugins:
  - jekyll-seo-tag
  - jekyll-remote-theme
```
