//
//  ViewController.swift
//  ButtonAnimations
//
//  Created by Adhyam Nagarajan, Padmaja on 2/26/18.
//  Copyright © 2018 Adhyam Nagarajan, Padmaja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var button: UIButton!
  
  @IBAction func buttonClick(_ sender: UIButton) {
    let auxButton = UIButton(frame: sender.frame)
    auxButton.setImage(sender.imageView?.image, for: .normal)
    auxButton.alpha = 0.3
    view.addSubview(auxButton)
    
    UIButton.animate(withDuration: 0.25,
                     delay: 0,
                     options: [.curveEaseOut],
                     animations: {
                      auxButton.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                      auxButton.alpha = 0.0
    },
                     completion: { _ in
                      auxButton.removeFromSuperview()
    })
    
//    UIButton.animate(withDuration: 0.5,
//                     delay: 0,
//                     options: [.curveEaseOut],
//                     animations: {
//                      auxButton.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
//                      auxButton.alpha = 0.0
//    },
//                     completion: { _ in
//                      auxButton.removeFromSuperview()
//                     }
//    )
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    button.backgroundColor = UIColor.white
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

