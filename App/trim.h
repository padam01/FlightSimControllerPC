#ifndef TRIM_H
#define TRIM_H

#include <QObject>
#include <QQmlApplicationEngine>
#include "HIDInputHandler.h"


class Trim : public QObject
{
    Q_OBJECT
    Q_PROPERTY(FlightControlData flightControlData READ flightControlData WRITE setFlightControlData NOTIFY flightControlDataChanged FINAL)
public:
    explicit Trim(QObject *parent = nullptr);



    void run(HIDInputHandler &hidController );




    FlightControlData flightControlData() const;
    void setFlightControlData(const FlightControlData &newFlightControlData);


    int trimUpLimit() const;
    void setTrimUpLimit(int newTrimUpLimit);

    int trimDownLimit() const;
    void setTrimDownLimit(int newTrimDownLimit);

    int flapUpLimit() const;
    void setFlapUpLimit(int newFlapUpLimit);

    int flapDownLimit() const;
    void setFlapDownLimit(int newFlapDownLimit);

private:

    FlightControlData m_flightControlData;

    int m_trimUpLimit = 1080;

    int m_trimDownLimit = -1080;

    int m_flapUpLimit = 0;

    int m_flapDownLimit = 76;
signals:

    void flightControlDataChanged();
};

#endif // TRIM_H
