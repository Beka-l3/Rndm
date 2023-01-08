//
//  RandomViewController.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 05.01.2023.
//

import UIKit


class RViewController: UIViewController, Colors, Fonts {
    
    internal let rViewModels: RViewModels
    internal var sectionStack: [Int]
    
    
//  MARK: - lifecycle
    init() {
        self.rViewModels = RViewModels()
        self.sectionStack = []
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    override func viewDidLoad() { super.viewDidLoad()
        rViewModels.collectionView.delegate = self
        rViewModels.collectionView.dataSource = self
        setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated)
        setupNavStyle()
    }
    
    
//  MARK: - func
    private func setupViews() {
        rViewModels.setupViews(parent: view)
    }
    
    private func setupNavStyle() {
        self.tabBarController?.navigationItem.title = "Title"
        self.tabBarController?.navigationItem.hidesBackButton = true
        self.tabBarController?.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.navigationController?.navigationBar.prefersLargeTitles = true
        self.tabBarController?.navigationController?.navigationBar.tintColor = accent
        
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialDark)
        let largeTitleAttr = [
            NSAttributedString.Key.foregroundColor: white,
            NSAttributedString.Key.font: largeTitleFont!
        ]
        let titleAttr = [
            NSAttributedString.Key.foregroundColor: white,
            NSAttributedString.Key.font: titleFont!
        ]
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundEffect = blurEffect
        appearance.backgroundColor = semiBlack
        appearance.largeTitleTextAttributes = largeTitleAttr
        appearance.titleTextAttributes = titleAttr
        
        let largeAppearance = UINavigationBarAppearance()
        largeAppearance.backgroundEffect = nil
        largeAppearance.backgroundColor = .clear
        largeAppearance.shadowColor = .clear
        largeAppearance.largeTitleTextAttributes = largeTitleAttr
        largeAppearance.titleTextAttributes = titleAttr
        
        self.tabBarController?.navigationController?.navigationBar.standardAppearance = appearance
        self.tabBarController?.navigationController?.navigationBar.scrollEdgeAppearance = largeAppearance
    }
}
