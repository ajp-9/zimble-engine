#include "ViewportPanel.hpp"

#include <imgui/imgui.h>

namespace dex
{
    ViewportPanel::ViewportPanel(dex::Window* window)
        : m_Window(window), m_Framebuffer(glm::vec2(100, 100), { ColorAttachmentFormat::RGBA, ColorAttachmentFormat::RED_INTEGER })
    {
        
    }

    void ViewportPanel::render(CurrentScene& current_scene, Renderer& renderer)
    {
        ImGui::Begin("Viewport", (bool*)0, ImGuiWindowFlags_NoCollapse);

        auto viewportMinRegion = ImGui::GetWindowContentRegionMin();
        auto viewportMaxRegion = ImGui::GetWindowContentRegionMax();
        auto viewportOffset = ImGui::GetWindowPos();
        m_ViewportBounds[0] = { viewportMinRegion.x + viewportOffset.x, viewportMinRegion.y + viewportOffset.y };
        m_ViewportBounds[1] = { viewportMaxRegion.x + viewportOffset.x, viewportMaxRegion.y + viewportOffset.y };

        ImVec2 viewportPanelSize = ImGui::GetContentRegionAvail();

        m_Framebuffer.resize(glm::vec2(viewportPanelSize.x, viewportPanelSize.y));

        m_Framebuffer.bind();

        m_Framebuffer.clearAttachment(0, glm::vec4(.1, .1, .1, 1.0f));
        m_Framebuffer.clearAttachmentRed(1, -1);

        m_Framebuffer.drawBuffers();

        current_scene.Scene.render(m_Framebuffer.getSize(), renderer, current_scene.m_ViewportCamera);

        auto [mx, my] = ImGui::GetMousePos();
        mx -= m_ViewportBounds[0].x;
        my -= m_ViewportBounds[0].y;
        glm::vec2 viewportSize = m_ViewportBounds[1] - m_ViewportBounds[0];
        my = viewportSize.y - my;
        int mouseX = (int)mx;
        int mouseY = (int)my;

        if (mouseX >= 0 && mouseY >= 0 && mouseX < (int)viewportSize.x && mouseY < (int)viewportSize.y)
        {
            if (m_Window->Input.isMouseReleased(Event::MouseButton::LEFT) && ImGui::IsWindowFocused())
                current_scene.SelectedEntity = Entity((entt::entity)m_Framebuffer.readPixel(1, glm::ivec2(mouseX, mouseY)), &current_scene.Scene);
        }

        m_Framebuffer.unbind();
        
        ImGui::Image((ImTextureID)m_Framebuffer.getColorAttachmentTexture_ID(), ImVec2(m_Framebuffer.getSize().x, m_Framebuffer.getSize().y), ImVec2(0, 1), ImVec2(1, 0));  
        
        ImGui::End();
    }
}
