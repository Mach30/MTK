#include "childwindow.h"
#include <QMdiSubWindow>
#include "codeeditor.h"

ChildWindow::ChildWindow(QWidget *parent) : QMdiSubWindow(parent)
{
    codeEditor = new CodeEditor(this);
    this->setWidget(codeEditor);
}

ChildWindow::~ChildWindow()
{
    codeEditor->~CodeEditor();
}

