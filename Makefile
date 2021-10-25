OBJS = Main.o
SOURCE = Main.cpp
PROGRAM = Main

TEST_OBJS = UnitTest.o
TEST_SOURCE = UnitTest.cpp
TEST_PROGRAM = Test

CC = g++
CFLAGS = -Wall -g

all: $(PROGRAM) $(TEST_PROGRAM)

$(PROGRAM): clean $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

$(TEST_PROGRAM): clean $(TEST_OBJS)
	$(CC) $(CFLAGS) $(TEST_OBJS) -o $@ 

Main.o: Main.cpp
	$(CC) $(CFLAGS) -c $?

UnitTest.o: UnitTest.cpp
	$(CC) $(CFLAGS) -c $?

clean:
	rm -f $(OBJS) $(PROGRAM)

test:
	./$(TEST_PROGRAM)

run:
	./$(PROGRAM)