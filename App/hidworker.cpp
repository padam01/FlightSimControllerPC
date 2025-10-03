#include "hidworker.h"

HidWorker::HidWorker(HIDInputHandler *controller, Trim *trim, QObject *parent)
    : QObject{parent}, m_controller(controller), m_trim(trim)
{}

void HidWorker::process()
{
    if (m_controller && m_trim) {
        m_trim->run(*m_controller);
    }
}
