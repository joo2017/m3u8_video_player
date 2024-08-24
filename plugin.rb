# name: m3u8_video_player
# about: A Discourse plugin to support m3u8 video playback using Video.js
# version: 0.1
# authors: Your Name
# url: https://github.com/yourgithubusername/m3u8_video_player

enabled_site_setting :m3u8_video_player_enabled

after_initialize do
  # 加载视频Onebox引擎
  require_dependency 'onebox'
  require_dependency 'onebox/engine'

  # 引入自定义的Onebox
  require_relative 'lib/m3u8_video_player/engine.rb'
end

# 注册前端的JavaScript和CSS
register_asset "javascripts/discourse/m3u8_video_player.js"
register_asset "stylesheets/discourse/m3u8_video_player.scss"
