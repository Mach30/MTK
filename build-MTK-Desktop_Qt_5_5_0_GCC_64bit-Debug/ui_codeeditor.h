/********************************************************************************
** Form generated from reading UI file 'codeeditor.ui'
**
** Created by: Qt User Interface Compiler version 5.5.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CODEEDITOR_H
#define UI_CODEEDITOR_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_CodeEditor
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *label;

    void setupUi(QWidget *CodeEditor)
    {
        if (CodeEditor->objectName().isEmpty())
            CodeEditor->setObjectName(QStringLiteral("CodeEditor"));
        CodeEditor->resize(400, 300);
        verticalLayout = new QVBoxLayout(CodeEditor);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        label = new QLabel(CodeEditor);
        label->setObjectName(QStringLiteral("label"));

        verticalLayout->addWidget(label);


        retranslateUi(CodeEditor);

        QMetaObject::connectSlotsByName(CodeEditor);
    } // setupUi

    void retranslateUi(QWidget *CodeEditor)
    {
        CodeEditor->setWindowTitle(QApplication::translate("CodeEditor", "Form", 0));
        label->setText(QApplication::translate("CodeEditor", "Window for Python Code Editing", 0));
    } // retranslateUi

};

namespace Ui {
    class CodeEditor: public Ui_CodeEditor {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CODEEDITOR_H
