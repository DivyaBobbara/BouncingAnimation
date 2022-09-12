//
//  ViewController.swift
//  BouncingEffect
//
//  Created by Naga Divya Bobbara on 07/09/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var splashImg: UIImageView!
    let imageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
//        splashImg.isHidden = true
        imageView.frame = CGRect(x: 170, y: 0, width: 50, height: 50)
        imageView.image = UIImage(named:"ball")
        imageView.contentMode = .scaleAspectFill
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 3, animations: ({
            self.imageView.center.y = self.view.frame.height / 2

        }), completion: ({ _ in
            UIView.animate(withDuration: 1, delay: 0, animations: {
//                self.imageView.frame = CGRect(x: -200, y: -200, width: self.view.frame.width*2 , height: self.view.frame.height+self.view.frame.width)
//
                let size = self.view.frame.size.width * 3
                let difX = size - self.view.frame.width
                let difY = self.view.frame.height - size
                self.imageView.frame = CGRect(x: -(difX/2), y: difY/2, width: size, height: size)
                self.imageView.alpha = 0
                
                DispatchQueue.main.asyncAfter(deadline: .now()+0.6, execute: {
//                    self.splashImg.isHidden = false
                    self.splashImg.backgroundColor = .green
                    
                })
            })
            
            
//            DispatchQueue.main.asyncAfter(deadline: .now()+1) {
//                let vc = self.storyboard?.instantiateViewController(withIdentifier: "SplashScreenVC") as! SplashScreenVC
//                  self.navigationController?.pushViewController(vc, animated: true)
//
//            }
            
            
        }))
        view.addSubview(imageView)
        
    }
    
    @IBAction func action(_ sender: UIButton) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
     
    }
}

