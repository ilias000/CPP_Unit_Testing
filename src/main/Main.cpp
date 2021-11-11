#include <iostream>
#include <sys/wait.h>
#include <unistd.h>

#include "../utilities/Util.hpp"

using namespace std;

int main(int argc, char *argv[])
{
    cout << add(2, 2) << endl;
    return 0;
}
