TARGET=Maze
QT+=gui opengl core\

CONFIG+=c++11

isEqual(QT_MAJOR_VERSION, 5) {
        cache()
        DEFINES +=QT5BUILD
}
INCLUDEPATH += /usr/local/include/
# as I want to support 4.8 and 5 this will set a flag for some of the mac stuff
# mainly in the types.h file for the setMacVisual which is native in Qt5
isEqual(QT_MAJOR_VERSION, 5) {
        cache()
        DEFINES +=QT5BUILD
}
!win32:{
# this demo uses SDL so add the paths using the sdl2-config tool
QMAKE_CXXFLAGS+=-I/usr/local/include/SDL2 -D_THREAD_SAFE
message(output from sdl2-config --cflags added to CXXFLAGS= $$QMAKE_CXXFLAGS)

LIBS+=-L/usr/local/lib -lSDL2
message(output from sdl2-config --libs added to LIB=$$LIBS)
}

win32 :{
    message(Make sure that SDL2 is installed in C:\SDL2 and the libs are built)
    INCLUDEPATH+=C:\SDL2\include
    LIBS+=-LC:\SDL2\VisualC\SDL\x64\Debug -lSDL2
    LIBS+=-LC:\SDL2\VisualC\SDLmain\x64\Debug -lSDL2main

}
MOC_DIR=moc
CONFIG-=app_bundle

SOURCES += $$PWD/src/main.cpp\
                src/Block.cpp\
                src/Grid.cpp \
                src/room.cpp \
    src/sdlwindow.cpp

HEADERS += $$PWD/include/Block.h\
                 include/Grid.h \
                 include/room.h \
                include/sdlwindow.h


OBJECTS_DIR= $$PWD/obj

INCLUDEPATH+=$$PWD/include

DESTDIR=./

CONFIG += console



NGLPATH=$$(NGLDIR)
isEmpty(NGLPATH){
        message("including $HOME/NGL")
        include($(HOME)/NGL/UseNGL.pri)
}
else{
        message("Using custom NGL location")
        include($(NGLDIR)/UseNGL.pri)
}

