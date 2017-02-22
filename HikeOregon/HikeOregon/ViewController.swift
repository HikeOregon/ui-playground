//
//  ViewController.swift
//  HikeOregon
//
//  Created by Daniel Seitz on 2/4/17.
//  Copyright © 2017 Hike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let transition = PopAnimator();
  var menuButton: MenuButton!;
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let frame = CGRect(x: 50, y: 50, width: 200, height: 200);
    self.menuButton = MenuButton(frame: frame, image: UIImage(), viewController: self);
    self.view.addSubview(self.menuButton);
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

extension ViewController: UIViewControllerTransitioningDelegate {
  func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
    self.transition.originFrame = self.menuButton.frame;
    self.transition.presenting = true;
    return self.transition;
  }
  
  func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
    self.transition.presenting = false;
    return self.transition;
  }
}
