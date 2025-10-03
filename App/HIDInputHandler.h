#ifndef HIDINPUTHANDLER_H
#define HIDINPUTHANDLER_H

#include "FlightControlData.h"
#include "FlightData.h"

#include <QObject>
#include <hidapi.h>
#include <qtimer.h>

class HIDInputHandler : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool controllerStatusFlag READ controllerStatusFlag NOTIFY controllerStatusFlagChanged)


public:
    explicit HIDInputHandler(QObject *parent = nullptr) : QObject(parent), handle(nullptr), m_controllerStatusFlag(false) {}

    bool controllerStatusFlag() const { return m_controllerStatusFlag; }



    bool begin();
    bool write(FlightData* pData);
    bool writeFetureReport(FlightData* pData);
    bool readHID(FlightControlData &data);

    int res;
    uint8_t buf[65];
    hid_device* handle;

public slots:
    void setControllerStatusFlag(bool status) {
        if (m_controllerStatusFlag != status) {
            m_controllerStatusFlag = status;
            emit controllerStatusFlagChanged();
        }
    }

void process();

signals:
    void newMessage(const QString &message);
    void controllerStatusFlagChanged();

private:
    bool m_controllerStatusFlag = false;
    QTimer *timer2;


};

#endif // HIDINPUTHANDLER_H
