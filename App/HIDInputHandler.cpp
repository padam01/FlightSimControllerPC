#include "HIDInputHandler.h"
#include "ConnectionStatus.h"

#include <QDebug>

auto map = [](int x, int in_min, int in_max, int out_min, int out_max) {
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
};





bool HIDInputHandler::begin() {

    timer2 = new QTimer(this);
    QObject::connect(timer2, &QTimer::timeout, this, &HIDInputHandler::process);

    timer2->start(500);
    // res = hid_init();

    // handle = hid_open(0x303a, 0x1001, NULL);
    // if (!handle) {
    //     emit newData("Unable to open device");
    //     setControllerStatusFlag(false);
    //     qDebug("Unable to open device");
    //     hid_exit();
    //     return 1;
    // }
    // qDebug("Sikeres cstlakozás");
    // emit newData("Sikeres csatlakozás");
    // setControllerStatusFlag(true);
    return 0;
}

bool HIDInputHandler::write(FlightData* pData) {
    if (!pData) return false;

    buf[0] = 0x2;
    buf[1] = pData->ELEVATOR_TRIM_POSITION & 0xFF;
    buf[2] = (pData->ELEVATOR_TRIM_POSITION >> 8) & 0xFF;
    buf[3] = pData->FLAPS_HANDLE_PERCENT & 0xFF;
    buf[4] = (pData->FLAPS_HANDLE_PERCENT >> 8) & 0xFF;
    res = hid_write(handle, buf, 65);

    QString err = QString::fromWCharArray(hid_error(handle));

    emit newMessage(err);
    return res;
}


bool HIDInputHandler::writeFetureReport(FlightData* pData) {
    if (!pData) return 0;

    uint8_t buf2[16];

    buf2[0] = 0x3;
    buf2[1] = pData->ELEVATOR_TRIM_DOWN_POSITION;
    buf2[2] = pData->ELEVATOR_TRIM_UP_POSITION;

    res = hid_send_feature_report(handle, buf2, sizeof(buf2));

    QString err = QString::fromWCharArray(hid_error(handle));

    emit newMessage(err);

    return 1;

}


bool HIDInputHandler::readHID(FlightControlData &data){

    if(!handle) return false;

    unsigned char buf[7] = "";

    int res = hid_read_timeout(handle, buf, sizeof(buf), 10);

    qDebug() << res;

    if (res < 0){
        qDebug("Unable to read data");
        setControllerStatusFlag(false);
        return false;
    }

    if(res == 0){
        qDebug("Read timeout");

        return true;
    }

    data.flapAngle = map((buf[2] << 8 | buf[1]), 0, 65535, 0, 20);
    int16_t rawTrim = static_cast<int16_t>(((buf[4] << 8) | buf[3]));

    data.trimWheel = map(rawTrim, -12288, 12288, -1080, 1080);
    data.buttons = (buf[6]<<8) | buf[5];



    return true;
}

void HIDInputHandler::process()
{
    if (!handle) {
        handle = hid_open(0x303a, 0x1001, NULL);

        if (handle) {
            setControllerStatusFlag(true);
            emit newMessage("Controller connected");
        } else{
            setControllerStatusFlag(false);
            return;
        }
    }

     // Data data;
     // if (!readHID(data)) {
     //     qDebug("process");
     //     emit newMessage("HID read failed, disconnecting...");
     //     hid_close(handle);
     //     handle = nullptr;
     //     setControllerStatusFlag(false);
     // }
}


