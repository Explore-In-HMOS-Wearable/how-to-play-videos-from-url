import VideoP from '../view/Video';

@Component
export struct Player {
  watchSize: string = '466px'
  @State videoSrcNet: string = ''
  @State showVideo: boolean = false
  @Consume('pathStack') pathStack: NavPathStack;

  build() {
    NavDestination(){
    Flex() {
      Column() {
        if (!this.showVideo) {
          TextInput({ placeholder: 'Please write your URL to watch' })
            .onChange((newUrl) => {
              this.videoSrcNet = newUrl
            }).margin({ top: 80, bottom: 10 })

          Button('Play Video')
            .backgroundColor('#8FA31E')
            .onClick(() => {
              this.showVideo = true
            })

        } else {
          VideoP({
            videoSrc: this.videoSrcNet
          })
        }

      }
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Center)
    }
    .width(this.watchSize)
    .height(this.watchSize)
    .backgroundColor('#556B2F')
  }
    .hideTitleBar(true)
    .hideBackButton(true)
  }
}


