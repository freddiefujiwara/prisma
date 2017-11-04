all: pdf

pdf: prepare
	@pwd
	@echo "Creating pdf output ..."
	@pandoc prisma.md -o prisma.pdf --latex-engine=lualatex -V documentclass=ltjarticle --toc -f markdown_github+pandoc_title_block-ascii_identifiers
	@echo "Creating epub output ..."
	@pandoc prisma.md -o prisma.epub --latex-engine=lualatex -V documentclass=ltjarticle --toc -f markdown_github+pandoc_title_block-ascii_identifiers
	@echo "Creating docx output ..."
	@pandoc prisma.md -o prisma.docx --latex-engine=lualatex -V documentclass=ltjarticle --toc -f markdown_github+pandoc_title_block-ascii_identifiers
	@echo "Creating html output ..."
	@pandoc prisma.md -s --self-contained -t html5 -c assets/github.css -o index.html

prepare:
	@echo "Preparing ..."
