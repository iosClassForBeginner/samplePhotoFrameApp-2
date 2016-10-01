  
  
# 第9回: １時間でiPhoneアプリを作ろう (2016/10/09)

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/samplePhotoFrameApp/blob/master/Assets/sample.gif" /></div>
  
  当アカウントへ訪れていただき、誠にありがとうございます。第9回アプリ教室では、フォトフレームアプリを作ります。自分のペースで勉強したい、勉強前に予習したい、内容を復習したい場合、ご利用ください。
  
## アプリ教室に興味ある方、歓迎します。  
  Meetup  
  http://www.meetup.com/ios-dev-in-namba/events/232838288/  
  
## 別途アプリ教室(有料)も開いております  
  http://learning-ios-dev.esy.es/  

## 問い合わせ
  株式会社ジーライブ
  http://geelive-inc.com  

## アプリ作成手順
#### 0, 準備
> 0-1. 表示する写真、アイコンの準備
・写真
  https://pixabay.com/
・アイコン
  http://flat-icon-design.com/

#### 1, Storyboardで、アプリのデザイン
> 1-1. main.storyboardを選択し、UI部品からscrollViewを配置します。(ドラッグ&ドロップ)
<div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/samplePhotoFrameApp/tree/master/Assets/6.jpg" /></div>

> 1-2. StoryboardからViewcontroller.swiftにscrollViewを紐付けます。
- scrollViewの紐付け方(control押しながらドラッグ)
<div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/samplePhotoFrameApp/blob/master/Assets/7.gif" /></div>

#### 2, ViewController.swiftにコード記述
- 以下コードブロックを記入
  
- 写真表示

```Swift
        // 写真の(x,y,幅,高さ)を取得
        var x = 0 as CGFloat
        let y = 0 as CGFloat
        let width = myScrollView.frame.size.width
        let height = myScrollView.frame.size.height
        
        // １枚目の写真
        let myImageView1 = UIImageView()
        myImageView1.frame = CGRectMake(x, y, width, height)
        myImageView1.image = UIImage(named: "photo-1.jpg")
        myImageView1.contentMode = .ScaleAspectFill
        myImageView1.clipsToBounds = true
        myScrollView!.addSubview(myImageView1)
        
        // 2枚目の写真
        x += width
        let myImageView2 = UIImageView()
        myImageView2.frame = CGRectMake(x, y, width, height)
        myImageView2.image = UIImage(named: "photo-2.jpg")
        myImageView2.contentMode = .ScaleAspectFill
        myImageView2.clipsToBounds = true
        myScrollView!.addSubview(myImageView2)
        
        // 3枚目の写真
        x += width
        let myImageView3 = UIImageView()
        myImageView3.frame = CGRectMake(x, y, width, height)
        myImageView3.image = UIImage(named: "photo-3.jpg")
        myImageView3.contentMode = .ScaleAspectFill
        myImageView3.clipsToBounds = true
        myScrollView!.addSubview(myImageView3)
```
- スクロールサイズ、ページングの指定

```Swift
        // スクロールサイズ調整 (写真3枚スクロールするので、写真幅 x 3)
        myScrollView!.contentSize.width = width * 3
        
        // ページングする
        myScrollView!.pagingEnabled = true
```


