#ifndef SIMCONNECTCONTROLLER_H
#define SIMCONNECTCONTROLLER_H

#include <QObject>

#include <windows.h>
#include <SimConnect.h>
#include "FlightData.h"

enum DATA_DEFINE_ID {
    DEFINITION_TRIM_FLAP,
};

enum DATA_REQUEST_ID {
    REQUEST_TRIM_FLAP,
};

class SimConnectController : public QObject
{
    Q_OBJECT
public:
    explicit SimConnectController(QObject *parent = nullptr);

    HANDLE hSimConnect = nullptr;

    void begin();

    bool connect();
    void run(FlightData &msfsData);

    void close();

signals:
};

#endif // SIMCONNECTCONTROLLER_H
