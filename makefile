PROJ = haskellcg
OBJS = hello_world.o

GHC = ghc

$(PROJ): $(OBJS)
	$(GHC) -o $(PROJ) $(OBJS)

%.o:%.hs
	$(GHC) -o $@ -c $< 

clean:
	rm -fr $(PROJ)
	rm -fr *.o
	rm -fr *.hi
