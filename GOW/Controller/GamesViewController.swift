//
//  GamesViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class GamesViewController: UIViewController {
    
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var dotsStackView: UIStackView! //Made for the indicators
    
    //datasource :P
    let gamePosters = Array(0...7)
    var currentIndex = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupDotsIndicator()
        updateDots()
        updateImage()
    }
    
    //MARK: Dots indicator
    private func setupDotsIndicator() {
        dotsStackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        for _ in gamePosters {
            let dot = UIImageView() // Now always an UIImageView
            dot.translatesAutoresizingMaskIntoConstraints = false
            dot.widthAnchor.constraint(equalToConstant: 8).isActive = true
            dot.heightAnchor.constraint(equalToConstant: 8).isActive = true
            dot.layer.cornerRadius = 4
            dot.contentMode = .scaleAspectFit
            dot.image = nil // Start as empty, only active one gets an image
            dot.backgroundColor = GowColors.gowText
            
            dotsStackView.addArrangedSubview(dot)
        }
    }
    
    private func updateDots() {
        for (index, view) in dotsStackView.arrangedSubviews.enumerated() {
            guard let dot = view as? UIImageView else { continue }
            
            if index == currentIndex {
                dot.image = UIImage(named: "gow_logo")
                dot.backgroundColor = .clear // Remove background when using an image
                dot.transform = CGAffineTransform(scaleX: 3.5, y: 3.5)
            } else {
                dot.image = nil
                dot.backgroundColor = GowColors.gowText // Show normal dot
                dot.transform = .identity
            }
        }
    }
    
    private func updateImage() {
        gameImage.image = UIImage(named: "\(gamePosters[currentIndex])")
        updateDots()
    }
    
    @IBAction func rightSwipeDone(_ sender: Any) {
        print("Right gesture done")
        currentIndex = (currentIndex == 0) ? gamePosters.count - 1 : currentIndex - 1
        updateImage()
    }
    
    
    @IBAction func leftSwipeDone(_ sender: Any) {
        print("Left Gesture Done")
        currentIndex = (currentIndex == gamePosters.count - 1) ? 0 : currentIndex + 1
        updateImage()
    }
}
