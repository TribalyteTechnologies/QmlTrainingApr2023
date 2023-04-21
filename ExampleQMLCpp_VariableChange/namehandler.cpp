#include "namehandler.h"

NameHandler::NameHandler(QObject *parent)
    : QObject{parent}, _nameSaved("No name saved")
{

}

QString NameHandler::nameSaved()
{
    return _nameSaved;
}

void NameHandler::setNameSaved(QString newName)
{
    _nameSaved = newName;
    emit nameSavedChanged();
}

void NameHandler::setName(QString newName)
{
    _nameSaved = newName;
    emit nameSavedChanged();
}
