project "imgui"
	kind "StaticLib"
	language "C++"

    targetdir ("build/bin/" .. outputDir .. "/%{prj.name}")
    objdir ("build/obj/" .. outputDir .. "/%{prj.name}")

	files
	{
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imconfig.h",
		"imgui.h",
		"imgui_internal.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_widgets.cpp",
		"imgui_tables.cpp",
		"imgui_demo.cpp"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
