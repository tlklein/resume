# Resume

This repository contains the LaTeX source for my professional resume. 

## Overview

- Written in LaTeX for consistency, version control, and reproducibility
- Focused on cloud engineering, DevOps, and systems-oriented roles
- Updated periodically as projects and experience evolve

## File Structure 

```
  ├── .github/
  │   └── workflows/                          # Automation workflows for Github Actions, Bash and Docker
  |     ├── build-commit-resume.txt           # Ignore patterns for docker cache
  |     ├── Makefile.mk                   # Ignore patterns for docker cache
  |     └── build-resume.yml                  # TypeScript configuration  
  │
  ├── .dockerignore                           # Ignore patterns for docker cache
  ├── main.tex                                # LaTex file with resume
  ├── README.md                               # Versioned release notes
  └── Trinity_Klein_Resume.pdf                # TypeScript configuration  
```

## Build

To compile **locally**:
```bash
pdflatex main.tex
```

To compile with **Docker**:

```bash
docker build -t latex-resume .
docker run --rm -v "$(pwd)":/app latex-resume
```

The PDF is automatically built via GitHub Actions on every commit.