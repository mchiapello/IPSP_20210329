all : clean L1

L1 : Pres.Rmd
	Rscript -e "library(rmarkdown); render('Pres.Rmd', 'xaringan::moon_reader')"

clean :
	rm Lesson*html; rm -r *_cache
