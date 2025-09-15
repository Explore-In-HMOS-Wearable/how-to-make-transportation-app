import TimeZone from './TimeZone'

@Component
export default struct FirstTab{
  build() {
      RelativeContainer(){
        TimeZone()
        Column(){
          Text(this.getRemainTime())
            .fontWeight(FontWeight.Bold)
          Line()
            .height(1)
            .width('10%')
            .backgroundColor(Color.Gray)
            .margin({
              top: 8,
              bottom: 8
            })
          Text($r('app.string.driver_name'))
            .fontWeight(FontWeight.Bold)
          Text($r('app.string.car_info'))
            .fontColor(Color.Gray)
            .fontSize(12)
            .margin({
              top: 5
            })
          Text($r('app.string.car_detail'))
            .width('35%')
            .height('10%')
            .backgroundColor('#0C2D48')
        }
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
      }
      .width('100%')
      .height('100%')
      .backgroundColor(Color.Black)
    }

  getRemainTime(){
    let remainingTime = 5;
    return remainingTime.toString()+'mins'
  }
}