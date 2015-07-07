//
//  ScrollView-Smaple.swift
//  GyroArray
//
//  Created by 崔漢鐘 on 2015/07/03.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import Foundation
import UIKit

let img1 = UIImage(named:"img1.jpg");
let img2 = UIImage(named:"img2.jpg");
let img3 = UIImage(named:"img3.jpg");

//UIImageViewにUIIimageを追加
let imageView1 = UIImageView(image:img1)
let imageView2 = UIImageView(image:img2)
let imageView3 = UIImageView(image:img3)

//UIScrollViewを作成します
let scrView = UIScrollView()

//UIScrollViewの1ページ分のサイズ + 表示位置
scrView.frame = CGRectMake(0, 0, 240, 240)

//全体のサイズ
scrView.contentSize = CGSizeMake(240, 240*3)

//UIImageViewのサイズと位置を決めます
imageView1.frame = CGRectMake(0, 0, 240, 240)
imageView2.frame = CGRectMake(240, 0, 240, 240)
imageView3.frame = CGRectMake(480, 0, 240, 240)

//viewに追加します
self.view.addSubview(scrView)

//UIImageViewをScrollViewに追加します
scrView.addSubview(imageView1)
scrView.addSubview(imageView2)
scrView.addSubview(imageView3)

// １ページ単位でスクロールさせる
scrView.pagingEnabled = true



