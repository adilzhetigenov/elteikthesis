# ELTE FI Thesis Template - Compilation Guide

This document describes how to compile the thesis LaTeX document to generate a PDF.

## Prerequisites

You need a LaTeX distribution installed on your system:
- **macOS**: Install [MacTeX](https://www.tug.org/mactex/)
- **Linux**: Install `texlive-full` package
- **Windows**: Install [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/)

## Compilation

The thesis uses `biber` for bibliography management. Follow these steps to compile:

### Manual Compilation

```bash
# Step 1: First pdflatex pass (generates .aux file)
pdflatex elteikthesis_en.tex

# Step 2: Generate bibliography
biber elteikthesis_en

# Step 3: Generate nomenclature (optional, if using \printnomenclature)
# makeindex -s nomencl.ist -t elteikthesis_en.nlg -o elteikthesis_en.nls elteikthesis_en.nlo

# Step 4: Second pdflatex pass (resolves references)
pdflatex elteikthesis_en.tex

# Step 5: Final pdflatex pass (ensures all references are correct)
pdflatex elteikthesis_en.tex
```

### Using the Compilation Script

A compilation script is provided for convenience:

```bash
./compile.sh
```

This script automatically runs all the necessary compilation steps in the correct order.

### Using an IDE

You can also compile using a LaTeX IDE like:
- **TeXStudio**: Open `elteikthesis_en.tex` and click "Build & View"
- **TeXShop** (macOS): Open the file and click "Typeset"
- **Overleaf**: Upload the files to [Overleaf](https://www.overleaf.com/) for online compilation

## Output

After successful compilation, the PDF file `elteikthesis_en.pdf` will be generated in the same directory.

## Troubleshooting

- **Missing packages**: If you get errors about missing packages, install them using your LaTeX distribution's package manager
- **Bibliography errors**: Make sure `biber` is installed and run after the first pdflatex pass
- **Image errors**: Ensure all images referenced in the document exist in the `images/` directory

## File Structure

- `elteikthesis_en.tex` - Main LaTeX document
- `elteikthesis.cls` - Document class file (required)
- `elteikthesis.bib` - Bibliography database
- `samples_en/` - Chapter content files
  - `intro.tex` - Introduction
  - `user.tex` - User documentation
  - `impl.tex` - Implementation
  - `sum.tex` - Conclusion
  - `sim.tex` - Appendix
- `images/` - Image files (e.g., logos, figures)

