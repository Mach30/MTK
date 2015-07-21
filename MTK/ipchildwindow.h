#ifndef IPCHILDWINDOW_H
#define IPCHILDWINDOW_H

#include <QtGui>
#include <QWidget>
#include <QMdiSubWindow>

#include "ipythoneditor.h"

namespace Ui {
    class IPChildWindow;
}

class IPChildWindow : public QMdiSubWindow
{
    Q_OBJECT

public:
    explicit IPChildWindow(QWidget *parent = 0);
    ~IPChildWindow();

private:
    IPythonEditor *ipEditor;
};

#endif // IPCHILDWINDOW_H
