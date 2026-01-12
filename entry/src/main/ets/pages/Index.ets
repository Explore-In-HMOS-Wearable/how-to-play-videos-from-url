import { ArcList, ArcListItem, ComponentContent } from '@kit.ArkUI'
import { Player } from './NetworkVideo'


@Builder
function header() {
    Text('Video Options')
      .fontSize(24)
      .fontWeight(FontWeight.Bold)
      .textAlign(TextAlign.Center)
      .margin({ top: 16, bottom: 12 })
      .fontColor('#8FA31E')
}

@Entry
@Component
struct VideoPlayer {
  watchSize: string = '466px'
  context: UIContext = this.getUIContext()
  header: ComponentContent<object> = new ComponentContent(this.context, wrapBuilder(header))
  private uiContext: UIContext = this.getUIContext()
  @Provide('pathStack') pathStack: NavPathStack = new NavPathStack()

  @Builder
  PageMap(name: string) {
    if (name === 'NetworkVideo') {
      Player()
    }
  }

  build() {
    Navigation(this.pathStack){
    Flex() {
          ArcList({ header: this.header }) {
            ArcListItem() {
              Row({ space: 10 }) {
                Image($r('app.media.url'))
                  .fillColor('#3A6F43')
                  .width(32)
                  .height(32)
                  .objectFit(ImageFit.Contain)
                  .margin({ right: 10 })
                Text('Network Video').fontColor('#3A6F43')
              }
              .alignItems(VerticalAlign.Center)
              .backgroundColor('#8FA31E')
              .borderRadius(30)
              .margin({
                top: 6,
                bottom: 6,
                left: 12,
                right: 12
              })
              .padding({
                top: 10,
                bottom: 10,
                left: 16,
                right: 16
              })
              .onClick(() => {
                this.pathStack.pushPathByName('NetworkVideo', null)
              });
            }

          }
      
    }.width(this.watchSize)
    .height(this.watchSize)
    .backgroundColor('#556B2F')
  }
    .hideTitleBar(true)
    .hideBackButton(true)
    .navDestination(this.PageMap)
    .mode(NavigationMode.Stack)
}
}

