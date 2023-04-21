#ifndef QMLCONNECTION_H
#define QMLCONNECTION_H

#include <QObject>

class QmlConnection : public QObject
{
    Q_OBJECT
public:
    explicit QmlConnection(QObject *parent = nullptr);

signals:

public slots:
    void callFromQml();

};

#endif // QMLCONNECTION_H
