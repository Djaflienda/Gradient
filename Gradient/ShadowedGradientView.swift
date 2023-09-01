//
//  ShadowedGradientView.swift
//  Gradient
//
//  Created by Igor Tumanov on 01.09.2023.
//

import UIKit

final class ShadowedGradientView: UIView {

    private let gradientLayer = CAGradientLayer()

    var cornerRadius: CGFloat = 24.0 {
        didSet { gradientLayer.cornerRadius = cornerRadius }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        prepareShadowLayer()
        prepareGradientLayer()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        gradientLayer.frame = bounds
    }

    private func prepareGradientLayer() {
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.cornerRadius = cornerRadius

        layer.insertSublayer(gradientLayer, at: 0)
    }

    private func prepareShadowLayer() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 4
        layer.masksToBounds = false
    }
}
