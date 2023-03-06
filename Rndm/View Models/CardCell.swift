//
//  Card.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 05.01.2023.
//

import UIKit


class CardCell: UICollectionViewCell, Glassmorphism, Colors, Fonts {
    
    static let identifier = "cardCellIdentifierId"
    private let blurEffectView: UIVisualEffectView
    private let gradient: CAGradientLayer
    private let border: CAGradientLayer
    private let borderMask: CAShapeLayer
    
    private lazy var text: UILabel = {
        let l = UILabel()
        l.textColor = white
        l.layer.opacity = fullOpacity
        l.font = cardTitleFont
        l.layer.shadowColor = black.cgColor
        l.layer.shadowOffset = cardTextShadowOffset
        l.layer.shadowRadius = cardTextShadowRadius
        l.layer.shadowOpacity = 2 * petitOpacity
        
        l.text = "Josh Flores"
        l.numberOfLines = .zero
        
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    private lazy var image: UIImageView = {
        let v = UIImageView()
        v.clipsToBounds = true
        v.layer.cornerRadius = GConstants.petitCornerRadius
        v.contentMode = .scaleAspectFill
        
        v.isHidden = true
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    private lazy var title: UILabel = {
        let l = UILabel()
        l.textColor = white
        l.layer.opacity = cardTitleOacity
        l.font = cardTitleFont
        l.numberOfLines = .zero
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    private lazy var descriptionText: UILabel = {
        let l = UILabel()
        l.textColor = white
        l.layer.opacity = cardTitleOacity
        l.font = cardDescriptionFont
        l.numberOfLines = .zero
        l.sizeToFit()
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    
    override init(frame: CGRect) {
        self.blurEffectView = UIVisualEffectView()
        self.gradient = CAGradientLayer()
        self.border = CAGradientLayer()
        self.borderMask = CAShapeLayer()
        
        super.init(frame: .zero)
        
        initDesignElements()
        setupLabels()
    }
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    override func prepareForReuse() { super.prepareForReuse()
//        blurEffectView.removeFromSuperview()
//        layer.sublayers?.removeAll()
    }
    
    func setTitlesAndDescriptions(indexPath: IndexPath) {
        title.text = RCardTitles.cardTitles[indexPath.section][indexPath.row]
        descriptionText.text = RCardTitles.cardDescriptions[indexPath.section][indexPath.row]
    }
    
    func setDesign(indexPath: IndexPath) {
        let w: CGFloat = indexPath.section == 0 ? GConstants.largeCardWidth : GConstants.smallCardWidth
        let h: CGFloat = indexPath.section == 0 ? GConstants.largeCardHeight : GConstants.smallCardHeight
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
    
    private func initDesignElements() {
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
    
    private func setupLabels() {
        addSubview(text)
        addSubview(image)
        addSubview(title)
        addSubview(descriptionText)
        text.layer.zPosition = 10
        image.layer.zPosition = 10
        title.layer.zPosition = 10
        descriptionText.layer.zPosition = 10
        
        NSLayoutConstraint.activate([
            text.topAnchor.constraint(equalTo: topAnchor, constant: GConstants.mediumPadding),
            text.leadingAnchor.constraint(equalTo: leadingAnchor, constant: GConstants.mediumPadding),
            text.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -GConstants.mediumPadding),
            text.bottomAnchor.constraint(equalTo: centerYAnchor),
            
            image.topAnchor.constraint(equalTo: topAnchor, constant: GConstants.mediumPadding),
            image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: GConstants.mediumPadding),
            image.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -GConstants.mediumPadding),
            image.bottomAnchor.constraint(equalTo: centerYAnchor),
            
            title.topAnchor.constraint(equalTo: centerYAnchor, constant: GConstants.largePadding),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: GConstants.mediumPadding),
            title.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -GConstants.mediumPadding),
            title.heightAnchor.constraint(equalToConstant: 24),
            
            descriptionText.topAnchor.constraint(equalTo: title.bottomAnchor),
            descriptionText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: GConstants.mediumPadding),
            descriptionText.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -GConstants.mediumPadding),
//            descriptionText.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -GConstants.mediumPadding),
        ])
    }
}
