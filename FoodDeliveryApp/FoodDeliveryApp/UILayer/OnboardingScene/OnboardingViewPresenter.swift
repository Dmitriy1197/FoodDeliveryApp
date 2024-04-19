//
//  OnboardingViewPresenter.swift
//  FoodDeliveryApp
//
//  Created by Dima on 16.04.2024.
//

import Foundation

protocol OnboardingViewOutput: AnyObject{
    func onboardingFinish()
}

class OnboardingViewPresenter: OnboardingViewOutput{
    private let userStorage = UserStorage.shared
    
    func onboardingFinish() {
        userStorage.passedOnboarding = true
        coordinator.finish()
    }
    // MARK: - Properties
    weak var coordinator: OnboardingCoordinator!
    init(coordinator: OnboardingCoordinator!) {
        self.coordinator = coordinator
    }
}
