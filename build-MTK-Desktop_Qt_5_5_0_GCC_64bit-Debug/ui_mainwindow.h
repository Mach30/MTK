/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.5.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMdiArea>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QAction *actionNew_Code_Window;
    QAction *actionAbout;
    QAction *actionQuit;
    QAction *actionNew_IPython_Window;
    QAction *actionTile;
    QAction *actionStack;
    QAction *actionMach_30_Default;
    QWidget *centralWidget;
    QVBoxLayout *verticalLayout;
    QMdiArea *mdiArea;
    QMenuBar *menuBar;
    QMenu *menuFile;
    QMenu *menuWindow;
    QMenu *menuModes;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;
    QToolBar *toolBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(1179, 687);
        actionNew_Code_Window = new QAction(MainWindow);
        actionNew_Code_Window->setObjectName(QStringLiteral("actionNew_Code_Window"));
        actionAbout = new QAction(MainWindow);
        actionAbout->setObjectName(QStringLiteral("actionAbout"));
        actionQuit = new QAction(MainWindow);
        actionQuit->setObjectName(QStringLiteral("actionQuit"));
        actionNew_IPython_Window = new QAction(MainWindow);
        actionNew_IPython_Window->setObjectName(QStringLiteral("actionNew_IPython_Window"));
        actionTile = new QAction(MainWindow);
        actionTile->setObjectName(QStringLiteral("actionTile"));
        actionStack = new QAction(MainWindow);
        actionStack->setObjectName(QStringLiteral("actionStack"));
        actionMach_30_Default = new QAction(MainWindow);
        actionMach_30_Default->setObjectName(QStringLiteral("actionMach_30_Default"));
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        verticalLayout = new QVBoxLayout(centralWidget);
        verticalLayout->setSpacing(6);
        verticalLayout->setContentsMargins(11, 11, 11, 11);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        mdiArea = new QMdiArea(centralWidget);
        mdiArea->setObjectName(QStringLiteral("mdiArea"));

        verticalLayout->addWidget(mdiArea);

        MainWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 1179, 20));
        menuFile = new QMenu(menuBar);
        menuFile->setObjectName(QStringLiteral("menuFile"));
        menuWindow = new QMenu(menuBar);
        menuWindow->setObjectName(QStringLiteral("menuWindow"));
        menuModes = new QMenu(menuWindow);
        menuModes->setObjectName(QStringLiteral("menuModes"));
        MainWindow->setMenuBar(menuBar);
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        MainWindow->setStatusBar(statusBar);
        toolBar = new QToolBar(MainWindow);
        toolBar->setObjectName(QStringLiteral("toolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, toolBar);

        menuBar->addAction(menuFile->menuAction());
        menuBar->addAction(menuWindow->menuAction());
        menuFile->addAction(actionNew_Code_Window);
        menuFile->addAction(actionNew_IPython_Window);
        menuFile->addAction(actionAbout);
        menuFile->addSeparator();
        menuFile->addAction(actionQuit);
        menuWindow->addAction(actionTile);
        menuWindow->addAction(actionStack);
        menuWindow->addAction(menuModes->menuAction());
        menuModes->addAction(actionMach_30_Default);

        retranslateUi(MainWindow);
        QObject::connect(actionQuit, SIGNAL(triggered()), MainWindow, SLOT(close()));
        QObject::connect(actionAbout, SIGNAL(triggered()), MainWindow, SLOT(displayAbout()));
        QObject::connect(actionNew_Code_Window, SIGNAL(triggered()), MainWindow, SLOT(createCodeChild()));
        QObject::connect(actionTile, SIGNAL(triggered()), mdiArea, SLOT(tileSubWindows()));
        QObject::connect(actionNew_IPython_Window, SIGNAL(triggered()), MainWindow, SLOT(createIPythonChild()));

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "Mathematics Tool Kit (MTK)", 0));
        actionNew_Code_Window->setText(QApplication::translate("MainWindow", "New Code Editor", 0));
        actionAbout->setText(QApplication::translate("MainWindow", "About", 0));
        actionQuit->setText(QApplication::translate("MainWindow", "Quit", 0));
        actionNew_IPython_Window->setText(QApplication::translate("MainWindow", "New IPython Window", 0));
        actionTile->setText(QApplication::translate("MainWindow", "Tile", 0));
        actionStack->setText(QApplication::translate("MainWindow", "Cascade", 0));
        actionMach_30_Default->setText(QApplication::translate("MainWindow", "Mach 30 Default", 0));
        menuFile->setTitle(QApplication::translate("MainWindow", "File", 0));
        menuWindow->setTitle(QApplication::translate("MainWindow", "Window", 0));
        menuModes->setTitle(QApplication::translate("MainWindow", "Modes", 0));
        toolBar->setWindowTitle(QApplication::translate("MainWindow", "toolBar", 0));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
