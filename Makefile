CXX := g++
SRCDIRS := src src/analisador src/gerador
BIN := programa

SRCS := $(shell find $(SRCDIRS) -type f -name '*.cc')
OBJS := $(SRCS:.cc=.o)

.PHONY: all clean

all: $(BIN)

$(BIN): $(OBJS)
	$(CXX) -o $@ $^

%.o: %.cc
	$(CXX) -c $< -o $@

clean:
	rm -f $(OBJS) $(BIN)

    

