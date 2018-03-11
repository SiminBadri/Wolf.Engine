/*
	Project			 : Wolf Engine. Copyright(c) Pooya Eimandar (http://PooyaEimandar.com) . All rights reserved.
	Source			 : Please direct any bug to https://github.com/PooyaEimandar/Wolf.Engine/issues
	Website			 : http://WolfSource.io
	Name			 : scene.h
	Description		 : The main scene of Wolf Engine
	Comment          : Read more information about this sample on http://wolfsource.io/gpunotes/
*/

#if _MSC_VER > 1000
#pragma once
#endif

#ifndef __SCENE_H__
#define __SCENE_H__

#include <w_framework/w_game.h>
#include <w_graphics/w_command_buffers.h>
#include <w_graphics/w_render_pass.h>
#include <w_graphics/w_semaphore.h>
#include <w_graphics/w_pipeline.h>
#include <w_graphics/w_shader.h>
#include <w_graphics/w_imgui.h>

//++++++++++++++++++++++++++++++++++++++++++++++++++++
//The following codes have been added for this project
//++++++++++++++++++++++++++++++++++++++++++++++++++++
#include <w_graphics/w_mesh.h>
#include <w_graphics/w_uniform.h>
#include <w_graphics/w_shapes.h>
#include <w_bounding.h>
#include <glm/vec3.hpp>
//++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++++++++++++++++++

class scene : public wolf::framework::w_game
{
public:
	scene(_In_z_ const std::wstring& pContentPath, _In_z_ const std::wstring& pLogPath, _In_z_ const std::wstring& pAppName);
	virtual ~scene();

	/*
        Allows the game to perform any initialization and it needs to before starting to run.
        Calling Game::Initialize() will enumerate through any components and initialize them as well.
        The parameter pOutputWindowsInfo represents the information of output window(s) of this game.
	*/
	void initialize(_In_ std::map<int, w_window_info> pOutputWindowsInfo) override;

	//The function "Load()" will be called once per game and is the place to load all of your game assets.
	void load() override;

	//This is the place where allows the game to run logic such as updating the world, checking camera, collisions, physics, input, playing audio and etc.
	void update(_In_ const wolf::system::w_game_time& pGameTime) override;

	//This is called when the game should draw itself.
	W_RESULT render(_In_ const wolf::system::w_game_time& pGameTime) override;

	//This is called when the window game should resized. 
	void on_window_resized(_In_ const uint32_t& pGraphicsDeviceIndex, _In_ const w_point& pNewSizeOfWindow) override;

	//This is called when the we lost graphics device.
	void on_device_lost() override;

	//Release will be called once per game and is the place to unload assets and release all resources
	ULONG release() override;

private:
	W_RESULT _build_draw_command_buffers();
    bool	_update_gui();

	wolf::graphics::w_viewport                                      _viewport;
	wolf::graphics::w_viewport_scissor                              _viewport_scissor;


	wolf::graphics::w_command_buffers                               _draw_command_buffers;
	wolf::graphics::w_render_pass                                   _draw_render_pass;


	wolf::graphics::w_fences                                        _draw_fence;
	wolf::graphics::w_semaphore                                     _draw_semaphore;
    
	wolf::graphics::w_shader                                        _shader;
	wolf::graphics::w_pipeline                                      _pipeline;

	
	//++++++++++++++++++++++++++++++++++++++++++++++++++++
	//The following codes have been added for this project
	//++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	float															_distance_from_eye;
	wolf::graphics::w_mesh*											_mesh;
	wolf::system::w_bounding_box									_mesh_bounding_box;
	wolf::graphics::w_shapes*										_shape_bounding_box;
	glm::vec3														_position;
	struct u0
	{
		glm::mat4 wvp;
	};
	wolf::graphics::w_uniform<u0>                                   _u0;
	//++++++++++++++++++++++++++++++++++++++++++++++++++++
	//++++++++++++++++++++++++++++++++++++++++++++++++++++
};

#endif
