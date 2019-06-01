######################################################################
# Automatically generated by qmake (2.01a) pon. lut 18 19:06:29 2008
######################################################################

TEMPLATE = app
TARGET = gbcflsh 
DEPENDPATH += .
INCLUDEPATH += .
#DESTDIR = build

# Input
HEADERS += src/About.h \
           src/AbstractPort.h \
           src/Console.h \
           src/const.h \
           src/EraseThread.h \
           src/Gui.h \
           src/Logic.h \
           src/ReadFlashThread.h \
           src/ReadRamThread.h \
           src/Settings.h \
           src/WriteFlashThread.h \
           src/WriteRamThread.h \
           src/about.xpm \
           src/icon.xpm
SOURCES += src/About.cpp \
           src/EraseThread.cpp \
           src/gbcflsh.cpp \
           src/Gui.cpp \
           src/Logic.cpp \
           src/ReadFlashThread.cpp \
           src/ReadRamThread.cpp \
           src/Settings.cpp \
           src/WriteFlashThread.cpp \
           src/WriteRamThread.cpp
TRANSLATIONS += src/gbcflsh_english.ts \
                src/gbcflsh_french.ts \
                src/gbcflsh_german.ts \
                src/gbcflsh_polish.ts
RC_FILE = src/res.rc
win32 {
SOURCES += src/SerialPortWin.cpp \
           src/USBPortWin.cpp 
HEADERS += src/SerialPortWin.h \
           src/USBPortWin.h
LIBS += -lftd2xx
}
unix {
SOURCES += src/SerialPort.cpp \
           src/USBPort.cpp 
HEADERS += src/SerialPort.h \
           src/USBPort.h
LIBS += -lftdi
langpack.extra = lrelease gbcf.pro
langpack.path = /usr/share/gbcf
langpack.files = src/*.qm
exec.path = /usr/bin
exec.files = gbcflsh
config.path = ~/.config/GBCFProject
config.files = GameBoyCartFlasher.conf
INSTALLS += langpack exec config
}

OTHER_FILES +=
