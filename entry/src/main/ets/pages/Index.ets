import TimeZone from '../components/TimeZone';
import { TabPage } from './TabPage';

@Entry
@Component
struct Index {
  currentIndex: number = 1
  @Provide('NavPathStack') pageStack: NavPathStack = new NavPathStack()

  @Builder tabBuilder(title: string, targetIndex: number) {
    Column() {}.backgroundColor(this.currentIndex === targetIndex ? '#1698CE' : '#6B6B6B')

  }

  @Builder
  PagesMap(name: string) {
    if (name === 'TabPage') {
      TabPage()
    }
  }

  build() {
    Navigation(this.pageStack){
      RelativeContainer() {
        TimeZone()
        Column(){
          Image($r('app.media.icon'))
            .width(40)
            .height(40)
          Text($r('app.string.journey'))
            .fontSize(12)
            .fontWeight(FontWeight.Bold)
        }
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.pageStack.pushPathByName('TabPage', null);
        })
      }
      .width('100%')
      .backgroundColor(Color.Black)
    }
    .mode(NavigationMode.Stack)
    .hideTitleBar(true)
    .navDestination(this.PagesMap)
    .hideBackButton(true)
    .ignoreLayoutSafeArea()
    .width('100%')
    .height('100%')
  }
}