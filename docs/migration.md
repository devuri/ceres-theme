---
layout: docs
title: Migration Guide
description: How to migrate to Ceres Theme from other Jekyll themes.
---

This guide covers migrating to Ceres Theme from popular Jekyll themes like Slate, Minima, and others.

## From Jekyll Theme Slate

Slate is a common GitHub Pages theme. Here's how to migrate:

### Step 1: Update _config.yml

**Remove:**
```yaml
theme: jekyll-theme-slate
# or
remote_theme: pages-themes/slate@v0.2.0
```

**Add:**
```yaml
remote_theme: devuri/ceres-theme
```

### Step 2: Update Layouts

Slate uses different layout names. Update your pages:

| Slate | Ceres |
|-------|-------|
| `default` | `page` or `home` |

**Before:**
```yaml
---
layout: default
title: My Page
---
```

**After:**
```yaml
---
layout: page
title: My Page
---
```

For landing pages, use `layout: home` with section-based HTML.

### Step 3: Update Content Structure

Slate wraps content automatically. With Ceres, you control the structure:

**Before (Slate):**
```markdown
---
layout: default
---

# Welcome

This content is automatically wrapped.
```

**After (Ceres):**
```html
---
layout: home
---

<section class="hero">
    <div class="container">
        <div class="hero-content">
            <h1>Welcome</h1>
            <p>This content uses Ceres components.</p>
        </div>
    </div>
</section>
```

### Step 4: Add Configuration

Add navigation, footer, and other settings:

```yaml
navigation:
  - title: Home
    url: /
  - title: About
    url: /about

footer_tagline: Your site description
footer_copyright: "© 2025 Your Name"
```

---

## From Minima

Minima is Jekyll's default theme.

### Step 1: Update _config.yml

**Remove:**
```yaml
theme: minima
```

**Add:**
```yaml
remote_theme: devuri/ceres-theme
```

### Step 2: Migrate Navigation

**Before (Minima):**
```yaml
header_pages:
  - about.md
  - contact.md
```

**After (Ceres):**
```yaml
navigation:
  - title: About
    url: /about
  - title: Contact
    url: /contact
```

### Step 3: Migrate Social Links

**Before (Minima):**
```yaml
twitter_username: myusername
github_username: myusername
```

**After (Ceres):**
```yaml
social_links:
  - platform: Twitter
    icon: twitter-x
    url: https://twitter.com/myusername
  - platform: GitHub
    icon: github
    url: https://github.com/myusername
```

### Step 4: Update Layouts

| Minima | Ceres |
|--------|-------|
| `home` | `home` |
| `page` | `page` |
| `post` | `page` |

---

## From Cayman

### Step 1: Update _config.yml

**Remove:**
```yaml
theme: jekyll-theme-cayman
# or
remote_theme: pages-themes/cayman@v0.2.0
```

**Add:**
```yaml
remote_theme: devuri/ceres-theme
```

### Step 2: Migrate Header Content

Cayman puts header content in config. Move it to your homepage:

**Before (_config.yml):**
```yaml
title: My Project
description: A great project
```

**After (index.html):**
```html
---
layout: home
---

<section class="hero">
    <div class="container">
        <div class="hero-content">
            <h1>My Project</h1>
            <p>A great project</p>
            <div class="hero-actions">
                <a href="#" class="btn btn-glow btn-lg">Get Started</a>
            </div>
        </div>
    </div>
</section>
```

---

## General Migration Steps

### 1. Backup Your Content

Before migrating, backup your existing content:

```bash
cp -r my-site my-site-backup
```

### 2. Update Theme Reference

Replace your current theme with Ceres:

```yaml
remote_theme: devuri/ceres-theme
```

### 3. Convert Pages

For each page, decide the appropriate layout:

- **Landing pages** → `layout: home` with HTML sections
- **Content pages** → `layout: page` with Markdown

### 4. Add Configuration

Add the required Ceres configuration:

```yaml
# Navigation
navigation:
  - title: Home
    url: /
  # Add more links...

# Footer
footer_columns:
  - title: Links
    links:
      - title: About
        url: /about
      # Add more links...

footer_tagline: Your tagline
footer_copyright: "© 2025"
```

### 5. Update Styling

Remove any theme-specific CSS classes and replace with Ceres classes:

| Common Old Classes | Ceres Equivalent |
|-------------------|------------------|
| `.btn-primary` | `.btn.btn-glow` |
| `.btn-secondary` | `.btn.btn-ghost` |
| `.container-fluid` | `.container` |
| `.jumbotron` | `.hero` |
| `.card` | `.bento-card` |

### 6. Test Locally

Run Jekyll locally to test:

```bash
bundle exec jekyll serve
```

### 7. Deploy

Push to GitHub and verify on your live site.

---

## Common Issues

### Missing Styles

If styles aren't loading, ensure:

1. `remote_theme` is set correctly
2. You're using the correct layout names
3. Your custom CSS isn't conflicting

### Broken Navigation

Check that your navigation config matches the expected format:

```yaml
navigation:
  - title: Link Text    # Required
    url: /path          # Required
```

### Layout Errors

If you see layout errors:

1. Verify layout names (`home`, `page`, `default`)
2. Check front matter syntax (proper YAML)
3. Remove any theme-specific front matter variables

---

## Need Help?

If you encounter issues:

1. Check the [GitHub Issues](https://github.com/devuri/ceres-theme/issues)
2. Review the [Configuration](/configuration) documentation
3. Open a new issue with details about your migration
