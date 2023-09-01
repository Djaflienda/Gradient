//
//  ViewController.swift
//  Gradient
//
//  Created by Igor Tumanov on 01.09.2023.
//

import UIKit

final class ViewController: UIViewController {

    private let gradientView = ShadowedGradientView()

    private var height: NSLayoutConstraint?

    override func viewDidLoad() {
        super.viewDidLoad()

        layout()
    }

    private func layout() {
        view.addSubview(gradientView)
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        gradientView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        gradientView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        gradientView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        gradientView.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
}
