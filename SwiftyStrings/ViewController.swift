//
//  ViewController.swift
//  SwiftyStrings
//
//  Created by Maciej Piotrowski on 20/11/16.
//  Copyright © 2016 Maciej Piotrowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationItem()
        configureViews()
        configureConstraints()
    }
}

extension ViewController {
    fileprivate func configureViews() {
        view.backgroundColor = .white
        let color = UIColor(red:0.13, green:0.56, blue:0.93, alpha:1.00)
        button = UIButton(frame: .zero)
        button.setTitle(.ImpressMe, for: .normal)
        button.setTitleColor(color, for: .normal)
        button.sizeToFit()
        button.addTarget(self, action: #selector(buttonTapped(sender:)), for: .touchUpInside)
        view.addSubview(button)
    }
    
    fileprivate func configureConstraints() {
        view.subviews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        let constraints: [NSLayoutConstraint] = NSLayoutConstraint.centerInSuperview(button)
        NSLayoutConstraint.activate(constraints)
    }
    
    fileprivate func configureNavigationItem() {
        title = .Hello
    }
    
    @objc fileprivate func buttonTapped(sender: UIButton) {
        let alert = UIAlertController(title: .ThisApplicationIsCreated, message: .OpsNoFeature, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: .OK, style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
