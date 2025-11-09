# data/, pack.mcmeta, README.md を zip 圧縮する
SRCS := $(wildcard data/**/*)
TARGET := tetsusen_v1.21.10.zip

$(TARGET): $(SRCS) pack.mcmeta README.md
	rm -f $@
	zip -r $@ $^

clean:
	rm -f $(TARGET)
