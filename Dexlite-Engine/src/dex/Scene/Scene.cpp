#include "Scene.hpp"

#include "../Core/Engine.hpp"
#include "Entity/Entity.hpp"
#include "../Renderer/Shader/ShaderManager.hpp"
#include "Component/Camera/CameraComponent.hpp"
#include "../Util/Logging.hpp"

namespace dex
{
    Scene::Scene() 
    {
        m_Root = std::make_unique<Entity>(this, "Scene", false);
    }

    Scene::~Scene() {}

    Entity Scene::createEntity()
    {
        return Entity(this);
    }

    void Scene::destroyEntity(Entity entity)
    {
        m_Registry.destroy(entity);
    }

    void Scene::update()
    {
        m_Root->updateChildrenTransform();
    }

    void Scene::physics()
    {

    }

    void Scene::findNSetActiveCamera()
    {
        const auto& cameraView = m_Registry.view<Component::Camera>();

        if (cameraView.size() == 1)
        {
            for (auto& eID : cameraView)
            {                
                if (m_Registry.get<Component::Camera>(eID).IsEnabled)
                    m_ActiveCameraID = eID;
            }
        }
        else if (cameraView.size() > 1)
        {
            DEX_LOG_ERROR("<Scene::findNSetMainCamera>(): Too many main cameras.");
        }
        else if (cameraView.size() < 1)
        {
            DEX_LOG_ERROR("<Scene::findNSetMainCamera()>: No cameras found.");
        }
    }
}
