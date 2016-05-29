#include "Block.h"

Block::Block(int _pos[2])
{
    m_position[0]=_pos[0];
    m_position[1]=_pos[1];
    m_wall=false;
    m_visited=false;
    m_visitedByPlayer=false;
}

bool Block::getWall()
{
    return m_wall;
}

void Block::setWall(bool _value)
{
    m_wall=_value;
}

bool Block::getVisited()
{
    return m_visited;
}

void Block::setVisited(bool _value)
{
    m_visited=_value;
}

bool Block::getVisitedPlayer()
{
    return m_visitedByPlayer;
}

void Block::setVisitedPlayer(bool _value)
{
    m_visitedByPlayer=_value;
}

bool Block::getVisible()
{
    return m_visible;
}

void Block::setVisible(bool _value)
{
    m_visible=_value;
}

char Block::getLabel()
{
    return m_label;
}

void Block::setLabel(char _value)
{
    m_label=_value;
}
