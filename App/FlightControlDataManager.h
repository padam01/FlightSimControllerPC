#ifndef FLIGHTCONTROLDATAMANAGER_H
#define FLIGHTCONTROLDATAMANAGER_H

#include <QObject>

class FlightControlDataManager : public QObject
{
    Q_OBJECT
public:
    explicit FlightControlDataManager(QObject *parent = nullptr);

signals:
};

#endif // FLIGHTCONTROLDATAMANAGER_H
