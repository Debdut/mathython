# --- Setting up Macros
TEX = xelatex
TEX_OPTIONS = -shell-escape
TEX_CLEAN = aux\|out\|pyg\|log\|toc

# --- Defining targets
all: Mathython

Mathython:
	xelatex -shell-escape Mathython.tex; xelatex -shell-escape Mathython.tex; cp Mathython.pdf downloads; find . \( ! -regex '.*/\..*' \) \( -regex '.*\.\($(TEX_CLEAN)\)' \) -type f -print0 | xargs --null rm;

clean: