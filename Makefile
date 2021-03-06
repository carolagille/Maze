#############################################################################
# Makefile for building: Maze
# Generated by qmake (3.0) (Qt 5.5.1)
# Project:  Maze.pro
# Template: app
# Command: /Users/carolagille/Qt/5.5/clang_64/bin/qmake -spec macx-clang CONFIG+=x86_64 -o Makefile Maze.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang
CXX           = /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++
DEFINES       = -DQT5BUILD -DQT5BUILD -DNGL_DEBUG -DQT_NO_DEBUG -DQT_OPENGL_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -O2 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk -mmacosx-version-min=10.7 -Wall -W -fPIC $(DEFINES)
CXXFLAGS      = -pipe -msse -msse2 -msse3 -arch x86_64 -O2 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk -std=c++11 -stdlib=libc++ -mmacosx-version-min=10.7 -Wall -W -Wno-unused-parameter -fPIC $(DEFINES)
INCPATH       = -I. -Iinclude -I/usr/local/include -I/Users/carolagille/NGL/include -I/Users/carolagille/Qt/5.5/clang_64/lib/QtOpenGL.framework/Headers -I/Users/carolagille/Qt/5.5/clang_64/lib/QtWidgets.framework/Headers -I/Users/carolagille/Qt/5.5/clang_64/lib/QtGui.framework/Headers -I/Users/carolagille/Qt/5.5/clang_64/lib/QtCore.framework/Headers -Imoc -I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/System/Library/Frameworks/AGL.framework/Headers -I/Users/carolagille/Qt/5.5/clang_64/mkspecs/macx-clang -F/Users/carolagille/Qt/5.5/clang_64/lib
QMAKE         = /Users/carolagille/Qt/5.5/clang_64/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = Maze1.0.0
DISTDIR = /Users/carolagille/Dropbox/MazeApp/Maze/obj/Maze1.0.0
LINK          = /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++
LFLAGS        = -headerpad_max_install_names -Wl,-syslibroot,/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk -stdlib=libc++ -mmacosx-version-min=10.7 -Wl,-rpath,/Users/carolagille/NGL/lib
LIBS          = $(SUBLIBS) -F/Users/carolagille/Qt/5.5/clang_64/lib -L/usr/local/lib -L/Users/carolagille/NGL/lib -l NGL -framework QtOpenGL -framework QtWidgets -framework QtGui -framework QtCore -framework DiskArbitration -framework IOKit -framework OpenGL -framework AGL 
AR            = /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ar cq
RANLIB        = /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib -s
SED           = sed
STRIP         = 

####### Output directory

OBJECTS_DIR   = obj/

####### Files

SOURCES       = src/main.cpp \
		src/Block.cpp \
		src/Grid.cpp \
		room.cpp 
OBJECTS       = obj/main.o \
		obj/Block.o \
		obj/Grid.o \
		obj/room.o
DIST          = .qmake.stash \
		Maze.pro include/Block.h \
		include/Grid.h \
		room.h src/main.cpp \
		src/Block.cpp \
		src/Grid.cpp \
		room.cpp
QMAKE_TARGET  = Maze
DESTDIR       = #avoid trailing-slash linebreak
TARGET        = Maze

####### Custom Compiler Variables
QMAKE_COMP_QMAKE_OBJECTIVE_CFLAGS = -pipe \
		-O2 \
		-isysroot \
		/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk \
		-std=c++11 \
		-stdlib=libc++ \
		-mmacosx-version-min=10.7 \
		-Wall \
		-W



