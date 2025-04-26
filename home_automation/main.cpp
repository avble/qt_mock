#include "model/device_model.h"
#include "model/llmwrapper.h"

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlFileSelector>
#include <QQmlContext>
#include <QQuickView>
#include <iostream>
#include <unordered_map>
#include <vector>
#include <iostream>

int main(int argc, char *argv[]) { 
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

  
    QGuiApplication app(argc, argv);
    qmlRegisterType<DeviceModel>("avhome", 1, 0, "DeviceModel");
    //qmlRegisterType<LlmWrapper>("avhome", 1, 0, "LlmWrapper");
    

    LlmWrapper* llmWrapper = new LlmWrapper(&app);
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("llmWrapper", llmWrapper);
    engine.load(QUrl(QStringLiteral("qrc:/avble/resources/qml/main.qml")));
    if (engine.rootObjects().isEmpty())
    {
        return -1;
    }

    return app.exec();
}

