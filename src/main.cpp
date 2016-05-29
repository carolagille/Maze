#include <iostream>
#include "Grid.h"

bool testOR(bool a,bool b,bool c,bool d, bool e)
{
    return (a||b||c||d||e);
}

int main()
{

    Grid myGrid(20,20);

    myGrid.buildMaze();
    myGrid.printGrid();


    return 0;
}
