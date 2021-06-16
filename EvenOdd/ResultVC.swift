//
//  ResultVC.swift
//  evenodd
//
//  Created by DCS on 14/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    var result = ""
    
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textAlignment = .center
        label.backgroundColor = .blue
        label.textColor  = .white 
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(myLabel)
        
        myLabel.text = result
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel.frame = CGRect(x: 40, y: (view.frame.height/2) - 30, width: view.frame.width - 80, height: 60)
    }
    
    
    
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

