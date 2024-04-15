//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Dima on 15.04.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator{
    override func start() {
        let vc = ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("AppCoordinator finish")
    }
}


