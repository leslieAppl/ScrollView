//
//  ThirdVC.swift
//  ScrollView
//
//  Created by leslie on 3/14/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    var imgView: UIImageView!
    
    var scrollWidth: CGFloat!
    var scrollHeight: CGFloat!
    
    var minScale: CGFloat!
    var maxScale: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Don't forget the scroll view's delegate
        // Otherwise you can't zoom the scroll view
        scrollView.delegate = self
        
        scrollView.minimumZoomScale = 0.1
        scrollView.maximumZoomScale = 1.0

        scrollView.zoomScale = 0.1

//        customImageZoom()
        
    }
    
    // let the user zoom out until the whole image is visible.
    func customImageZoom() {
        
        view.setNeedsLayout()
        view.layoutIfNeeded()
        
        imgView = UIImageView(image: UIImage(named: "doll"))
        
//        let imageWidth = imgView.frame.size.width
//        let imageHeight = imgView.frame.size.height
        
        let imageWidth = imageView.frame.size.width
        let imageHeight = imageView.frame.size.height
            
        scrollWidth = scrollView.frame.size.width
        scrollHeight = scrollView.frame.size.height
        
        minScale = min(scrollWidth / imageWidth, scrollHeight / imageHeight)
        maxScale = max(minScale * 4.0, 1)
        
        scrollView.minimumZoomScale = 1
        scrollView.maximumZoomScale = 4
        
        scrollView.contentSize = CGSize(width: imageWidth, height: imageHeight)
        scrollView.addSubview(imgView)
        
        // present the imageView at the minScale from the beginning
//        scrollView.zoomScale = minScale
    }
}

extension ThirdVC: UIScrollViewDelegate {
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        
        print("scrollWidth \(scrollWidth)")
        print("scrollHeight \(scrollHeight)")
        
        print("minScale \(minScale)")
        print("maxScale \(maxScale)")
    }
}
