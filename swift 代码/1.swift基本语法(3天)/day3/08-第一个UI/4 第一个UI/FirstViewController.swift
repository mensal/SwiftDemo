//
//  FirstViewController.swift
//  4 第一个UI
//
//  Created by qingyun on 16/4/25.
//  Copyright © 2016年 hnqingyun. All rights reserved.
//

import UIKit
//定义标签视图的tag
let Lbl_Tag=1001
class FirstViewController: UIViewController {
    var count:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //设置背景颜色
        self.view.backgroundColor=UIColor.whiteColor()
//        self.view.backgroundColor=UIColor.blueColor()
        //标签视图UILabel
        //定义视图控件坐标原点和尺寸
        let rect=CGRect(x:100,y:100,width:100,height:50)
        //生成一个UILabel对象
        let lBl=UILabel(frame:rect)
        lBl.text="青云教育"
        lBl.backgroundColor=UIColor.orangeColor()
        lBl.textColor=UIColor.whiteColor()
        lBl.tag=Lbl_Tag //tag 的值在整个视图控制器中 是唯一的值，否则的话，会出现莫名其妙的错误，很不容易发现
        //设置文本的对其方式
        lBl.textAlignment=NSTextAlignment.Center
        //将UILabel对象 绑定到视图控制器的属性视图
        self.view .addSubview(lBl)
        
        //创建UIButton按钮对象
        let myBtn=UIButton(frame:CGRect(x:100,y:200,width: 100,height: 50))
        //给按钮设置文字
        myBtn.setTitle("按钮", forState: UIControlState.Normal)
        myBtn.setTitleColor(UIColor.blueColor(), forState: .Normal)
        //设置按钮的点击事件
        //.TouchUpInside=UIControlEvents.TouchUpInside swift根据枚举值自动推断出它对应的枚举名是什么
//        myBtn.addTarget(self, action: #selector(clickMe(_:)), forControlEvents: .TouchUpInside)
          myBtn.addTarget(self, action: "clickMe:", forControlEvents: .TouchUpInside)
        //设置按钮的类型
        //myBtn.buttonType=.System
        self.view.addSubview(myBtn)
        count=0
        
    }
    //定义一个按钮的点击事件方法
    func clickMe(sender:UIButton){
        print("点击我")
        count+=1
        
        //获取UILabel
        //as! 将类型进行强制转换
        let lbl=self.view.viewWithTag(Lbl_Tag) as! UILabel
        lbl.text=String(count)
        
        //UIImageView,UISwitch,UISegmentControl,UIScrollView等常用的控件
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
