import { on } from 'discourse-common/utils/decorators';

export default {
  name: 'm3u8-video-player',

  initialize() {
    on('dom:loaded', () => {
      const domList = document.querySelectorAll('.video-js');
      domList.forEach((videoElement) => {
        const player = videojs(videoElement);
        player.ready(() => {
          console.log("Player is ready!");
        });
      });
    });
  }
};
