//
//  ViewController.swift
//  TextAroundImages
//
//  Created by shan on 2018/7/31.
//  Copyright © 2018年 shan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let imageView = UIImageView(image: UIImage(named: "steve"))
        imageView.frame = CGRect(x: 100, y: 40, width: 100, height: 100)
        
        let textView = UITextView(frame: self.view.frame)
        textView.text = "创建套接字之后，应用程序（浏览器）就会调用 connect，随后协议栈会将本地的套接字与服务器的套接字进行连接。话说，以太网的网线都是一直连接的状态，我们并不需要来回插拔网线，那么这里的“连接”到底是什么意思呢？连接实际上是通信双方交换控制信息，在套接字中记录这些必要信息并准备数据收发的一连串操作，在讲解具体的过程之前，我们先来说一说“连接”到底代表什么意思。网线是一直连接着的，随时都有信号从中流过，如果通信过程只是将数据转换为电信号，那么这一操作随时都可以进行。不过，在这个时间点，也就是套接字刚刚创建完成时，当应用程序委托发送数据的时候，协议栈会如何操作呢？套接字刚刚创建完成的时候，里面并没有存放任何数据，也不知道通信的对象是谁。在这个状态下，即便应用程序要求发送数据，协议栈也不知道数据应该发送给谁。浏览器可以根据网址来查询服务器的 IP 地址，而且根据规则也知道应该使用 80 号端口，但只有浏览器知“道这些必要的信息是不够的，因为在调用 socket 创建套接字时，这些信息并没有传递给协议栈。因此，我们需要把服务器的 IP 地址和端口号等信息告知协议栈，这是连接操作的目的之一。"
        let imagePath = UIBezierPath(rect: imageView.frame)
        textView.textContainer.exclusionPaths = [imagePath]
        
        self.view.addSubview(textView)
        self.view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

