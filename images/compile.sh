#!/bin/bash
# Compilation script for the thesis

cd "$(dirname "$0")"

echo "Step 1: First pdflatex pass..."
pdflatex -interaction=nonstopmode elteikthesis_en.tex

echo "Step 2: Generate bibliography..."
biber elteikthesis_en

echo "Step 3: Second pdflatex pass..."
pdflatex -interaction=nonstopmode elteikthesis_en.tex

echo "Step 4: Final pdflatex pass (to resolve all references)..."
pdflatex -interaction=nonstopmode elteikthesis_en.tex

echo "Compilation complete! Check elteikthesis_en.pdf"
