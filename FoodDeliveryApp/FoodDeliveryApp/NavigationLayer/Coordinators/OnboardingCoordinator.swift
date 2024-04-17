//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Dima on 15.04.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator{
    override func start() {
        showOnboarding()
    }
    override func finish() {
        print("AppCoordinator finish")
    }
}

private extension OnboardingCoordinator{
    func showOnboarding(){
        var pages = [UIViewController]()
        
        let firstVC = UIViewController()
        firstVC.view.backgroundColor = .purple
        
        let secondVC = UIViewController()
        secondVC.view.backgroundColor = .green
        
        let thirdVC = UIViewController()
        thirdVC.view.backgroundColor = .yellow
        
        let fourthVC = UIViewController()
        fourthVC.view.backgroundColor = .blue
        
        pages.append(firstVC)
        pages.append(secondVC)
        pages.append(thirdVC)
        pages.append(fourthVC)

        let presenter = OnboardingViewPresenter(coordinator: self)
        let viewController = OnboardingViewController(pages: pages, viewOutput: presenter)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
