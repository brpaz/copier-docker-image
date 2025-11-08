# Copier Docker Image

<p align="center">

[![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-black.json&style=for-the-badge)](https://github.com/copier-org/copier)
[![Build Status](https://img.shields.io/github/actions/workflow/status/brpaz/copier-docker-image/ci.yml?branch=main&style=for-the-badge)](https://github.com/brpaz/copier-docker-image/actions)

</p>

> A Copier template for creating Docker images.

## 📦 What is included?

- [Devenv](https://devenv.dev/) configuration for development environment.
- Dockerfile with best practices.
- GitHub Actions workflow for building and pushing Docker images to GitHub Packages registry.
- [Hadolint](https://github.com/hadolint/hadolint) configuration for linting Dockerfiles.
- [Trivy](https://trivy.dev/) for scanning Docker images for vulnerabilities.
- [Lefthook](https://github.com/evilmartians/lefthook) for managing Git hooks.
- [Release Drafter](https://github.com/release-drafter/release-drafter) for automating the release notes.

## 🚀 Getting Started

### Pre-Requisites

This template is built with [Copier](https://copier.readthedocs.io/en/stable/), a Python based project templating tool.

To install copier on your system, follow the instructions at [Copier Website](https://copier.readthedocs.io/en/stable/#installation)

### Usage

To create a new project using this template, run the following command:

```bash
copier copy gh:brpaz/copier-docker-image /path/to/your/new/project
```

And answer the prompts to customize your new project.

## 🗒️ License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.