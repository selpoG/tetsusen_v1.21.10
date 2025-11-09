# data/, pack.mcmeta, README.md を zip 圧縮する
tetsusen_v1.21.10.zip: data/ pack.mcmeta README.md
	rm -f $@
	zip -r $@ $^
