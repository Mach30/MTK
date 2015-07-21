#include "ipchildwindow.h"
#include <QMdiSubWindow>
#include "ipythoneditor.h"

IPChildWindow::IPChildWindow(QWidget *parent) : QMdiSubWindow(parent)
{
    ipEditor = new IPythonEditor(this);
    this->setWidget(ipEditor);
}

IPChildWindow::~IPChildWindow()
{
    ipEditor->~IPythonEditor();
}
