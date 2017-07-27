//
//  ViewController.swift
//  Simple Web View
//
//  Created by Wayne Bennett on 1/2/17.
//  Copyright © 2017 Wayne Bennett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    let url = "https://ozswapntrade.com.au"
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var loading: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let requestURL = NSURL(string:url)
        let request = NSURLRequest(url: requestURL! as URL)
        webView.loadRequest(request as URLRequest)
        var images: [UIImage] = []
        for i in 1...2 {
            images.append(UIImage(named: ("\"i\"")!);
        }
        loading.animationImages = images;
        loading.animationDuration = 1.0
        loading.startAnimating()
        webView.delegate = self;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        webView.frame = self.view.frame;
    }
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        webView.frame = self.view.frame;
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        webView.isHidden = false;
        loading.isHidden = true;
    }
    
    
    
}
