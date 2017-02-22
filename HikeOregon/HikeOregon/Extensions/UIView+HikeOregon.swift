//
//  UIView+HikeOregon.swift
//  HikeOregon
//
//  Created by Daniel Seitz on 2/4/17.
//  Copyright © 2017 Hike. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
  var parentViewController: UIViewController? {
    var parentResponder: UIResponder? = self;
    while parentResponder != nil {
      parentResponder = parentResponder?.next;
      if let viewController = parentResponder as? UIViewController {
        return viewController;
      }
    }
    return nil;
  }
}
