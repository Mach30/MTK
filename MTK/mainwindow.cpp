#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QtGui>
#include <QMessageBox>
#include <QMdiSubWindow>
#include "childwindow.h"
#include "ipchildwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::displayAbout()
{
    QMessageBox::about(this, tr("About Mathematics Tool Kit (MTK)"), tr("TODO: HTML Content"));
}

void MainWindow::createCodeChild()
{
    ChildWindow *childWindow = new ChildWindow(ui->mdiArea);
    childWindow->setWindowTitle("Code Editor");
    childWindow->setAttribute(Qt::WA_DeleteOnClose);
    childWindow->show();
}

void MainWindow::createIPythonChild()
{
    IPChildWindow *childWindow = new IPChildWindow(ui->mdiArea);
    childWindow->setWindowTitle("IPython Editor");
    childWindow->setAttribute(Qt::WA_DeleteOnClose);
    childWindow->show();
}
