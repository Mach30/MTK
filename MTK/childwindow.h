#ifndef CHILDWINDOW_H
#define CHILDWINDOW_H

#include <QtGui>
#include <QWidget>
#include <QMdiSubWindow>

#include "codeeditor.h"

namespace Ui {
    class ChildWindow;
}

class ChildWindow : public QMdiSubWindow
{
    Q_OBJECT

public:
    explicit ChildWindow(QWidget *parent = 0);
    ~ChildWindow();

private:
    CodeEditor *codeEditor;
};

#endif // CHILDWINDOW_H
