# latexmk configuration for this CV project
# Force XeLaTeX
$pdflatex = 'xelatex %O %S';
$latex = 'xelatex %O %S';
$xelatex = 'xelatex -interaction=nonstopmode -halt-on-error -file-line-error %O %S';

# Use out/ for all generated files
$out_dir = 'out';
$aux_dir = 'out';

# Always use xelatex engine
$pdf_mode = 5;  # 5 = xelatex

# Continuous preview command is configured by default

# Enable synctex and silent progress
$compiling_cmd = 'Compiling';
$silent = 0;
