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
        
        let photoNames = ["photo-1.jpg",
                          "photo-2.jpg",
                          "photo-3.jpg"]
        
        photoNames.forEach {
            let photoName = $0
            let myImageView = UIImageView()
            myImageView.frame = CGRectMake(x, y, width, height)
            myImageView.image = UIImage(named: photoName)
            myImageView.contentMode = .ScaleAspectFill
            myImageView.clipsToBounds = true
            myScrollView!.addSubview(myImageView)
            x += width
        }
        
        // スクロールサイズ調整 (写真3枚スクロールするので、写真幅 x 3)
        myScrollView!.contentSize.width = width * CGFloat(photoNames.count)
        
        // ページングする
        myScrollView!.pagingEnabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

