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
    @IBOutlet weak var logoView2: UIImageView!
    
    let imgView1 = UIImageView(image: UIImage(named: "doll"))
    let imgView2 = UIImageView(image: UIImage(named: "doll"))
    
    // Only can init the property at the first level in the file.
    // Can set value of the property at the first level in the file.
    // Only can set value of the property in the function close.
    let logoView1 = UIImageView(frame: CGRect(x: 25, y: 25, width: 25, height: 25))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainScroll.delegate = self
        mainScroll.minimumZoomScale = 0.01
        mainScroll.maximumZoomScale = 100.0
        
        secondScroll.delegate = self
        secondScroll.minimumZoomScale = 0.01
        secondScroll.maximumZoomScale = 100.0
        
        addImgViewToMainScroll()
        addLogoViewToMainScrollWithCGRect()
        
        addImgViewToSecScroll()
        addLogoViewToSecScrollWithConstriants()
    }
    
    //MARK: - Implement Main Scroll View
    func addImgViewToMainScroll() {
        
        let imgWidth = imgView1.frame.size.width
        let imgHeight = imgView1.frame.size.height
                
        mainScroll.contentSize = CGSize(width: imgWidth, height: imgHeight)
        mainScroll.addSubview(imgView1)
        
    }
    
    func addLogoViewToMainScrollWithCGRect() {
        // 'CGRect' located a place on the super view
        // which can move with the super view
        logoView1.image = UIImage(named: "logo")
        
        mainScroll.addSubview(logoView1)
        
    }
    
    //MARK: - Implement Second Scroll View
    func addImgViewToSecScroll() {
        
        let imgWidth = imgView2.frame.size.width
        let imgHeight = imgView2.frame.size.height

        secondScroll.contentSize = CGSize(width: imgWidth, height: imgHeight)
        secondScroll.addSubview(imgView2)
    }
    
    func addLogoViewToSecScrollWithConstriants() {
        
//        logoView2.image = UIImage(named: "logo")
        
        secondScroll.addSubview(logoView2)
        
        // do not auto resizeing the view via auto layout constraints.
//        logoView2.translatesAutoresizingMaskIntoConstraints = false
        
        // 'Anchor' means the fixed location on the super view
        // which can't move in the super view
        // put the view's anchor on the scroll view's layout, so it can't be moved
//        logoView2.topAnchor.constraint(equalTo: secondScroll.frameLayoutGuide.topAnchor, constant: 25).isActive = true
//        logoView2.leadingAnchor.constraint(equalTo: secondScroll.frameLayoutGuide.leadingAnchor, constant: 25).isActive = true
        
    }
}

extension ViewController: UIScrollViewDelegate {
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imgView2
    }
    
}
