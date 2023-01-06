//
//  RandomViewController.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 05.01.2023.
//

import UIKit


class RViewController: UIViewController {
    
    internal let rViewModels: RViewModels
    
    
    init() {
        self.rViewModels = RViewModels()
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    
    override func viewDidLoad() { super.viewDidLoad()
        setupViews()
        rViewModels.collectionView.delegate = self
        rViewModels.collectionView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.navigationItem.hidesBackButton = true
        self.navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
    }
    
    
    
    private func setupViews() {
        rViewModels.setupViews(parent: view)
    }
    
}
