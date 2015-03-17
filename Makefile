# --- Setting up Macros
TEX = xelatex
TEX_OPTIONS = -shell-escape
TEX_CLEAN = aux\|out\|pyg\|log\|toc

# --- Defining targets
all: Mathython clean

Mathython:
	xelatex -shell-escape Mathython.tex

clean:
	find . \( ! -regex '.*/\..*' \) \( -regex '.*\.\($(TEX_CLEAN)\)' \) -type f -print0 | xargs --null rm; rm downloads/*; mv *.pdf downloads/