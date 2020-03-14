//
//  SecondVC.swift
//  ScrollView
//
//  Created by leslie on 3/13/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        scrollView.minimumZoomScale = 0.01
        scrollView.maximumZoomScale = 100.0
        
    }

}

extension SecondVC: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return contentView
    }
    
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        print("scrollViewWillBeginZooming")
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        print("scrollViewDidZoom")
    }
    
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        print("scrollViewDidEndZooming")
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("scrollViewDidScroll")
    }
    
    
}
