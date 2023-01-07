//
//  RandomViewController.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 05.01.2023.
//

import UIKit


class RViewController: UIViewController, Colors, Fonts {
    
    internal let rViewModels: RViewModels
    
    
//  MARK: - lifecycle
    init() {
        self.rViewModels = RViewModels()
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
        self.tabBarController?.navigationItem.title = "Suka"
        self.tabBarController?.navigationItem.hidesBackButton = true
        self.tabBarController?.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.navigationController?.navigationBar.prefersLargeTitles = true
        self.tabBarController?.navigationController?.navigationBar.tintColor = accent
        
        self.tabBarController?.navigationController?.navigationBar.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor: white,
            NSAttributedString.Key.font: largeTitleFont ?? .boldSystemFont(ofSize: 24)
        ]
        self.tabBarController?.navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: white,
        ]
    }
    
}
