void init_world(int argc, const char** argv)
{
	int options = CUTE_APP_OPTIONS_WINDOW_POS_CENTERED;
#ifdef CUTE_WINDOWS
	options |= CUTE_APP_OPTIONS_D3D11_CONTEXT;
#elif defined(CUTE_EMSCRIPTEN)
	options |= CUTE_APP_OPTIONS_OPENGLES_CONTEXT;
#else
	options |= CUTE_APP_OPTIONS_OPENGL_CONTEXT;
#endif
	app = app_make("Block Man", 0, 0, 960, 720, options, argv[0]);
	app_init_upscaling(app, UPSCALE_PIXEL_PERFECT_AT_LEAST_2X, 320, 240);
	ImGui::SetCurrentContext(app_init_imgui(app));
	setup_write_directory();


	cache = aseprite_cache_make(app);
	batch = batch_make(aseprite_cache_get_pixels_fn(cache), cache);
	batch_set_projection(batch, matrix_ortho_2d(320, 240, 0, 0));


	ecs_registration(app);
	ice_block_system_init();
	shadow_system_init();
	light_system_init();
	load_all_levels_from_disk_into_ram();
}


sprite_t load_sprite(string_t path)
{
	sprite_t s;
	cute::error_t err = aseprite_cache_load(cache, path.c_str(), &s);
	char buf[1024];
	if (err.is_error()) {
		sprintf(buf, "Unable to load sprite at path \"%s\".\n", path.c_str());
		window_message_box(app, WINDOW_MESSAGE_BOX_TYPE_ERROR, "ERROR", buf);
	}
	if (is_odd(s.w)) {
		sprintf(buf, "Sprite \"%s\" has an odd width of %d (should be even).\n", path.c_str(), s.w);
		window_message_box(app, WINDOW_MESSAGE_BOX_TYPE_ERROR, "ERROR", buf);
	}
	if (is_odd(s.h)) {
		sprintf(buf, "Sprite \"%s\" has an odd height of %d (should be even).\n", path.c_str(), s.h);
		window_message_box(app, WINDOW_MESSAGE_BOX_TYPE_ERROR, "ERROR", buf);
	}
	return s;
}