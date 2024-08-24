module Onebox
  module Engine
    class M3U8VideoOnebox < Onebox::Engine
      include Onebox::Engine

      # 只匹配 .m3u8 链接
      matches_regexp(%r{^(https?:)?//.*\.(m3u8)(\?.*)?$}i)

      def to_html
        random_id = "video_#{Time.now.to_i}_#{rand(100000000)}"
        <<-HTML
          <div class="onebox video-onebox videoWrap">
            <video id='#{random_id}' class="video-js vjs-default-skin vjs-16-9" controls preload="auto" width="100%" data-setup='{"fluid": true}'>
              <source src="#{url}" type="application/x-mpegURL">
            </video>
          </div>
        HTML
      end
    end
  end
end
