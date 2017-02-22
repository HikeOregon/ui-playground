//
//  HOButton.swift
//  HikeOregon
//
//  Created by Daniel Seitz on 2/4/17.
//  Copyright © 2017 Hike. All rights reserved.
//

import UIKit

// This is an override point for UIButton
class HOButton: UIButton {
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.tap();
  }
}

extension HOButton: Tappable {
  func onTap() {
    // Do nothing by default
  }
}
