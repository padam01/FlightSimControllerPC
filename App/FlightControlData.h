#ifndef FLIGHTCONTROLDATA_H
#define FLIGHTCONTROLDATA_H

#include <QObject>

struct FlightControlData {
    Q_GADGET

    Q_PROPERTY(float flapAngle MEMBER flapAngle)
    Q_PROPERTY(float trimWheel MEMBER trimWheel)
    Q_PROPERTY(int buttons MEMBER buttons)

public:
    float flapAngle = 0;
    float trimWheel = 0;
    int buttons = 0;



    bool operator==(const FlightControlData &other) const {
        return flapAngle == other.flapAngle &&
               trimWheel == other.trimWheel &&
               buttons == other.buttons;
    }

    bool operator!=(const FlightControlData &other) const {
        return !(*this == other);
    }
};



#endif // FLIGHTCONTROLDATA_H
