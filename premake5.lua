project "GLFW"
    kind "StaticLib"
    language "C"
    cdialect "C99"
    location "%{wks.location}/GLFW"
    targetdir "%{wks.location}/GLFW/bin/%{cfg.buildcfg}/"

    objdir "%{wks.location}/GLFW/obj/%{cfg.buildcfg}/"

    files
    {
      "include/GLFW/glfw3.h",
      "include/GLFW/glfw3native.h",
      "src/glfw_config.h",
      "src/init.c",
      "src/context.c",
      "src/input.c",
      "src/vulkan.c",
      "src/monitor.c",
      "src/window.c",
      "src/platform.c",
      "src/null_monitor.c",
      "src/null_window.c",
      "src/null_init.c",
      "src/null_joystick.c"
    }

    filter "system:windows"
        defines { "_GLFW_WIN32" }
        links { "gdi32" }
        systemversion "latest"
        staticruntime "On"

        files
        {
          "src/win32_init.c",
          "src/win32_joystick.c",
          "src/win32_monitor.c",
          "src/win32_module.c",
          "src/win32_time.c",
          "src/win32_thread.c",
          "src/win32_window.c",
          "src/wgl_context.c",
          "src/egl_context.c",
          "src/osmesa_context.c"
        }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"
        runtime "Debug"
        
    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
        runtime "Release"
