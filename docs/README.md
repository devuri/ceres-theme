# Ceres Theme Documentation Site

This is the official documentation site for [Ceres Theme](https://github.com/devuri/ceres-theme), built using the theme itself.

## Local Development

1. Install dependencies:
   ```bash
   bundle install
   ```

2. Run the development server:
   ```bash
   bundle exec jekyll serve
   ```

3. Open http://localhost:4000 in your browser.

## Structure

```
docs/
├── _config.yml           # Site configuration
├── _layouts/
│   └── docs.html         # Documentation layout with sidebar
├── assets/
│   └── css/
│       └── docs.scss     # Documentation-specific styles
├── components/           # Component documentation
├── index.html            # Landing page
├── getting-started.md    # Getting started guide
├── configuration.md      # Configuration reference
├── layouts.md            # Layouts documentation
├── css-reference.md      # CSS class reference
├── colors.md             # Color palette reference
├── customization.md      # Customization guide
├── migration.md          # Migration guide
└── changelog.md          # Version history
```

## Deployment

This site is deployed automatically via GitHub Pages when changes are pushed to the main branch.

## License

MIT License
