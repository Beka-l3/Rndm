//
//  Card.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 05.01.2023.
//

import UIKit


class CardCell: UICollectionViewCell, Glassmorphism, Colors {
    
    static let identifier = "cardCellIdentifierId"
//    private let blurEffect: UIBlurEffect
    private let blurEffectView: UIVisualEffectView
    private let gradient: CAGradientLayer
    private let border: CAGradientLayer
    private let borderMask: CAShapeLayer
    
    
    override init(frame: CGRect) {
//        self.blurEffect = UIBlurEffect(style: .systemUltraThinMaterialDark)
//        self.blurEffectView = UIVisualEffectView(effect: self.blurEffect)
        self.blurEffectView = UIVisualEffectView()
        self.gradient = CAGradientLayer()
        self.border = CAGradientLayer()
        self.borderMask = CAShapeLayer()
        
        super.init(frame: .zero)
        
        blurEffectView.frame.origin = .zero
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurEffectView.layer.cornerRadius = GConstants.mediumCornerRadius
        blurEffectView.clipsToBounds = true
        
        gradient.frame.origin = .zero
        gradient.opacity = semiFullOpacity
        gradient.cornerRadius = cornerRadius
        gradient.type = .axial
        gradient.startPoint = .unitCoordinate(.topLeft)
        gradient.endPoint = .unitCoordinate(.bottomRight)
        gradient.compositingFilter = overlayBlendMode
        
        border.frame.origin = .zero
        border.opacity = 2 * petitOpacity
        border.startPoint = .unitCoordinate(.topLeft)
        border.endPoint = .unitCoordinate(.bottomRight)
        border.compositingFilter = overlayBlendMode
        
        borderMask.fillColor = UIColor.clear.cgColor
        borderMask.strokeColor = UIColor.white.cgColor
        borderMask.lineWidth = borderWidth
        
        layer.shadowRadius = cornerRadius
        layer.shadowOffset = .zero
        layer.shadowOpacity = petitOpacity
    }
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    override func prepareForReuse() { super.prepareForReuse()
        blurEffectView.removeFromSuperview()
        layer.sublayers?.removeAll()
    }
    
    
    func setDesign(indexPath: IndexPath) {
        let w: CGFloat = indexPath.section == 0 ? GConstants.largeCardWidth : GConstants.mediumCardWidth
        let h: CGFloat = indexPath.section == 0 ? GConstants.largeCardHeight : GConstants.mediumCardHeight
        let size = CGSize(width: w, height: h)
        
        let blurEffect = UIBlurEffect(style: indexPath.section == 0 ? .systemUltraThinMaterialDark : .systemUltraThinMaterialLight)
        blurEffectView.effect = blurEffect
        
        blurEffectView.frame.size = size
        gradient.frame.size = size
        gradient.colors = RGradients.gradients[indexPath.section][indexPath.row].map {$0.cgColor}
        
//      border = existingBorder ?? CAGradientLayer()
        border.frame.size = CGSize(width: w + borderWidth, height: h + borderWidth)
        border.colors = [UIColor.white.cgColor, UIColor.black.cgColor]
        
        let maskRect = CGRect(
            x: .zero + borderWidth/2,
            y: .zero + borderWidth/2,
            width: w - borderWidth,
            height: h - borderWidth
        )
        borderMask.path = UIBezierPath(roundedRect: maskRect, cornerRadius: cornerRadius).cgPath
        border.mask = borderMask
        
        addSubview(blurEffectView)
        layer.addSublayer(gradient)
        
        let existingBorder = gradientBorderLayer()
        let exists = (existingBorder != nil)
        if !exists {
            layer.addSublayer(border)
        }
        
        layer.shadowColor = RGradients.gradients[indexPath.section][indexPath.row][0].cgColor
    }
}
