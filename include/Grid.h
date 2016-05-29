#ifndef GRID_H
#define GRID_H

#include<vector>
#include <memory>
#include "Block.h"

class Grid
{
public:
    Grid(int _width,int _height);
    ~Grid();
    void printGrid();
    void buildMaze();
    void buildRooms();
    void deleteRoom(int _widthS,int _widthE,int _heightS, int _heightE);
private:
    int m_width;
    int m_height;
    int m_roomAttempts;
    int m_roomMax;
    int m_roomMin;
    std::vector<std::vector<std::unique_ptr<Block>>> m_grid;
};

#endif // GRID_H
