//
//  MenuButton.swift
//  HikeOregon
//
//  Created by Daniel Seitz on 2/4/17.
//  Copyright © 2017 Hike. All rights reserved.
//

import UIKit

class MenuButton: HOButton {
  let image: UIImage;
  let viewController: ViewController;
  
  init(frame: CGRect, image: UIImage, viewController: ViewController) {
    self.image = image;
    self.viewController = viewController;
    super.init(frame: frame);
    self.backgroundColor = UIColor.red;
  }
  
  required init?(coder aDecoder: NSCoder) {
    
    fatalError("init(coder:) has not been implemented")
  }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

  override func onTap() {
    print("WE HAVE BEEN TAPPED!!!");
    let testVC = TestViewController();
    testVC.transitioningDelegate = self.viewController;
    self.viewController.present(testVC, animated: true, completion: nil);
  }
}
