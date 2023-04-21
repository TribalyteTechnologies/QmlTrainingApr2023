#ifndef WINDOWMANAGER_H
#define WINDOWMANAGER_H

#include <QObject>
#include <QDebug>
#include <QtQml/qqmlregistration.h>

class WindowManager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int cntTechVisitors READ cntTechVisitors WRITE setCntTechVisitors NOTIFY cntTechVisitorsChanged)
    Q_PROPERTY(int cntIdeasVisitors READ cntIdeasVisitors WRITE setCntIdeasVisitors NOTIFY cntIdeasVisitorsChanged)
    QML_ELEMENT
public:
    explicit WindowManager(QObject *parent = nullptr);
    void initWindow(QObject* object);
    int cntTechVisitors();
    void setCntTechVisitors(int value);
    int cntIdeasVisitors();
    void setCntIdeasVisitors(int value);

signals:

public slots:
    void openUrl(QString url);
    void changeLeftColor(QString leftColor);
    void changeRightColor(QString rightColor);

signals:
    void cntTechVisitorsChanged();
    void cntIdeasVisitorsChanged();

private:
    int techVisitors;
    int ideasVisitors;

    QObject *mainObject;
    QObject *windowLeftObject;
    QObject *windowRightObject;
};

#endif // WINDOWMANAGER_H
