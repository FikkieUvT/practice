all: prep analysis

prep:
	make -C src/prep
        
analysis:
	make -C src/analysis

clean:
	-rm -r data
	-rm -r gen