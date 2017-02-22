//
//  File.swift
//  HikeOregon
//
//  Created by Daniel Seitz on 2/4/17.
//  Copyright © 2017 Hike. All rights reserved.
//

import Foundation
import UIKit

protocol Tappable {
  func onTap();
}

extension Tappable {
  func tap() {
    self.onTap();
  }
}
