#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "windowmanager.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    //qmlRegisterType<WindowManager>("WindowManager", 1, 0, "WindowManager");

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    WindowManager *windowManager = new WindowManager(&app);
    engine.rootContext()->setContextProperty("classWindowManager", windowManager);

    QObject *mainObject = engine.rootObjects().at(0);
    windowManager->initWindow(mainObject);

    QObject::connect(mainObject, SIGNAL(techButtonPressed(QString)),
                         windowManager, SLOT(openUrl(QString)));
    return app.exec();
}
