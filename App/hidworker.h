#ifndef HIDWORKER_H
#define HIDWORKER_H

#include <QObject>
#include <QThread>

#include "HIDInputHandler.h"
#include "trim.h"

class HidWorker : public QObject
{
    Q_OBJECT



public:
    explicit HidWorker(HIDInputHandler *controller, Trim *trim, QObject *parent = nullptr);



public slots:
    void process();

signals:
    void finished();

private:
    HIDInputHandler *m_controller;
    Trim *m_trim;
};

#endif // HIDWORKER_H
