#include "Grid.h"
#include <iostream>
#include <random>
Grid::Grid(int _width, int _height)
{
 ////////////////////Grid///////////////////////////////
   m_width=_width;
   m_height=_height;
   for(int i=0;i<=m_width;++i)
     {
          m_grid.push_back(std::vector<std::unique_ptr<Block>>(0));

         for(int j=0;j<=m_height;++j)
         {
             int pos[2]={i,j};



             m_grid[i].push_back(std::unique_ptr<Block>(new Block(pos)));
             m_grid[i][j]->setWall(true);

        }

//////////////////////////Rooms/////////////////////////


         m_roomAttempts=10;
         m_roomMax=6;
         m_roomMin=3;


   }
//  for(int i=0;i<=m_width;++i)
//  {
//       m_grid.push_back(std::vector<std::unique_ptr<Block>>(0));

//      for(int j=0;j<=m_height;++j)
//      {
//          int pos[2]={i,j};


//          //std::unique_ptr<Block> block=std::unique_ptr<Block>(new Block(pos));
//          m_grid[i].push_back(std::unique_ptr<Block>(new Block(pos)));
//          if((j%2)==0)
//          {
//              m_grid[i][j]->setWall(true);
//          }

//          else if(j==m_height-1)
//          {
//              m_grid[i][j]->setWall(true);
//          }
//          else if((i%2)==0)
//          {
//              m_grid[i][j]->setWall(true);
//          }
//          else if(i==m_width-1)
//          {
//              m_grid[i][j]->setWall(true);
//          }
//      }
// }
}
Grid::~Grid()
{
}

void Grid::printGrid()
{
    for(int i=0;i<m_width;i++)
    {

        for(int j=0;j<m_height;j++)
        {
          //std::cout<< m_grid[i][j]->getWall()<< "  ";
          if (m_grid[i][j]->getLabel()=='s')
            {
                std::cout<< "s";
            }

          else if (m_grid[i][j]->getWall())
          {
              std::cout<< "_";
          }

          else
          {
              std::cout<<" ";
          }
        }
        std::cout<< "\n";
    }


}
void Grid::buildRooms()
{


    std::random_device rd;
    std::mt19937_64 gen(rd());
    std::uniform_int_distribution<int> sizeDistrib(m_roomMin,m_roomMax);
    std::uniform_int_distribution<int> widthDistrib(2,m_width-2);
    std::uniform_int_distribution<int> heightDistrib(2,m_height-2);
    for(int i=0;i<m_roomAttempts;i++)
    {

        printGrid();
       int discard=false;
       while(!discard)
       {
            int origY=heightDistrib(gen);
            int origX=widthDistrib(gen);
            int sizeX=sizeDistrib(gen);

            int sizeY=sizeDistrib(gen);
            std::cout<<"Y="<<sizeY<<"\n";
           if((m_grid[origY-1][origX]->getWall()==false)||(m_grid[origY][origX-1]->getWall()==false)||(m_grid[origY-1][origX-1]->getWall()==false))
           {
               discard=true;
               break;
           }

           for(int y=origY;(y<=(origY+sizeY));y++)
           {

                if(y>=m_height-1){break;}

               for(int x=origX;(x<=(origX+sizeX));x++)
               {

                    if(x>=m_width-1){break;}

                    if((m_grid[y+1][x]->getWall()==false)\
                     ||(m_grid[y][x+1]->getWall()==false)\
                     ||(m_grid[y+1][x+1]->getWall()==false)\
                     ||(m_grid[origY-1][x]->getWall()==false)\
                     ||(m_grid[y][origX-1]->getWall()==false))
                    {
                            deleteRoom(origY,y,origX,x);
                            discard=true;
                            break;
                    }

                    else
                    {
                        m_grid[y][x]->setWall(false);
                    }
               }

           }
           discard=true;

       }
    }
}

void Grid::deleteRoom(int _widthS,int _widthE,int _heightS, int _heightE)
{
    for(int i=_widthS;i<=_widthE;++i)
      {

          for(int j=_heightS;j<=_heightE;++j)
          {

              m_grid[i][j]->setWall(true);

         }
       }
}

void Grid::buildMaze()
{

    buildRooms();
}





//void Grid::buildMaze()
//{



//    std::random_device rd;
//    std::mt19937_64 generator(rd());
//    std::uniform_int_distribution<int> distribution(1,m_height-2);
//    int start = distribution(generator);
//    if (start%2==10)
//    {
//        start+=1;
//    }
//    char string='s';
//    m_grid[start][1]->setLabel(string);
//    m_grid[start][1]->setVisited(true);

//    std::cout<<start<<"\n";

//    //choose a random direction
//    //0=Up 1=down 2=left 3=right
//    bool finished =false;
//    int pos[2]={start,1};
//    int newPos[2]={pos[0],pos[1]};
//    while(finished==false)
//    {
//        for(int i=0;i<=20;i++)
//        {

//        newPos[0]=pos[0];
//        newPos[1]=pos[1];
//        std::uniform_int_distribution<int> distribution2(2,3);
//        int direction= distribution2(generator);

//        switch(direction)
//        {
//        case 0:
//            std::cout<<"up\n";
//            newPos[0]-=2;
//            if (newPos[0]<=0)
//            {
//                newPos[0]+=2;
//            }
//            break;


//        case 1:
//            std::cout<<"down\n";
//            newPos[0]+=2;
//            if (newPos[0]>=m_height)
//            {
//                newPos[0]-=2;
//            }
//            break;
//        case 2:
//            std::cout<<"left\n";
//            newPos[1]-=2;
//            if (newPos[1]<=0)
//            {
//                newPos[1]+=2;
//            }
//            break;

//        case 3:
//            std::cout<<"right\n";
//            newPos[1]+=2;
//            if (newPos[1]<=m_width)
//            {
//                newPos[1]-=2;
//            }

//            break;
//        }


//        if(m_grid[newPos[0]][newPos[1]]->getVisited()==false)
//        {

//           int wall[2]={(pos[0]+(newPos[0]-pos[0])),(pos[1]+(newPos[1]-pos[1]))};
//           m_grid[(wall[0])][(wall[1])]->setWall(false);
//           pos[0] =newPos[0];
//           pos[1]=newPos[1];
//           std::cout<<"here\n";
//           //break;
//        }

//        else
//        {
//            //pos[0]=start;
//            //pos[1]=1;
//            //std::cout<<"here\n";
//            //break;
//        }


//        }



//        finished=true;
//     }


//}
