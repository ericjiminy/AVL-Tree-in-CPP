# Eric Chun - jc2ppp - 10/7/20 - Makefile

CXX = clang++ $(CXXFLAGS)
CXXFLAGS = -Wall
DEBUG = -g
OBJECTS = AVLNode.cpp AVLTree.cpp AVLPathTest.cpp

a.out: $(OBJECTS)
	$(CXX) $(DEBUG) $(OBJECTS) -o a.out

AVLNode.o: AVLNode.cpp AVLNode.h
AVLPathTest.o: AVLPathTest.cpp AVLTree.h AVLNode.h
AVLTree.o: AVLTree.cpp AVLNode.h AVLTree.h

.PHONY: clean
clean:
	-rm -f *.0 *~ a.out
