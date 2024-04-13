//
//  ViewController.swift
//  FoodDeliveryApp
//
//  Created by Dima on 13.04.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let label = UILabel()
        view.addSubview(label)
        label.text = "Hello world!"
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 20)
        ])
        label.font = .systemFont(ofSize: 40, weight: UIFont.Weight(20))
        label.textColor = .white
    }


}

