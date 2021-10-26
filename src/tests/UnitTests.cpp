#include "../../externalLibraries/Acutest.hpp"
#include "../utilities/Util.hpp"

void test_add(void)
{
    TEST_CHECK_(add(2, 2) == (2 + 2), "add(%d, %d)==%d", 2, 2, (2 + 2));
}

TEST_LIST = {
    {"int add(int, int);"},
    {0}};