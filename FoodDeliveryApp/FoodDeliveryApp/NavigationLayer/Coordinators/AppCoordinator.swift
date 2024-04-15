//
//  AppCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Dima on 15.04.2024.
//

import UIKit

class AppCoordinator: Coordinator{
    
    
    override func start() {
//        showOnboardingFlow()
        showMainFlow()
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
        guard let navigationController = navigationController else { return }
        
        let homeNavigationConroller = UINavigationController()
        homeNavigationConroller.tabBarItem = UITabBarItem(title: "Home", image: UIImage.init(systemName: "homekit"), tag: 0)
        let homeCoordinator = HomeCoordinator(type: .home, navigationController: homeNavigationConroller)
        homeCoordinator.finishDelegate = self
        homeCoordinator.start()
        
        let orderNavigationConroller = UINavigationController()
        orderNavigationConroller.tabBarItem = UITabBarItem(title: "Order", image: UIImage.init(systemName: "list.bullet.clipboard") , tag: 1)
        let orderCoordinator = OrderCoordinator(type: .order, navigationController: orderNavigationConroller)
        orderCoordinator.finishDelegate = self
        orderCoordinator.start()
        
        let listNavigationConroller = UINavigationController()
        listNavigationConroller.tabBarItem = UITabBarItem(title: "List", image: UIImage.init(systemName: "bookmark.circle"), tag: 2)
        let listCoordinator = ListCoordinator(type: .list, navigationController: listNavigationConroller)
        listCoordinator.finishDelegate = self
        listCoordinator.start()
        
        let profileNavigationConroller = UINavigationController()
        profileNavigationConroller.tabBarItem = UITabBarItem(title: "Profile", image: UIImage.init(systemName: "person.fill.viewfinder"), tag: 3)
        let profileCoordinator = ProfileCoordinator(type: .home, navigationController: profileNavigationConroller)
        profileCoordinator.finishDelegate = self
        profileCoordinator.start()
        
        addChildCoordinator(homeCoordinator)
        addChildCoordinator(orderCoordinator)
        addChildCoordinator(listCoordinator)
        addChildCoordinator(profileCoordinator)
        
        let tabBarControllers = [homeNavigationConroller, orderNavigationConroller, listNavigationConroller, profileNavigationConroller]
        let tabBarController = TabBarController(tabBarControllers: tabBarControllers)
        
        navigationController.pushViewController(tabBarController, animated: true)
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
