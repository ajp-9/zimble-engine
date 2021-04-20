project "SDL2"
	kind "StaticLib"
	language "C"

	filter "system:windows"
		systemversion "latest"
	filter {}
	
	targetdir ("%{prj.location}/bin/%{cfg.buildcfg}")
    objdir ("%{prj.location}/intermediates/%{cfg.buildcfg}")

	filter "system:windows"
		links 
		{
			"setupapi",
			"winmm",
			"imm32",
			"version"
		}
		
		files 
		{
			"src/SDL.c",
			"src/SDL_assert.c",
			"src/SDL_dataqueue.c",
			"src/SDL_error.c",
			"src/SDL_hints.c",
			"src/SDL_log.c",
			"src/atomic/SDL_atomic.c",
			"src/atomic/SDL_spinlock.c",
			"src/audio/SDL_audio.c",
			"src/audio/SDL_audiocvt.c",
			"src/audio/SDL_audiodev.c",
			"src/audio/SDL_audiotypecvt.c",
			"src/audio/SDL_mixer.c",
			"src/audio/SDL_wave.c",
			"src/cpuinfo/SDL_cpuinfo.c",
			"src/dynapi/SDL_dynapi.c",
			"src/events/SDL_clipboardevents.c",
			"src/events/SDL_displayevents.c",
			"src/events/SDL_dropevents.c",
			"src/events/SDL_events.c",
			"src/events/SDL_gesture.c",
			"src/events/SDL_keyboard.c",
			"src/events/SDL_mouse.c",
			"src/events/SDL_quit.c",
			"src/events/SDL_touch.c",
			"src/events/SDL_windowevents.c",
			"src/file/SDL_rwops.c",
			"src/haptic/SDL_haptic.c",
			"src/libm/e_atan2.c",
			"src/libm/e_exp.c",
			"src/libm/e_fmod.c",
			"src/libm/e_log.c",
			"src/libm/e_log10.c",
			"src/libm/e_pow.c",
			"src/libm/e_rem_pio2.c",
			"src/libm/e_sqrt.c",
			"src/libm/k_cos.c",
			"src/libm/k_rem_pio2.c",
			"src/libm/k_sin.c",
			"src/libm/k_tan.c",
			"src/libm/s_atan.c",
			"src/libm/s_copysign.c",
			"src/libm/s_cos.c",
			"src/libm/s_fabs.c",
			"src/libm/s_floor.c",
			"src/libm/s_scalbn.c",
			"src/libm/s_sin.c",
			"src/libm/s_tan.c",
			"src/locale/SDL_locale.c",
			"src/misc/SDL_url.c",
			"src/power/SDL_power.c",
			"src/render/SDL_d3dmath.c",
			"src/render/SDL_render.c",
			"src/render/SDL_yuv_sw.c",
			"src/render/direct3d/SDL_render_d3d.c",
			"src/render/direct3d/SDL_shaders_d3d.c",
			"src/render/direct3d11/SDL_render_d3d11.c",
			"src/render/direct3d11/SDL_shaders_d3d11.c",
			"src/render/opengl/SDL_render_gl.c",
			"src/render/opengl/SDL_shaders_gl.c",
			"src/render/opengles/SDL_render_gles.c",
			"src/render/opengles2/SDL_render_gles2.c",
			"src/render/opengles2/SDL_shaders_gles2.c",
			"src/render/psp/SDL_render_psp.c",
			"src/render/software/SDL_blendfillrect.c",
			"src/render/software/SDL_blendline.c",
			"src/render/software/SDL_blendpoint.c",
			"src/render/software/SDL_drawline.c",
			"src/render/software/SDL_drawpoint.c",
			"src/render/software/SDL_render_sw.c",
			"src/render/software/SDL_rotate.c",
			"src/sensor/SDL_sensor.c",
			"src/stdlib/SDL_crc32.c",
			"src/stdlib/SDL_getenv.c",
			"src/stdlib/SDL_iconv.c",
			"src/stdlib/SDL_malloc.c",
			"src/stdlib/SDL_qsort.c",
			"src/stdlib/SDL_stdlib.c",
			"src/stdlib/SDL_string.c",
			"src/stdlib/SDL_strtokr.c",
			"src/thread/SDL_thread.c",
			"src/timer/SDL_timer.c",
			"src/video/SDL_RLEaccel.c",
			"src/video/SDL_blit.c",
			"src/video/SDL_blit_0.c",
			"src/video/SDL_blit_1.c",
			"src/video/SDL_blit_A.c",
			"src/video/SDL_blit_N.c",
			"src/video/SDL_blit_auto.c",
			"src/video/SDL_blit_copy.c",
			"src/video/SDL_blit_slow.c",
			"src/video/SDL_bmp.c",
			"src/video/SDL_clipboard.c",
			"src/video/SDL_egl.c",
			"src/video/SDL_fillrect.c",
			"src/video/SDL_pixels.c",
			"src/video/SDL_rect.c",
			"src/video/SDL_shape.c",
			"src/video/SDL_stretch.c",
			"src/video/SDL_surface.c",
			"src/video/SDL_video.c",
			"src/video/SDL_vulkan_utils.c",
			"src/video/SDL_yuv.c",
			"src/video/yuv2rgb/yuv_rgb.c",
			"src/joystick/SDL_gamecontroller.c",
			"src/joystick/SDL_joystick.c",
			"src/audio/dummy/SDL_dummyaudio.c",
			"src/audio/disk/SDL_diskaudio.c",
			"src/joystick/virtual/SDL_virtualjoystick.c",
			"src/video/dummy/SDL_nullevents.c",
			"src/video/dummy/SDL_nullframebuffer.c",
			"src/video/dummy/SDL_nullvideo.c",
			"src/core/windows/SDL_hid.c",
			"src/core/windows/SDL_windows.c",
			"src/core/windows/SDL_xinput.c",
			"src/misc/windows/SDL_sysurl.c",
			"src/audio/winmm/SDL_winmm.c",
			"src/audio/directsound/SDL_directsound.c",
			"src/audio/wasapi/SDL_wasapi.c",
			"src/audio/wasapi/SDL_wasapi_win32.c",
			"src/video/windows/SDL_windowsclipboard.c",
			"src/video/windows/SDL_windowsevents.c",
			"src/video/windows/SDL_windowsframebuffer.c",
			"src/video/windows/SDL_windowskeyboard.c",
			"src/video/windows/SDL_windowsmessagebox.c",
			"src/video/windows/SDL_windowsmodes.c",
			"src/video/windows/SDL_windowsmouse.c",
			"src/video/windows/SDL_windowsopengl.c",
			"src/video/windows/SDL_windowsopengles.c",
			"src/video/windows/SDL_windowsshape.c",
			"src/video/windows/SDL_windowsvideo.c",
			"src/video/windows/SDL_windowsvulkan.c",
			"src/video/windows/SDL_windowswindow.c",
			"src/thread/windows/SDL_sysmutex.c",
			"src/thread/windows/SDL_syssem.c",
			"src/thread/windows/SDL_systhread.c",
			"src/thread/windows/SDL_systls.c",
			"src/thread/generic/SDL_syscond.c",
			"src/sensor/windows/SDL_windowssensor.c",
			"src/power/windows/SDL_syspower.c",
			"src/locale/windows/SDL_syslocale.c",
			"src/filesystem/windows/SDL_sysfilesystem.c",
			"src/timer/windows/SDL_systimer.c",
			"src/loadso/windows/SDL_sysloadso.c",
			"src/joystick/hidapi/SDL_hidapi_gamecube.c",
			"src/joystick/hidapi/SDL_hidapi_ps4.c",
			"src/joystick/hidapi/SDL_hidapi_ps5.c",
			"src/joystick/hidapi/SDL_hidapi_rumble.c",
			"src/joystick/hidapi/SDL_hidapi_steam.c",
			"src/joystick/hidapi/SDL_hidapi_switch.c",
			"src/joystick/hidapi/SDL_hidapi_xbox360.c",
			"src/joystick/hidapi/SDL_hidapi_xbox360w.c",
			"src/joystick/hidapi/SDL_hidapi_xboxone.c",
			"src/joystick/hidapi/SDL_hidapijoystick.c",
			"src/hidapi/windows/hid.c",
			"src/joystick/windows/SDL_dinputjoystick.c",
			"src/joystick/windows/SDL_mmjoystick.c",
			"src/joystick/windows/SDL_rawinputjoystick.c",
			"src/joystick/windows/SDL_windows_gaming_input.c",
			"src/joystick/windows/SDL_windowsjoystick.c",
			"src/joystick/windows/SDL_xinputjoystick.c",
			"src/haptic/windows/SDL_dinputhaptic.c",
			"src/haptic/windows/SDL_windowshaptic.c",
			"src/haptic/windows/SDL_xinputhaptic.c"
		}
	filter {}

	includedirs
	{
		"include"
	}

	filter "system:windows"
		defines
		{
			"_WINDOWS"
		}
	filter {}

    filter "configurations:Debug"
        runtime "Debug"
		symbols "on"
    filter {}

    filter "configurations:Release"
        runtime "Release"
        optimize "Speed"
        inlining "Auto"
    filter {}
