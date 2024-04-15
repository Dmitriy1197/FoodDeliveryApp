//
//  AppCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Dima on 15.04.2024.
//

import UIKit

class AppCoordinator: Coordinator{
    
    
    override func start() {
        showOnboardingFlow()
    }
    override func finish() {
        print("AppCoordinator finish")
    }
}

//MARK: - Navigations metod
private extension AppCoordinator{
    func showOnboardingFlow(){
        guard let navigationController = navigationController else { return}
        let onboardingCoordinator = OnboardingCoordinator(type: .onboarding, navigationController: navigationController, finishDelegate: self)
        addChildCoordinator(onboardingCoordinator)
        onboardingCoordinator.start()
    }
    func showMainFlow(){
        
    }
}
extension AppCoordinator: CoordinatorFinishDelegate{
    func coordinatorDidFinish(childCordinator:  CoordinatorProtocol) {
        removeChildCoordinator(childCordinator)
        switch childCordinator.type{
        case .app:
            return
        default:
            navigationController?.popToRootViewController(animated: false)
        }
    }
    
  
}
