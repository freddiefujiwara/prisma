all: pdf

pdf: prepare
	@pwd
	@echo "Creating pdf output ..."
	@pandoc prisma.md -o prisma.pdf --latex-engine=lualatex -V documentclass=ltjarticle --toc -f markdown_github+pandoc_title_block-ascii_identifiers
	@echo "Creating epub output ..."
	@pandoc prisma.md -o prisma.epub --latex-engine=lualatex -V documentclass=ltjarticle --toc -f markdown_github+pandoc_title_block-ascii_identifiers

prepare:
	@echo "Preparing ..."
