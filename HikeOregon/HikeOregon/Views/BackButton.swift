//
//  BackButton.swift
//  HikeOregon
//
//  Created by Daniel Seitz on 2/4/17.
//  Copyright © 2017 Hike. All rights reserved.
//

import UIKit

class BackButton: HOButton {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    let label = UILabel(frame: CGRect(x: 0, y: 10, width: 100, height: 50))
    label.text = "LABEL"
    label.backgroundColor = .blue
    
    self.addSubview(label)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func onTap() {
    print("BACK BUTTON TAPPED!");
    self.parentViewController?.dismiss(animated: true, completion: nil);
  }
}
