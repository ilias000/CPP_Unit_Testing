OBJS_DIR = obj/
EXE_DIR = exe/

OBJS = $(OBJS_DIR)Main.o $(OBJS_DIR)util.o
PROGRAM_NAME = Main
PROGRAM_EXE = $(EXE_DIR)$(PROGRAM_NAME)

TEST_OBJS = $(OBJS_DIR)UnitTests.o $(OBJS_DIR)util.o
TEST_PROGRAM_NAME = Test
TEST_PROGRAM_EXE = $(EXE_DIR)$(TEST_PROGRAM_NAME)

CC = g++ -std=c++11
CFLAGS = -Wall

all: $(PROGRAM_NAME) $(TEST_PROGRAM_NAME)

$(PROGRAM_NAME): clean Main.o Util.o
	$(CC) $(CFLAGS) $(OBJS) -o $(PROGRAM_EXE)

$(TEST_PROGRAM_NAME): clean UnitTests.o Util.o
	$(CC) $(CFLAGS) $(TEST_OBJS) -o $(TEST_PROGRAM_EXE)

Main.o: src/main/Main.cpp
	$(CC) $(CFLAGS) -c src/main/Main.cpp && mv Main.o $(OBJS_DIR)

Util.o: src/utilities/Util.cpp
	$(CC) $(CFLAGS) -c src/utilities/util.cpp && mv Util.o $(OBJS_DIR)

UnitTests.o: src/tests/UnitTests.cpp
	$(CC) $(CFLAGS) -c src/tests/UnitTests.cpp && mv UnitTests.o $(OBJS_DIR)

clean:
	rm -f $(OBJS) $(TEST_OBJS) $(PROGRAM_EXE) $(TEST_PROGRAM_EXE)

runTests:
	./$(TEST_PROGRAM_EXE)

run:
	./$(PROGRAM_EXE)
