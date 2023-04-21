#include <QDesktopServices>
#include <QUrl>
#include <QVariant>
#include <QQuickView>
#include <QObject>
#include <QQuickItem>
#include <QQmlApplicationEngine>
#include "windowmanager.h"

WindowManager::WindowManager(QObject *parent)
    : QObject{parent},
      techVisitors(0),
      ideasVisitors(0)
{

}

void WindowManager::initWindow(QObject *object)
{
    windowLeftObject = object->findChild<QObject*>("leftRectangle");
    windowRightObject = object->findChild<QObject*>("rightRectangle");
}

int WindowManager::cntTechVisitors()
{
    return techVisitors;
}

void WindowManager::setCntTechVisitors(int value)
{
    techVisitors = value;
    emit cntTechVisitorsChanged();
}

int WindowManager::cntIdeasVisitors()
{
    return ideasVisitors;
}

void WindowManager::setCntIdeasVisitors(int value)
{
    ideasVisitors = value;
    emit cntIdeasVisitorsChanged();
}

void WindowManager::openUrl(QString url)
{
    QDesktopServices::openUrl(QUrl(url));
}

void WindowManager::changeLeftColor(QString leftColor)
{
    windowLeftObject->setProperty("color", (leftColor=="Original")?("#afd600"):(leftColor));
}

void WindowManager::changeRightColor(QString rightColor)
{
    windowRightObject->setProperty("color", (rightColor=="Original")?("#4287f5"):(rightColor));
}
