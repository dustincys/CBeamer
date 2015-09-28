empty:
	@echo Making beamer ...
	xelatex -shell-escape presentation.tex
	biber presentation
	xelatex -shell-escape presentation.tex
	xelatex -shell-escape presentation.tex
save:
	mv presentation.pdf presentation_beamer.pdf
clean:
	@echo Done. 
	-find -name '*.aux' -exec rm -f {} \;
	-find -name '*.bak' -exec rm -f {} \;
	-find -name '*.dvi' -exec rm -f {} \;
	-find -name '*~' -exec rm -f {} \;
	-find -name '#*#' -exec rm -f {} \;
	-find -name 'semantic.cache' -exec rm -f {} \;
	-find -name '*.log' -exec rm -f {} \;
	-rm -f *.bbl *.blg *.log *.out *.ps *.thm *.toc *.toe *.lof *.lot *.nav *.snm *.vrb 
	-rm -f *.loa *.aen
	-rm -f *.html *.css *.scm *.hlog
	-rm -f _region_.tex
	-rm -f -rf auto
	-rm -f *.fen
	-rm -f *.ten
	-rm -f *.bcf
	-rm -f *.pyg
	-rm -f *.xml
	-rm -rf *.prv

