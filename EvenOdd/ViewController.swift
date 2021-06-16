//
//  ViewController.swift
//  evenodd
//
//  Created by DCS on 12/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let myButton:UIButton={
        let btn=UIButton()
        btn.setTitle("Check Even Or Odd", for:.normal)
        btn.addTarget(self, action: #selector(checkevenodd), for: .touchUpInside)
        btn.backgroundColor = .blue
        btn.layer.cornerRadius=10
        
        return btn
    }()
    private let myTextbox:UITextField={
        let txt=UITextField()
        txt.placeholder="Enter Number Which You Want To Check Even Or Odd"
        txt.textAlignment = .center
        txt.backgroundColor = .green
        txt.textColor = .blue
        txt.borderStyle = .roundedRect
        
        return txt
    }()
    
    
    @objc private func checkevenodd()
    {
        print("checking...")
        guard let num = Int(myTextbox.text!) else {
            let alert = UIAlertController(title: "Oops!", message: "Wrong input. Please enter a number", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
            DispatchQueue.main.async {
                self.present(alert, animated: true, completion: nil)
            }
            return
        }
        
        let vc = ResultVC()
        
        if num % 2 == 0 {
            vc.result = String(num) + " Is Even Number"
        } else {
            vc.result = String(num) + " Is Odd Number"
        }
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        view.addSubview(myButton)
        view.addSubview(myTextbox)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myTextbox.frame = CGRect(x: 40, y: (view.frame.height/2)-50, width: view.frame.width - 80, height:60)
        myButton.frame = CGRect(x: 40, y: myTextbox.frame.origin.y+myTextbox.frame.size.height+20, width: view.frame.width - 80, height:60)
    }
}
