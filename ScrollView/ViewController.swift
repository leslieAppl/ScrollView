//
//  ViewController.swift
//  ScrollView
//
//  Created by leslie on 3/13/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainScroll: UIScrollView!
    @IBOutlet weak var secondScroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addImgViewToMainScroll()
        addLogoViewToMainScrollWithCGRect()
        
        addImgViewToSecScroll()
        addLogoViewToSecScrollWithConstriants()
    }
    
    //MARK: - Implement Main Scroll View
    func addImgViewToMainScroll() {
        
        let imgView = UIImageView(image: UIImage(named: "doll"))
        let imgWidth = imgView.frame.size.width
        let imgHeight = imgView.frame.size.height
        
        mainScroll.contentSize = CGSize(width: imgWidth, height: imgHeight)
        mainScroll.addSubview(imgView)
    }
    
    func addLogoViewToMainScrollWithCGRect() {
        
        let logoView = UIImageView(frame: CGRect(x: 25, y: 25, width: 249, height: 249))
        logoView.image = UIImage(named: "logo")
        
        mainScroll.addSubview(logoView)
    }
    
    //MARK: - Implement Second Scroll View
    func addImgViewToSecScroll() {
        
        let imgView = UIImageView(image: UIImage(named: "doll"))
        let imgWidth = imgView.frame.size.width
        let imgHeight = imgView.frame.size.height
        
        secondScroll.contentSize = CGSize(width: imgWidth, height: imgHeight)
        secondScroll.addSubview(imgView)
    }
    
    func addLogoViewToSecScrollWithConstriants() {
        
        let logoView = UIImageView(image: UIImage(named: "logo"))
        
        // do not auto resizeing view via auto layout constraints.
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        secondScroll.addSubview(logoView)
        
        logoView.topAnchor.constraint(equalTo: secondScroll.frameLayoutGuide.topAnchor, constant: 25).isActive = true
        logoView.leadingAnchor.constraint(equalTo: secondScroll.frameLayoutGuide.leadingAnchor, constant: 25).isActive = true
        
        
    }
}

