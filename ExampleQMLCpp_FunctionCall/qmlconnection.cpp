#include "qmlconnection.h"
#include <QDebug>

QmlConnection::QmlConnection(QObject *parent) : QObject(parent)
{

}

void QmlConnection::callFromQml()
{
    qDebug() << "There has been a call from qml";
}
