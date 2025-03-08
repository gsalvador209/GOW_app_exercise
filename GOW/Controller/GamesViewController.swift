//
//  GamesViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class GamesViewController: UIViewController {
    @IBOutlet weak var gameImage: UIImageView!
    
    @IBOutlet weak var imagePageControl: UIPageControl!
    
    
    @IBAction func rightSwipeDone(_ sender: Any) {
        print("Right gesture done")
        if imagePageControl.currentPage == 0 {
            imagePageControl.currentPage = 7
        }
        else{
            imagePageControl.currentPage -= 1
        }
        gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
    }
    
    
    @IBAction func leftSwipeDone(_ sender: Any) {
        print("Left Gesture Done")
        if imagePageControl.currentPage == 7 {
            imagePageControl.currentPage = 0
        }
        else{
            imagePageControl.currentPage += 1
        }
        gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))        
        
    }
    
    //datasource :P
    let gamePosters = Array(0...7)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imagePageControl.numberOfPages = gamePosters.count
        gameImage.image = UIImage(named: gamePosters.first?.description ?? "0")
    }
}
