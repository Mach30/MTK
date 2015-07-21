#include "ipythoneditor.h"
#include "ui_ipythoneditor.h"

IPythonEditor::IPythonEditor(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::IPythonEditor)
{
    ui->setupUi(this);
}

IPythonEditor::~IPythonEditor()
{
    delete ui;
}
