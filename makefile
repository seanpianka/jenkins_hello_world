# if there is a clock skew detected, run:
# find /your/dir -type f -exec touch {} +
CXX       := g++
CXXSTD    := -std=c++11
CXXFLAGS  := -Wall -Wextra -O2

SRCDIR    := src
TESTDIR   := tests
BUILDDIR  := build
TARGETDIR := bin
TARGET    := a.out

LIB_IDS   := 

INCDIR    := include/
INC 	  := -I$(INCDIR)

LIBS_DIRS := 
LIBS      := 

SRCEXT    := cpp
SOURCES   := $(shell find $(SRCDIR) -type f -name "*.$(SRCEXT)")
OBJECTS   := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%,$(SOURCES:.$(SRCEXT)=.o))

HDREXT    := h
HEADERS   := $(shell find $(INCDIR) -type f -name "*.$(HDREXT)")

.PRECIOUS: $(TARGET) $(OBJECTS)


default: $(OBJECTS)
	@mkdir -p $(TARGETDIR);
	$(CXX) $^ -o $(TARGETDIR)/$(TARGET) $(LIBS_DIRS) $(LIBS);


$(BUILDDIR)/%.o: $(SRCDIR)/%.$(SRCEXT)
	@mkdir -p $(BUILDDIR);
	@echo "Compiling...";
	$(CXX) $(CXXSTD) $(CXXFLAGS) $(INC) -c -o $@ $<;


tests: $(TARGETDIR)/tests

$(TARGETDIR)/tests: $(filter-out $(BUILDDIR)/main.o, $(OBJECTS)) $(BUILDDIR)/tests.o
	@echo "Linking...";
	mkdir -p bin/
	$(CXX) $^ -o $(TARGETDIR)/tests $(LIBS_DIRS) $(LIBS);


$(BUILDDIR)/tests.o: $(TESTDIR)/tests.$(SRCEXT)
	@echo "Compiling...";
	$(CXX) $(CXXSTD) $(CXXFLAGS) $(INC) -c -o $@ $<;
    

clean:
	@echo " Cleaning...";
	rm -r $(BUILDDIR) $(TARGETDIR) $(TARGETDIR)/$(TARGET)


.PHONY: clean
