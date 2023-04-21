#ifndef NAMEHANDLER_H
#define NAMEHANDLER_H

#include <QObject>

class NameHandler : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString nameSaved READ nameSaved WRITE setNameSaved NOTIFY nameSavedChanged)
public:
    explicit NameHandler(QObject *parent = nullptr);
    QString nameSaved();
    void setNameSaved(QString newName);

public slots:
    void setName(QString newName);

signals:
    void nameSavedChanged();

private:
    QString _nameSaved;

};

#endif // NAMEHANDLER_H
