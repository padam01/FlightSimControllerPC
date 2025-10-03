#include "SimConnectController.h"


SimConnectController::SimConnectController(QObject *parent)
    : QObject{parent}
{}



void CALLBACK MyDispatchProc(SIMCONNECT_RECV* pData, DWORD cbData, void* pContext)
{

    FlightData* pDataStruct = static_cast<FlightData*>(pContext); // pContext átadott pointer

    switch (pData->dwID) {
    case SIMCONNECT_RECV_ID_SIMOBJECT_DATA: {
        SIMCONNECT_RECV_SIMOBJECT_DATA* pObjData = (SIMCONNECT_RECV_SIMOBJECT_DATA*)pData;
        if (pData->dwID == SIMCONNECT_RECV_ID_SIMOBJECT_DATA) {
            SIMCONNECT_RECV_SIMOBJECT_DATA* pObjData = (SIMCONNECT_RECV_SIMOBJECT_DATA*)pData;
            double* simData = (double*)(&pObjData->dwData);

            pDataStruct->ELEVATOR_TRIM_POSITION = static_cast<float>(simData[0])*100;
            pDataStruct->ELEVATOR_TRIM_DOWN_POSITION = -static_cast<float>(simData[1]);
            pDataStruct->ELEVATOR_TRIM_UP_POSITION = static_cast<float>(simData[2]);
            pDataStruct->FLAPS_HANDLE_PERCENT = static_cast<float>(simData[3])*100;

        }
        break;
    }
    default:
        break;
    }
}


bool SimConnectController::connect()
{
    if (SUCCEEDED(SimConnect_Open(&hSimConnect, "Trim and Flap Example", nullptr, 0, 0, 0))) {
        qDebug("Connected to SimConnect!");

        // Definiáljuk a lekérdezendő adatokat
        SimConnect_AddToDataDefinition(hSimConnect, DEFINITION_TRIM_FLAP, "ELEVATOR TRIM POSITION", "degree");
        SimConnect_AddToDataDefinition(hSimConnect, DEFINITION_TRIM_FLAP, "ELEVATOR TRIM DOWN LIMIT", "degree");
        SimConnect_AddToDataDefinition(hSimConnect, DEFINITION_TRIM_FLAP, "ELEVATOR TRIM UP LIMIT", "degree");
        SimConnect_AddToDataDefinition(hSimConnect, DEFINITION_TRIM_FLAP, "FLAPS HANDLE PERCENT", "degree");

        // Küldjünk kérést folyamatosan (0 = minden frame)
        SimConnect_RequestDataOnSimObject(hSimConnect, REQUEST_TRIM_FLAP, DEFINITION_TRIM_FLAP, SIMCONNECT_OBJECT_ID_USER, SIMCONNECT_PERIOD_VISUAL_FRAME);


        return 1;
    }
    else {
        qDebug("Failed to connect to SimConnect.");
        return 0;
    }
}

void SimConnectController::run(FlightData &msfsData)
{
    SimConnect_CallDispatch(hSimConnect, MyDispatchProc, &msfsData);
}

void SimConnectController::close()
{
    SimConnect_Close(hSimConnect);

}
