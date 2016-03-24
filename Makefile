all: cpp java

cpp:
	cd system; make

java:
	cd java-player; ./compile.sh

tar: clean
	tar zcvf ../samurai.tgz .

clean:
	rm -f SamuraiLog*
	rm -f log.txt
	cd system; make clean
	cd java-player/jamurai; rm -f *.class
