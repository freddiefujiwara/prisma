all: pdf

pdf: prepare
	@echo "Creating pdf output ..."
	@pwd
	@pandoc prisma.md -o prisma.pdf --latex-engine=lualatex -V documentclass=ltjarticle --toc -f markdown_github+pandoc_title_block-ascii_identifiers

prepare:
	@echo "Preparing ..."
