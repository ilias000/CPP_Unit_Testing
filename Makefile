OBJS = Main.o util.o
SOURCE = Main.cpp util.cpp
PROGRAM = Main

TEST_OBJS = UnitTests.o util.o
TEST_SOURCE = UnitTests.cpp util.cpp
TEST_PROGRAM = Test

CC = g++
CFLAGS = -Wall

all: $(PROGRAM) $(TEST_PROGRAM)

$(PROGRAM): clean $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

$(TEST_PROGRAM): clean $(TEST_OBJS)
	$(CC) $(CFLAGS) $(TEST_OBJS) -o $@ 

Main.o: Main.cpp
	$(CC) $(CFLAGS) -c $?

util.o: util.cpp
	$(CC) $(CFLAGS) -c $?

UnitTests.o: UnitTests.cpp
	$(CC) $(CFLAGS) -c $?

clean:
	rm -f $(OBJS) $(PROGRAM) $(TEST_PROGRAM)

runTest:
	./$(TEST_PROGRAM)

run:
	./$(PROGRAM)