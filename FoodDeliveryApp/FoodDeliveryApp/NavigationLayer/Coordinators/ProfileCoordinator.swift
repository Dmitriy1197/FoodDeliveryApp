//
//  ProfileCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Dima on 15.04.2024.
//

import UIKit

class ProfileCoordinator: Coordinator{
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .green
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("AppCoordinator finish")
    }
}
