# Resume

This repository contains the LaTeX source for my professional resume.

## Overview

- Written in LaTeX for consistency, version control, and reproducibility
- Focused on cloud engineering, DevOps, and systems-oriented roles
- Updated periodically as projects and experience evolve
- Automatically built on every commit using GitHub Actions
- Automatically build locally or using Docker

## File Structure 

```
  ├── .github/
  │   └── workflows/                          # Automation workflows for Github Actions, Bash and Docker
  |     ├── build-commit-resume.txt           # Build resume and output to PDF then commit 
  |     └── build-resume.yml                  # Build resume and output to PDF
  ├── Makefile.mk                             # Build resume and output to PDF using make
  ├── .dockerignore                           # Ignore patterns for docker cache
  ├── .gitignore                              # Ignore patterns for git
  ├── Trinity_Klein_Resume.tex                # LaTex file with resume
  ├── README.md                               # Overview of project
  └── Trinity_Klein_Resume.pdf                # Output pdf based LaTex file
```

## Build

To compile **locally**:
```bash
pdflatex Trinity_Klein_Resume.tex 
```

To compile with **Docker**:

```bash
docker build -t latex-resume-ubuntu .
docker run --rm -v ${PWD}:/app latex-resume-ubuntu
```

