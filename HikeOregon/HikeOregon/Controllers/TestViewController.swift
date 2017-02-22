//
//  TestViewController.swift
//  HikeOregon
//
//  Created by Daniel Seitz on 2/4/17.
//  Copyright © 2017 Hike. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
      self.view.backgroundColor = .red;
      let label = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 200));
      label.text = "HELLO WORLD!";
      self.view.addSubview(label);
      
      let backButton = BackButton(frame: CGRect(x: 100, y: 300, width: 100, height: 50));
      backButton.backgroundColor = .green;
      self.view.addSubview(backButton);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
