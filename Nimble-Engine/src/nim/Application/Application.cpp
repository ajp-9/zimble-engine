#include "Application.hpp"

#include <SDL2/SDL.h>
#include <iostream>

namespace nim
{
    Application::Application()
        : m_Window(glm::ivec2(300, 300))
    {

    }

    Application::~Application()
    {
    }

    void Application::update()
    {
        m_Window.update();

        auto events = m_Window.getEventQueue();
        for (auto& e : events)
        {
            m_LayerManager.propagateEvent(e);
        }
    }
}
