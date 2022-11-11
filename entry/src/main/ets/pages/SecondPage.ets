import router from '@ohos.router';

@Entry
@Component
struct SecondPage{
  @State routerDataSrc: string = router.getParams()?.['src'];
  @State secondMsg:string='第二页'
  @State routerMsg:string='返回Index页面'

  build(){
    Row(){
      Column(){
        Text(this.secondMsg)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .backgroundColor(Color.White)
        Blank()
        Text(this.routerDataSrc)
          .fontSize(30)
          .fontWeight(FontWeight.Bolder)
          .backgroundColor(Color.Pink)
        Blank()
        Button(this.routerMsg)
          .onClick(() => {
            router.back();
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}