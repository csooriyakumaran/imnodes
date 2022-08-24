project "imnodes"
       kind "StaticLib"
       language "C++"
       staticruntime "off"

        targetdir ("bin/" .. outputdir .. "/%{prj.name}")
        objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

        includedirs
        {
            "imnode",
            "../imgui",
        }
        files
        {
            -- "../imgui/imconfig.h",
            -- "../imgui/imgui.h",
            -- "../imgui/imgui.cpp",
            -- "../imgui/imgui_draw.cpp",
            -- "../imgui/imgui_internal.h",
            -- "../imgui/imgui_widgets.cpp",
            -- "../imgui/imstb_rectpack.h",
            -- "../imgui/imstb_textedit.h",
            -- "../imgui/imstb_truetype.h",
            -- "../imgui/imgui_demo.cpp", 

            "imnodes.h",
            "imnodes.cpp",
            "imnodes_internal.h",

        }

        filter "system:windows"
            systemversion "latest"
            cppdialect "C++17"

        filter "system:linux"
            pic "On"
            systemversion "latest"
            cppdialect "C++17"

        filter "configurations:Debug"
            runtime "Debug"
            symbols "on"

        filter "configurations:Release"
            runtime "Release"
            optimize "on"

        filter "configurations:Dist"
            runtime "Release"
            optimize "on"
            symbols "off"