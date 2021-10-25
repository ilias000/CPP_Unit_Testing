OBJS = Main.o
SOURCE = Main.cpp
HEADER =
PROGRAM = Main

# TEST_OBJS = output/UnitTest.o
# TEST_SOURCE = src/Tests/UnitTest.cpp
# TEST_HEADER =
# TEST_PROGRAM = Test

CC = g++
CFLAGS = -Wall -g

$(PROGRAM): clean $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

# $(TEST_PROGRAM): clean $(TEST_OBJS)
# 	$(CC) $(CFLAGS) $(TEST_OBJS) -o $@ 

Main.o: Main.cpp
	$(CC) $(CFLAGS) -c $?

# UnitTest.o: UnitTest.cpp
# 	$(CC) $(CFLAGS) -c $?

clean:
	rm -f $(OBJS) $(PROGRAM)

# test:
# 	./$(TEST_PROGRAM)

run:
	./$(PROGRAM)

count:
	wc $(SOURCE) $(HEADER)