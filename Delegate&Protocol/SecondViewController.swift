//
//  SecondViewController.swift
//  Delegate&Protocol
//
//  Created by Ramill Ibragimov on 28.12.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import UIKit

protocol ChangeBgClrDelegate: class {
    func changeClr(color: UIColor)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var orange: UIButton!
    @IBOutlet weak var green: UIButton!
    
    weak var delegate: ChangeBgClrDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orange.addTarget(self, action: #selector(orangeTapped), for: .touchUpInside)
        green.addTarget(self, action: #selector(greenTapped), for: .touchUpInside)
    }
    
    @objc func greenTapped() {
        navigationController?.popViewController(animated: true)
        delegate?.changeClr(color: UIColor.green)
    }
    
    @objc func orangeTapped() {
        navigationController?.popViewController(animated: true)
        delegate?.changeClr(color: UIColor.orange)
    }

}
