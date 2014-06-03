//
//  myViewController.swift
//  PrimoSwift
//
//  Created by fabrizio on 03/06/14.
//  Copyright (c) 2014 Fabrizio Radica. All rights reserved.
//

import Foundation
import UIKit

class myViewController: UIViewController {


    @IBOutlet var detailImageView : UIImageView
    @IBOutlet var myButton : UIButton
    
//    myButton = UIButton(frame: CGRect(x: 10, y: 310, width: 120, height: 50))
    let color = UIColor(red: 0.5, green: 0.0, blue: 0.5, alpha: 1.0)
    let selectedColor = UIColor.yellowColor()
    var mioUrl = "http://blog-it.hostelbookers.com/wp-content/uploads/2012/08/pizza-patriottica.png"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    //Image
        var imgURL = NSURL(string: mioUrl)
        var imgData = NSData(contentsOfURL: imgURL)
        detailImageView.image = UIImage(data: imgData)
        
    //Button
        let myControlEvt: UIControlEvents = UIControlEvents.TouchUpInside
        myButton.addTarget(self, action:Selector.convertFromStringLiteral("tappedButton:"), forControlEvents: myControlEvt)
        myButton.setTitle("I'm a button", forState: UIControlState.Normal)
        myButton.backgroundColor = color
        myButton.setTitleColor(selectedColor, forState: UIControlState.Highlighted)

    //text
        /*
        let textScroll = UITextView(frame: CGRect(x: 10, y: 80, width: 180, height: 150))
        textScroll.text="Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
        textScroll.backgroundColor=UIColor(white: 0.0, alpha: 0.5)
        textScroll.textColor=UIColor(white: 1.0, alpha: 1.0)
        self.view.addSubview(textScroll)
*/
    }
    
    func tappedButton(sender: UIButton!) {
        performSegueWithIdentifier("buttonPressedView", sender: self.view)
        println("Tasto Premuto")
    }
}