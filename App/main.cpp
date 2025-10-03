// Copyright (C) 2024 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QThread>
#include <QTimer>

#include "autogen/environment.h"

#include "HIDInputHandler.h"
#include "SimConnectController.h"
#include "trim.h"

int main(int argc, char *argv[])
{
    set_qt_environment();
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(mainQmlFile);
    QObject::connect(
                &engine, &QQmlApplicationEngine::objectCreated, &app,
                [url](QObject *obj, const QUrl &objUrl)
    {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    engine.addImportPath(QCoreApplication::applicationDirPath() + "/qml");
    engine.addImportPath(":/");



    Trim trim;
    HIDInputHandler hidController;
    SimConnectController msfs;

    engine.rootContext()->setContextProperty("trim", &trim);
    engine.rootContext()->setContextProperty("hidController", &hidController);

    engine.load(url);

    auto roots = engine.rootObjects();

    if (roots.isEmpty()) return -1;



    msfs.connect();
    hidController.begin();


    QTimer *timer = new QTimer();

    QObject::connect(timer, &QTimer::timeout, &trim,  [&]() {
        msfs.run();
        trim.run(hidController);
    });

    timer->start(10);


   // QObject::connect(&app, &QCoreApplication::aboutToQuit, workerThread, &QThread::quit);
   // QObject::connect(workerThread, &QThread::finished, worker, &QObject::deleteLater);

   // workerThread->start();

    return app.exec();
}
