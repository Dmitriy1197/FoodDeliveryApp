//
//  OnboardingPartViewController.swift
//  FoodDeliveryApp
//
//  Created by Dima on 17.04.2024.
//

import UIKit

//MARK: - OnboardingPartViewController
class OnboardingPartViewController: UIViewController {
    //MARK: - Properties
    var imageToShow : UIImage?{
        didSet{
            imageView.image = imageToShow
        }
    }
    
    var titleText : String?{
        didSet{
            titleLabel.text = titleText
        }
    }
    
    var descriptionText : String?{
        didSet {
            descriptionLabel.text = descriptionText
        }
    }
    
    //MARK: - Views
    private let imageView = UIImageView()
    private let titleLabel = UILabel()
    private let descriptionLabel = UILabel()
    
//    //MARK: - Initializers
//    init(imageToShow: UIImage, titleText: String, descriptionText: String) {
//        self.imageToShow = imageToShow
//        self.titleText = titleText
//        self.descriptionText = descriptionText
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
}
//MARK: - Layout
private extension OnboardingPartViewController{
    func setupLayout(){
        setupView()
        setupImageView()
        setupTitleLabel()
        setupDescriptionLabel()
        func setupView(){
            view.backgroundColor = AppColors.accentOrange
        }
        
        func setupImageView(){
            view.addSubview(imageView)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
                imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                imageView.heightAnchor.constraint(equalToConstant: 200),
                imageView.widthAnchor.constraint(equalToConstant: 200)
            ])
        }
        func setupTitleLabel(){
            view.addSubview(titleLabel)
            titleLabel.textAlignment = .center
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            titleLabel.font = .Roboto.bold.size(of: 24)
            titleLabel.textColor = AppColors.white
            
            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
                titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        }
        func setupDescriptionLabel(){
            view.addSubview(descriptionLabel)
            descriptionLabel.numberOfLines = 0
            descriptionLabel.textAlignment = .center
            descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
            descriptionLabel.font = .Roboto.regular.size(of: 14)
            descriptionLabel.textColor = AppColors.white

            
            NSLayoutConstraint.activate([
                descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 23),
                descriptionLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 71),
                descriptionLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -72),
                descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        }
    }
}
