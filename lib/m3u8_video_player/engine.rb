# lib/m3u8_video_player/engine.rb

module M3u8VideoPlayer
  class Engine < ::Rails::Engine
    engine_name 'm3u8_video_player'
    
    isolate_namespace M3u8VideoPlayer

    # This is needed if you want to include engine's routes into the main application's routes.
    initializer "m3u8_video_player.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end

    # Include engine's assets (if any) into the main application's asset pipeline.
    initializer "m3u8_video_player.assets.precompile" do |app|
      app.config.assets.precompile += %w( m3u8_video_player/application.js m3u8_video_player/application.css )
    end

    # You can add your engine's configuration here.
    # For example, you might want to configure some settings or hooks.
    # You can also load your engine's initializers or dependencies here.
  end
end
