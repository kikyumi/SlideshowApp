//
//  ImageViewController.swift
//  SlideshowApp
//
//  Created by 菊川 由美 on 2021/11/10.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var bigImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bigImage.image = UIImage(named: "image01")
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
