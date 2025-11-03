### LaTeX CV — Starter Project

This project is ready to create and maintain your CV with LaTeX (XeLaTeX), producing a clean one‑page PDF similar to the provided example.

#### Requirements
- macOS with [MacTeX](https://tug.org/mactex/).
- `latexmk` (bundled with MacTeX). If it’s missing, install with Homebrew: `brew install latexmk`.

#### Structure
- `src/main.tex`: CV content and layout.
- `latexmkrc`: forces XeLaTeX and sends all artifacts to `out/`.
- `Makefile`: convenience commands (`build`, `watch`, `open`, `clean`).
- `out/`: output folder (PDF and temporaries).

#### Build
1. Single build:
   - `make build`
   - The PDF will be at `out/main.pdf`.
2. Continuous build (rebuilds on save):
   - `make watch`
3. Build and open the PDF:
   - `make open`
4. Clean artifacts:
   - `make clean`

#### Edit your information
Open `src/main.tex` and update:
- Title (your name): `\title{Gustavo Rohrer}`
- Subtitle (location / work mode): `\author{Argentina — Remote-first}`
- Contact line in `\date{...}`:
  - LinkedIn: `https://www.linkedin.com/in/gustavo-rohrer-89b00443`
  - GitHub: `https://github.com/gustavorohrer`
  - Email: `mailto:gustavorohrer@gmail.com`
- Sections: `About Me`, `Experience`, `Skills`, `Education`.

Typography uses XeLaTeX with `fontspec`. On macOS it prefers the “Georgia” font; if not available, it falls back to “TeX Gyre Pagella”. You can change the font by editing this line:
```tex
\setmainfont{Georgia}
```

#### Useful template components
- Role/company header with right‑aligned location and dates:
```tex
\roleentry{Full-Stack Engineer}{Epwery}{Remote}{2022\textendash{}2025}
```
- Flexible left + right‑aligned row (e.g., education/status):
```tex
\tworow{\textbf{Universidad Nacional de La Plata, Argentina}}{\textit{Completed}}
```
- Compact bullet lists: use `\begin{itemize} ... \end{itemize}` (already tuned for tight spacing).

#### Paper size or margins
- Default is A4 with tight one‑page margins:
```tex
\usepackage[a4paper,top=0.45in,bottom=0.6in,left=0.5in,right=0.5in]{geometry}
```
- For US Letter, switch to:
```tex
\usepackage[letterpaper,top=0.5in,bottom=0.6in,left=0.55in,right=0.55in]{geometry}
```
If the PDF still spills to 2 pages, you can slightly tighten vertical spacing (e.g., reduce list `itemsep/topsep`) or nudge margins by ~0.05in.

#### Troubleshooting: `latexmk` not found
If `make build` fails with “latexmk: No such file or directory” on macOS:
- Ensure `/Library/TeX/texbin` is on your PATH:
```bash
PATH="/Library/TeX/texbin:$PATH" make open
```
- Or make it permanent (zsh): add `export PATH="/Library/TeX/texbin:$PATH"` to `~/.zprofile` and restart the terminal.
- If you use BasicTeX, install `latexmk` via `tlmgr install latexmk` or `brew install latexmk`.

#### Notes
- The footer shows “Last updated: <date>” automatically and your name in the center.
- The project forces XeLaTeX via `latexmkrc`.

#### Optional next tweaks
- Add commands for education entries with descriptions.
- Bilingual variants (EN/ES) with `babel` or separate files.
- Add an A4 make target.

Ready to go: run `make open` and start editing `src/main.tex`. 🚀
