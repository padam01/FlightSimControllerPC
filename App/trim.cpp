#include "trim.h"



Trim::Trim(QObject *parent)
    : QObject{parent}, m_flightControlData{0,0,0}
{

};

void Trim::run(HIDInputHandler &hidController)
{


   // hidController.readHID(data);


}





FlightControlData Trim::flightControlData() const
{
    return m_flightControlData;
}

void Trim::setFlightControlData(const FlightControlData &newFlightControlData)
{
    if (m_flightControlData == newFlightControlData)
        return;
    if (newFlightControlData.trimWheel <= m_trimUpLimit && newFlightControlData.trimWheel >= m_trimDownLimit)
        m_flightControlData.trimWheel = newFlightControlData.trimWheel;

    if (newFlightControlData.flapAngle <= m_flapDownLimit && newFlightControlData.flapAngle >= m_flapUpLimit)
        m_flightControlData.flapAngle = newFlightControlData.flapAngle;


    m_flightControlData.buttons = newFlightControlData.buttons;

    emit flightControlDataChanged();
}

int Trim::trimUpLimit() const
{
    return m_trimUpLimit;
}

void Trim::setTrimUpLimit(int newTrimUpLimit)
{
    m_trimUpLimit = newTrimUpLimit;
}

int Trim::trimDownLimit() const
{
    return m_trimDownLimit;
}

void Trim::setTrimDownLimit(int newTrimDownLimit)
{
    m_trimDownLimit = newTrimDownLimit;
}

int Trim::flapUpLimit() const
{
    return m_flapUpLimit;
}

void Trim::setFlapUpLimit(int newFlapUpLimit)
{
    m_flapUpLimit = newFlapUpLimit;
}

int Trim::flapDownLimit() const
{
    return m_flapDownLimit;
}

void Trim::setFlapDownLimit(int newFlapDownLimit)
{
    m_flapDownLimit = newFlapDownLimit;
}
