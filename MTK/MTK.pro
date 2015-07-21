#-------------------------------------------------
#
# Project created by QtCreator 2015-07-20T11:49:44
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = MTK
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    codeeditor.cpp \
    childwindow.cpp \
    ipythoneditor.cpp \
    ipchildwindow.cpp

HEADERS  += mainwindow.h \
    codeeditor.h \
    childwindow.h \
    ipythoneditor.h \
    ipchildwindow.h

FORMS    += mainwindow.ui \
    codeeditor.ui \
    ipythoneditor.ui
