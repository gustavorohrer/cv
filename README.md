### LaTeX CV — Minimal Starter

A minimal, one‑page CV template built with LaTeX (XeLaTeX). Produces a clean PDF with tight spacing and a small footer showing the last update date.

#### Requirements
- TeX distribution with XeLaTeX and `latexmk` (e.g., MacTeX on macOS, TeX Live on Linux/Windows).

#### Quick start
- Build and open:
  - `make open`
- Rebuild on save:
  - `make watch`
- Clean artifacts:
  - `make clean`

The generated PDF is at `out/main.pdf`.

#### Edit your details
Update `src/main.tex`:
- `\title{...}` — your name
- `\author{...}` — location / work mode
- `\date{...}` — links (LinkedIn, GitHub, email)
- Sections: `About Me`, `Experience`, `Skills`, `Education`

#### Paper size / margins
- Default: A4
```tex
\usepackage[a4paper,top=0.45in,bottom=0.6in,left=0.5in,right=0.5in]{geometry}
```
- US Letter (optional):
```tex
\usepackage[letterpaper,top=0.5in,bottom=0.6in,left=0.55in,right=0.55in]{geometry}
```

#### Troubleshooting
If `latexmk` is not found on macOS:
```bash
PATH="/Library/TeX/texbin:$PATH" make open
```
Or install with Homebrew: `brew install latexmk`.

That’s it — edit `src/main.tex`, run `make open`, and export your PDF from `out/main.pdf`. 
