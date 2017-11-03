all: pdf

pdf: prepare
	@echo "Creating pdf output ..."
	@pwd
	@pandoc prisma.md -o prisma.pdf --latex-engine=lualatex -V documentclass=ltjarticle

prepare:
	@echo "Preparing ..."
