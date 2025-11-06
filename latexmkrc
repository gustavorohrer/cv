# latexmk configuration for this CV project
# Force XeLaTeX
$pdflatex = 'xelatex %O %S';
$latex = 'xelatex %O %S';
$xelatex = 'xelatex -interaction=nonstopmode -halt-on-error -file-line-error %O %S';

# Use out/ for all generated files
$out_dir = 'out';
$aux_dir = 'out';

# Set the output base filename (jobname) so PDF is Gustavo_Rohrer_CV.pdf
$jobname = 'Gustavo_Rohrer_CV';

# Always use xelatex engine
$pdf_mode = 5;  # 5 = xelatex

# Continuous preview command is configured by default

# Enable synctex and silent progress
# Disable external compiling banner to avoid 'Can't exec "Compiling"' errors
# $compiling_cmd is a command to execute; leave it unset or use a valid shell command like 'echo Compiling'
# $compiling_cmd = 'echo Compiling';
$silent = 0;
