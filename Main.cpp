#include <iostream>
#include <sys/wait.h>
#include <unistd.h>

using namespace std;

int main(int argc, char *argv[])
{
    int id = fork();
    int n;
    if (id == 0)
    {
        n = 1;
    }
    else
    {
        n = 6;
    }
    if (id != 0)
    {
        wait(NULL);
    }

    for (int i = n; i < n + 5; i++)
    {
        cout << i << " ";
        fflush(stdout);
    }

    if (id != 0)
    {
        cout << endl;
    }
    cout << "Ilias" << endl;
    return 0;
}
