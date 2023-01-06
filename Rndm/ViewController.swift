//
//  ViewController.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 28.12.2022.
//

import UIKit

class ViewController: UIViewController {

    private lazy var exp: UIView = {
        let v = UIView()
        v.layer.cornerRadius = 20
//        v.clipsToBounds = true
        v.backgroundColor = .clear
        
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    
    private lazy var bgImage: UIImageView = {
        let i = UIImageView()
        let im = UIImage(named: "BG_dark_clear")
        i.image = im
        
        i.translatesAutoresizingMaskIntoConstraints = false
        return i
    }()
    
    override func viewDidLoad() { super.viewDidLoad()
        view.backgroundColor = .systemPurple
        setupViews()
    }
    
    override func viewDidLayoutSubviews() { super.viewDidLayoutSubviews()
//        setupLayers()
    }
    
    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    

    private func setupViews() {
        view.addSubview(bgImage)
//        view.addSubview(exp)
        
        NSLayoutConstraint.activate([
            bgImage.topAnchor.constraint(equalTo: view.topAnchor),
            bgImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bgImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bgImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
//            exp.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
//            exp.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
//            exp.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
//            exp.heightAnchor.constraint(equalToConstant: 240 ),
        ])
    }
    
    private func setupLayers() {
        let blurEffect = UIBlurEffect(style: .regular)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = exp.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurEffectView.layer.cornerRadius = 20
        blurEffectView.clipsToBounds = true
        
        let gradient = CAGradientLayer()
        gradient.opacity = 0.5
        gradient.cornerRadius = 20
        gradient.type = .axial
        gradient.frame = exp.bounds
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.compositingFilter = "overlayBlendMode"
        gradient.colors = [
            UIColor(red: 25.0/255.0, green: 250.0/255.0, blue: 119.0/255.0, alpha: 1).cgColor,
            UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        ]
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.lineWidth = 6
        shapeLayer.cornerRadius = 20
        shapeLayer.path = UIBezierPath(rect: exp.bounds).cgPath
        shapeLayer.fillColor = nil
        shapeLayer.strokeColor = UIColor.black.cgColor
    
        exp.addSubview(blurEffectView)
        exp.layer.addSublayer(gradient)
//        exp.gradientBorder(width: 2, colors: [.white, .black], startPoint: .unitCoordinate(.topLeft), endPoint: .unitCoordinate(.bottomRight), andRoundCornersWithRadius: 20)
        
        exp.layer.shadowColor = UIColor(red: 25.0/255.0, green: 250.0/255.0, blue: 119.0/255.0, alpha: 1).cgColor
        exp.layer.shadowRadius = 20
        exp.layer.shadowOffset = .zero
        exp.layer.shadowOpacity = 0.1
        
    }
}
