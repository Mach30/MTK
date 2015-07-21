#ifndef IPYTHONEDITOR_H
#define IPYTHONEDITOR_H

#include <QWidget>

namespace Ui {
class IPythonEditor;
}

class IPythonEditor : public QWidget
{
    Q_OBJECT

public:
    explicit IPythonEditor(QWidget *parent = 0);
    ~IPythonEditor();

private:
    Ui::IPythonEditor *ui;
};

#endif // IPYTHONEDITOR_H
