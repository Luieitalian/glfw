project "GLFW"
     kind "StaticLib"
     language "C"
     targetdir ("GLFW/bin/%{cfg.buildcfg}/")
     systemversion "latest"
     staticruntime "On"

     files
	   {
  		 ("%{wks.location}Engine/vendor/GLFW/glfw3.h"),
	  	 ("%{wks.location}Engine/vendor/GLFW/glfw3native.h")
     }

     filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"
  
     filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
