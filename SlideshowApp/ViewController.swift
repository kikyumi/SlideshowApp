//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 菊川 由美 on 2021/11/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var onOffButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    var myTimer: Timer!
    
    var imageArray = [
        UIImage(named: "image01"),
        UIImage(named: "image02"),
        UIImage(named: "image03"),
        UIImage(named: "image04"),
    ]
    
    var imageIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        onOffButton.setTitle("再生/停止", for: .normal)
        myImageView.image = UIImage(named: "image01")
        
    }
    
    @objc func changeImage() {
        imageIndex += 1
        if imageIndex == imageArray.count {
            imageIndex = 0
        }
        myImageView.image = imageArray [imageIndex]
    }
    
    @IBAction func nextClick(_ sender: Any) {
        changeImage()
    }

    
    @IBAction func backClick(_ sender: Any) {
        if imageIndex == 0 {
            imageIndex = imageArray.count
        }
        imageIndex -= 1
        myImageView.image = imageArray [imageIndex]
    }
    
    @IBAction func onOffClick(_ sender: Any) {
        //もしTimerのインスタンスがなければ、Timerを起動してonOffButtonを"停止"にし、進むと戻るを非表示にする
        if myTimer == nil {
            onOffButton.setTitle("停止", for: .normal)
            myTimer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            nextButton.isHidden = true
            backButton.isHidden = true
        }else {
            //もしTimerが動いていたら、TimerをstopしてonOffButtonを"再生"にし、進むと戻るを表示する
            onOffButton.setTitle("再生", for: .normal)
            myTimer.invalidate()
            nextButton.isHidden = false
            backButton.isHidden = false
            myTimer = nil
        }
    }
    
    
    


}

