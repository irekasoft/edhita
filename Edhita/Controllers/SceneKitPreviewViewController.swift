//
//  SceneKitPreviewViewController.swift
//  Edhita
//
//  Created by Muhammad Hijazi on 27/11/2018.
//  Copyright © 2018 tnantoka. All rights reserved.
//

import UIKit
import SceneKit

class SceneKitPreviewViewController: UIViewController {
  
  var documentDirectoryPath: String?
  
  override func loadView() {
    super.loadView()
    
    let scnView = SCNView()
    scnView.frame = self.view.frame
    self.view.addSubview(scnView)
    
    do {
      let scene = try SCNScene(url: URL.init(fileURLWithPath: documentDirectoryPath!), options: nil)
      
      scnView.showsStatistics = true
      scnView.allowsCameraControl = true
      scnView.backgroundColor = .black
      scnView.scene = scene
      
    } catch _ {
      
      dismiss(animated: true, completion: nil)
      
    }
    
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 150, height: 40))
    button.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
    button.addTarget(self, action: #selector(close), for: .touchUpInside)
    view.addSubview(button)
    
  }
  
  @objc func close(){
    dismiss(animated: true, completion: nil)
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
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
