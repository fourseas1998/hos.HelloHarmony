import router from '@ohos.router';

@Entry
@Component
struct IndexPage {
  @State message: string = 'Hello Harmony'
  @State routerMsg: string = '跳转到第二页'
  @State routerParamsSrc: string = '第一页传入的参数值123'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .backgroundColor(Color.White)
        Blank()
        Button(this.routerMsg)
          .onClick(() => {
            router.push({
              url: '/pages/SecondPage',
              params: {
                src: this.routerParamsSrc
              }
            },router.RouterMode.Standard)
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}