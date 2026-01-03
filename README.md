# Editor Restrictions Jekyll Theme

A simple Jekyll theme for GitHub Pages based on the EDD success page design.

## Quick Setup for GitHub Pages

### Option 1: Direct Upload
1. Create a new repository on GitHub (e.g., `my-site`)
2. Upload all these files to the repository
3. Go to **Settings → Pages**
4. Under "Source", select **Deploy from a branch**
5. Choose `main` branch and `/ (root)` folder
6. Click **Save**
7. Your site will be live at `https://yourusername.github.io/my-site/`

### Option 2: Using Git
```bash
# Clone your new empty GitHub repo
git clone https://github.com/yourusername/my-site.git
cd my-site

# Copy the theme files into this folder
# Then push to GitHub
git add .
git commit -m "Initial commit"
git push origin main
```

## File Structure
```
├── _config.yml          # Site configuration
├── _layouts/
│   └── default.html     # Main HTML template
├── assets/
│   └── css/
│       └── style.css    # All styles
├── index.html           # Main page content
└── README.md            # This file
```

## Customization

### Change Site Title
Edit `_config.yml`:
```yaml
title: Your Site Name
description: Your description
```

### Edit Content
Modify `index.html` to change the page content. It uses simple HTML with the layout defined in `_layouts/default.html`.

### Change Colors
Edit the CSS variables at the top of `assets/css/style.css`:
```css
:root {
    --er-accent: #6366f1;      /* Main accent color */
    --er-success: #10b981;     /* Success/green color */
    /* ... other colors */
}
```

## Adding More Pages

Create a new `.html` or `.md` file in the root:

```html
---
layout: default
title: About
---

<div class="success-container">
    <h1>About Us</h1>
    <p>Your content here...</p>
</div>
```

## Notes

- No build step required - GitHub Pages handles Jekyll automatically
- The theme uses Google Fonts (Space Grotesk, JetBrains Mono) and Bootstrap Icons via CDN
- Fully responsive design included
