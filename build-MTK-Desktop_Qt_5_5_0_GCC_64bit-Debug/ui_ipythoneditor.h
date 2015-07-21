/********************************************************************************
** Form generated from reading UI file 'ipythoneditor.ui'
**
** Created by: Qt User Interface Compiler version 5.5.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_IPYTHONEDITOR_H
#define UI_IPYTHONEDITOR_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_IPythonEditor
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *label;

    void setupUi(QWidget *IPythonEditor)
    {
        if (IPythonEditor->objectName().isEmpty())
            IPythonEditor->setObjectName(QStringLiteral("IPythonEditor"));
        IPythonEditor->resize(400, 300);
        verticalLayout = new QVBoxLayout(IPythonEditor);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        label = new QLabel(IPythonEditor);
        label->setObjectName(QStringLiteral("label"));

        verticalLayout->addWidget(label);


        retranslateUi(IPythonEditor);

        QMetaObject::connectSlotsByName(IPythonEditor);
    } // setupUi

    void retranslateUi(QWidget *IPythonEditor)
    {
        IPythonEditor->setWindowTitle(QApplication::translate("IPythonEditor", "Form", 0));
        label->setText(QApplication::translate("IPythonEditor", "IPython/Jupyter Editor", 0));
    } // retranslateUi

};

namespace Ui {
    class IPythonEditor: public Ui_IPythonEditor {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_IPYTHONEDITOR_H
