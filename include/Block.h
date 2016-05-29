#ifndef BLOCK_H
#define BLOCK_H


class Block
{
public:
    Block(int _pos[2]);
//virtual void action() = 0;
    bool getWall();
    void setWall(bool _value);
    bool getVisited();
    void setVisited(bool _value);
    bool getVisitedPlayer();
    void setVisitedPlayer(bool _value);
    bool getVisible();
    void setVisible(bool _value);
    char getLabel();
    void setLabel(char _value);

private:
    int m_position[2];
    bool m_wall;
    bool m_visited;
    bool m_visitedByPlayer;
    bool m_visible;
    char m_label;

};

#endif // BLOCK_H
