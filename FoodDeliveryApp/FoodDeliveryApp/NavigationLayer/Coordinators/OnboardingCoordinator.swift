//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Dima on 15.04.2024.
//

import UIKit


//MARK: - OnboardingCoordinator
class OnboardingCoordinator: Coordinator{
    
    //MARK: - Properties
    private let factory = SceneFactory.self
    
    //MARK: - Methods
    override func start() {
        showOnboarding()
    }
    override func finish() {
        print("AppCoordinator finish")
        finishDelegate?.coordinatorDidFinish(childCordinator: self)
    }
}


//MARK: - Navigation
private extension OnboardingCoordinator{
    func showOnboarding(){
        let viewController = factory.makeOnboardingScene(coordinator: self)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