first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: Maze.pro .qmake.cache /Users/carolagille/Qt/5.5/clang_64/mkspecs/macx-clang/qmake.conf /Users/carolagille/Qt/5.5/clang_64/mkspecs/features/spec_pre.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/qdevice.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/device_config.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/unix.conf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/mac.conf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/macx.conf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/sanitize.conf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/gcc-base.conf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/gcc-base-mac.conf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/clang.conf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/clang-mac.conf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/qconfig.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dcollision.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dcollision_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dcore.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dcore_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dinput.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dinput_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dlogic.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dlogic_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dquick.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dquick_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dquickrenderer.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dquickrenderer_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3drenderer.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3drenderer_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_bluetooth.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_bluetooth_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_clucene_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_concurrent.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_concurrent_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_core.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_core_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_dbus.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_dbus_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_declarative.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_declarative_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_designer.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_designer_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_designercomponents_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_enginio.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_enginio_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_gui.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_gui_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_help.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_help_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_location.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_location_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_macextras.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_macextras_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_multimedia.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_multimedia_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_network.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_network_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_nfc.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_nfc_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_opengl.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_opengl_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_openglextensions.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_positioning.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_positioning_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_printsupport.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_printsupport_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_qml.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_qml_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_qmltest.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_qmltest_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_quick.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_quick_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_quickwidgets.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_script.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_script_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_scripttools.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_scripttools_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_sensors.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_sensors_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_serialport.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_serialport_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_sql.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_sql_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_svg.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_svg_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_testlib.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_testlib_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_uiplugin.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_uitools.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_uitools_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webchannel.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webchannel_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webengine.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webengine_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webenginecore.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webenginecore_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webenginewidgets.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webenginewidgets_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webkit.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webkit_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webkitwidgets.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_websockets.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_websockets_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webview_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_widgets.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_widgets_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_xml.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_xml_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/qt_functions.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/qt_config.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/macx-clang/qmake.conf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/spec_post.prf \
		.qmake.cache \
		.qmake.stash \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/exclusive_builds.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/default_pre.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/mac/default_pre.prf \
		/Users/carolagille/NGL/UseNGL.pri \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/resolve_config.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/default_post.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/c++11.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/mac/sdk.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/mac/default_post.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/mac/objective_c.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/warn_on.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/qt.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/resources.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/moc.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/unix/opengl.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/uic.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/unix/thread.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/mac/rez.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/testcase_targets.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/exceptions.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/yacc.prf \
		/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/lex.prf \
		Maze.pro \
		/Users/carolagille/Qt/5.5/clang_64/lib/QtOpenGL.framework/QtOpenGL.prl \
		/Users/carolagille/Qt/5.5/clang_64/lib/QtWidgets.framework/QtWidgets.prl \
		/Users/carolagille/Qt/5.5/clang_64/lib/QtGui.framework/QtGui.prl \
		/Users/carolagille/Qt/5.5/clang_64/lib/QtCore.framework/QtCore.prl
	$(QMAKE) -spec macx-clang CONFIG+=x86_64 -o Makefile Maze.pro
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/spec_pre.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/qdevice.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/device_config.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/unix.conf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/mac.conf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/macx.conf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/sanitize.conf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/gcc-base.conf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/gcc-base-mac.conf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/clang.conf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/common/clang-mac.conf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/qconfig.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dcollision.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dcollision_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dcore.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dcore_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dinput.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dinput_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dlogic.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dlogic_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dquick.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dquick_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dquickrenderer.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3dquickrenderer_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3drenderer.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_3drenderer_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_bluetooth.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_bluetooth_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_bootstrap_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_clucene_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_concurrent.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_concurrent_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_core.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_core_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_dbus.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_dbus_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_declarative.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_declarative_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_designer.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_designer_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_designercomponents_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_enginio.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_enginio_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_gui.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_gui_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_help.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_help_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_location.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_location_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_macextras.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_macextras_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_multimedia.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_multimedia_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_multimediawidgets.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_network.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_network_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_nfc.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_nfc_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_opengl.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_opengl_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_openglextensions.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_openglextensions_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_platformsupport_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_positioning.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_positioning_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_printsupport.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_printsupport_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_qml.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_qml_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_qmldevtools_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_qmltest.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_qmltest_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_quick.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_quick_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_quickparticles_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_quickwidgets.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_quickwidgets_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_script.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_script_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_scripttools.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_scripttools_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_sensors.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_sensors_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_serialport.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_serialport_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_sql.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_sql_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_svg.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_svg_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_testlib.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_testlib_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_uiplugin.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_uitools.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_uitools_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webchannel.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webchannel_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webengine.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webengine_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webenginecore.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webenginecore_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webenginewidgets.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webenginewidgets_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webkit.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webkit_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webkitwidgets.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_websockets.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_websockets_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_webview_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_widgets.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_widgets_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_xml.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_xml_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_xmlpatterns.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/qt_functions.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/qt_config.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/macx-clang/qmake.conf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/spec_post.prf:
.qmake.cache:
.qmake.stash:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/exclusive_builds.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/default_pre.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/mac/default_pre.prf:
/Users/carolagille/NGL/UseNGL.pri:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/resolve_config.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/default_post.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/c++11.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/mac/sdk.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/mac/default_post.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/mac/objective_c.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/warn_on.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/qt.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/resources.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/moc.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/unix/opengl.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/uic.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/unix/thread.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/mac/rez.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/testcase_targets.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/exceptions.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/yacc.prf:
/Users/carolagille/Qt/5.5/clang_64/mkspecs/features/lex.prf:
Maze.pro:
/Users/carolagille/Qt/5.5/clang_64/lib/QtOpenGL.framework/QtOpenGL.prl:
/Users/carolagille/Qt/5.5/clang_64/lib/QtWidgets.framework/QtWidgets.prl:
/Users/carolagille/Qt/5.5/clang_64/lib/QtGui.framework/QtGui.prl:
/Users/carolagille/Qt/5.5/clang_64/lib/QtCore.framework/QtCore.prl:
qmake: FORCE
	@$(QMAKE) -spec macx-clang CONFIG+=x86_64 -o Makefile Maze.pro

qmake_all: FORCE


all: Makefile $(TARGET)

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents $(DIST) $(DISTDIR)/
	$(COPY_FILE) --parents include/Block.h include/Grid.h room.h $(DISTDIR)/
	$(COPY_FILE) --parents src/main.cpp src/Block.cpp src/Grid.cpp room.cpp $(DISTDIR)/


clean: compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) .qmake.stash
	-$(DEL_FILE) Makefile


####### Sub-libraries

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

compiler_objective_c_make_all:
compiler_objective_c_clean:
compiler_rcc_make_all:
compiler_rcc_clean:
compiler_moc_header_make_all:
compiler_moc_header_clean:
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_rez_source_make_all:
compiler_rez_source_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

obj/main.o: src/main.cpp include/Grid.h \
		include/Block.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/main.o src/main.cpp

obj/Block.o: src/Block.cpp include/Block.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/Block.o src/Block.cpp

obj/Grid.o: src/Grid.cpp include/Grid.h \
		include/Block.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/Grid.o src/Grid.cpp

obj/room.o: room.cpp room.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/room.o room.cpp

####### Install

install:  FORCE

uninstall:  FORCE

FORCE:

