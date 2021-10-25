OBJS = Main.o
SOURCE = Main.c
HEADER =
PROGRAM = Main

TEST_OBJS = UnitTest.o
TEST_SOURCE = UnitTest.c
TEST_HEADER =
TEST_PROGRAM = Test

CC = g++
CFLAGS = -Wall -g

$(PROGRAM): clean $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@ 

$(TEST_PROGRAM): clean $(TEST_OBJS)
	$(CC) $(CFLAGS) $(TEST_OBJS) -o $@ 

Main.o: Main.c
	$(CC) $(CFLAGS) -c $?

UnitTest.o: UnitTest.c
	$(CC) $(CFLAGS) -c $?

clean:
	rm -f $(OBJS) $(PROGRAM)

test:
	./$(TEST_PROGRAM)

run:
	./$(PROGRAM)

count:
	wc $(SOURCE) $(HEADER)