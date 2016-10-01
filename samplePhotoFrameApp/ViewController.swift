//
//  ViewController.swift
//  samplePhotoFrameApp
//
//  Created by Wataru Maeda on 10/1/16.
//  Copyright © 2016 wataru maeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet var myScrollView: UIScrollView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.layoutPhotos()
    }
    
    func layoutPhotos()
    {
        
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
        
        // スクロールサイズ調整 (写真3枚スクロールするので、写真幅 x 3)
        myScrollView!.contentSize.width = width * 3
        
        // ページングする
        myScrollView!.pagingEnabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

