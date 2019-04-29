//
//  GuidanceLauncher.swift
//  VicDiet
//
//  Created by Ming Yang on 7/4/19.
//  Copyright © 2019 Ming Yang. All rights reserved.
//

import UIKit

class AddTabLauncher: NSObject{
    
    weak var navigationController: UINavigationController?
    var homePageController: HomePageController?
    var mainMenuBar: MainMenuBar?
    let blackView = UIView()
    var addFoodSpliteCenter: CGPoint?
    var addMealSpliteCenter: CGPoint?
    
    let addButton: UIButton = {
        let addImageClicked = UIImage(named: "icon_add_clicked")
        let button = UIButton(type: UIButton.ButtonType.custom) as UIButton
        button.setImage(addImageClicked, for: .normal)
        return button
    }()
    
    let addFoodButton: UIButton = {
        //let addImageClicked = UIImage(named: "icon_add_clicked")
        let button = UIButton(type: UIButton.ButtonType.custom) as UIButton
        button.setTitle("Food Items", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        //button.setImage(addImageClicked, for: .normal)
        return button
    }()
    
    let addMealButton: UIButton = {
        //let addImageClicked = UIImage(named: "icon_add_clicked")
        let button = UIButton(type: UIButton.ButtonType.custom) as UIButton
        button.setTitle("Meal Intakes", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        //button.setImage(addImageClicked, for: .normal)
        return button
    }()
    
    override init() {
        super.init()
    }

    @objc func showLauncher(){
        if let window = UIApplication.shared.keyWindow{
            blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleDismissAddTabLauncher)))
            addButton.addTarget(self, action: #selector(handleDismissAddTabLauncher), for: .touchUpInside)
            addFoodSpliteCenter = CGPoint(x: window.frame.width/2 - 80, y: window.frame.height - 100)
            addMealSpliteCenter = CGPoint(x: window.frame.width/2 + 80, y: window.frame.height - 100)
            blackView.backgroundColor = UIColor(white: 0, alpha: 0.5)
            window.addSubview(blackView)
            blackView.addSubview(addButton)
            blackView.addSubview(addFoodButton)
            blackView.addSubview(addMealButton)
            addButton.frame.size = CGSize(width: 50, height: 46)
            addButton.center = CGPoint(x: window.frame.width/2, y: window.frame.height - 55/2)
            addFoodButton.frame.size = CGSize(width: 100, height: 46)
            addFoodButton.center = addButton.center
            addMealButton.frame.size = CGSize(width: 100, height: 46)
            addMealButton.center = addButton.center
            blackView.frame = window.frame
            blackView.alpha = 0
            UIView.animate(withDuration: 0.1, animations: {
                self.blackView.alpha = 1
                self.addButton.alpha = 1
                self.addFoodButton.alpha = 0
                self.addMealButton.alpha = 0
            })
            UIView.animate(withDuration: 0.3, animations: {
                self.addFoodButton.alpha = 1
                self.addMealButton.alpha = 1
                self.addFoodButton.center = self.addFoodSpliteCenter!
                self.addMealButton.center = self.addMealSpliteCenter!
            })
            addFoodButton.addTarget(self, action: #selector(handleAddFoodInLauncher), for: .touchUpInside)
            addMealButton.addTarget(self, action: #selector(handleAddMealInLauncher), for: .touchUpInside)
        }
    }

    @objc func handleAddFoodInLauncher(){
        self.blackView.alpha = 0
        let searchingViewController = SearchingViewController()
        searchingViewController.homePageController = self.homePageController
        let oldNavigationController = self.navigationController
        oldNavigationController?.pushViewController(searchingViewController, animated: true)
    }
    
    @objc func handleAddMealInLauncher(){
        self.blackView.alpha = 0
        let mealListController = MealListController()
        mealListController.homePageController = self.homePageController
        mealListController.mealObjectList = (self.homePageController?.mealObjectList)!
        let oldNavigationController = self.navigationController
        oldNavigationController?.pushViewController(mealListController, animated: true)
    }
    
    @objc func handleDismissAddTabLauncher(){
        UIView.animate(withDuration: 0.3, animations: {
            self.addFoodButton.center = self.addButton.center
            self.addMealButton.center = self.addButton.center
            UIView.animate(withDuration: 0.1, animations: {
                self.addFoodButton.alpha = 0
                self.addMealButton.alpha = 0
                self.addButton.alpha = 0
                self.blackView.alpha = 0
            })
        })
    }
    
}

