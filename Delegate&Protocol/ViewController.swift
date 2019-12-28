//
//  ViewController.swift
//  Delegate&Protocol
//
//  Created by Ramill Ibragimov on 28.12.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.addTarget(self, action: #selector(takeMeToNextView), for: .touchUpInside)
    }
    
    @objc func takeMeToNextView() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func setBackgroundColor(color: UIColor) {
        view.backgroundColor = color
    }


}

extension ViewController: ChangeBgClrDelegate {
    func changeClr(color: UIColor) {
        setBackgroundColor(color: color)
    }
    
    
}

