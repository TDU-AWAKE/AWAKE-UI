//
//  ViewController4.swift
//  GyroArray
//
//  Created by 崔漢鐘 on 2015/07/04.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //現在時刻を取得.
        let myDate: NSDate = NSDate()
        
        //カレンダーを取得.
        let myCalendar: NSCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        
        //取得するコンポーネントを決める.
        let myComponetns = myCalendar.components(NSCalendarUnit.CalendarUnitYear   |
            NSCalendarUnit.CalendarUnitMonth  |
            NSCalendarUnit.CalendarUnitDay    |
            NSCalendarUnit.CalendarUnitHour   |
            NSCalendarUnit.CalendarUnitMinute |
            NSCalendarUnit.CalendarUnitSecond |
            NSCalendarUnit.CalendarUnitWeekday,
            fromDate: myDate)
        
        let weekdayStrings: Array = ["nil","日","月","火","水","木","金","土","日"]
        
        println("year: \(myComponetns.year)")
        println("month: \(myComponetns.month)")
        println("day: \(myComponetns.day)")
        println("hour: \(myComponetns.hour)")
        println("minute: \(myComponetns.minute)")
        println("second: \(myComponetns.second)")
        println("weekday: \(weekdayStrings[myComponetns.weekday])")
        
        //現在時間表示用のラベルを生成.
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,300,100))
        myLabel.font = UIFont(name: "HiraKakuInterface-W1", size:UIFont.labelFontSize())
        
        var myStr: String = "\(myComponetns.year)年"
        myStr += "\(myComponetns.month)月"
        myStr += "\(myComponetns.day)日["
        myStr += "\(weekdayStrings[myComponetns.weekday])]"
        myStr += "\(myComponetns.hour)時"
        myStr += "\(myComponetns.minute)分"
        myStr += "\(myComponetns.second)秒"
        
        myLabel.text = myStr
         myLabel.textAlignment = NSTextAlignment.Center
         //myLabel.backgroundColor = UIColor.orangeColor()
        myLabel.layer.cornerRadius = 10.0
        myLabel.layer.masksToBounds = true
         myLabel.textColor = UIColor.blueColor()
         myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        myLabel.frame = CGRect(x: 0, y: self.view.bounds.height/2, width: self.view.bounds.width, height: -300)
        myLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(myLabel)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

