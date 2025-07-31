# WINGMAN Documentation

[![Netlify Status](https://api.netlify.com/api/v1/badges/YOUR_SITE_ID/deploy-status)](https://app.netlify.com/sites/YOUR_SITE_NAME/deploys)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This repository contains the documentation for WINGMAN, built with [MkDocs Material](https://squidfunk.github.io/mkdocs-material/).

## Features

- 📝 Modern, responsive design with Material for MkDocs
- 🔍 Full-text search
- 📱 Mobile-friendly
- 🌓 Light/Dark mode
- 🔗 Automatic link checking
- 📊 Mermaid.js diagrams support
- 📚 Glossary/abbreviations support
- 🔄 GitHub integration

## Prerequisites

- Python 3.8 or higher
- pip (Python package manager)
- Git

## Local Development

1. **Clone the repository**
   ```bash
   git clone https://github.com/PeakDefence/wingman-docs.git
   cd wingman-docs
   ```

2. **Create and activate a virtual environment**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Serve the documentation locally**
   ```bash
   mkdocs serve
   ```
   The documentation will be available at [http://127.0.0.1:8000](http://127.0.0.1:8000)

## Adding Content

- Add new documentation pages in the `docs/` directory
- Update the navigation in `mkdocs.yml`
- For images, place them in `docs/assets/images/`
- For custom CSS/JS, use the `docs/stylesheets/` and `docs/javascripts/` directories

## Building for Production

```bash
mkdocs build --clean
```

The built site will be in the `site/` directory.

## Deployment

### GitHub Pages (Automatic)

1. Push your changes to the `main` branch
2. GitHub Actions will automatically build and deploy to GitHub Pages

### Manual Deployment to docs.peakdefence.com

1. Build the documentation:
   ```bash
   mkdocs build --clean
   ```

2. Sync the `site/` directory to your web server:
   ```bash
   rsync -avz --delete site/ user@peakdefence.com:/path/to/docs.peakdefence.com/
   ```

## Adding Abbreviations

Add abbreviations to `docs/glossary.md` in the following format:

```markdown
*[ABBR]: Abbreviation definition
*[WINGMAN]: Web-based INtelligent Governance MANagement
```

These will be automatically highlighted throughout the documentation.

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [MkDocs](https://www.mkdocs.org/)
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
- [PeakDefence Team](https://peakdefence.com)
