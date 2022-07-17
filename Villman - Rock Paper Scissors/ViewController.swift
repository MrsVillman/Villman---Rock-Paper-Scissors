//
//  ViewController.swift
//  Villman - Rock Paper Scissors
//
//  Created by Villman, Korrin E on 7/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rockButtonOutlet: UIButton!
    @IBOutlet weak var paperButtonOutlet: UIButton!
    @IBOutlet weak var scissorsButtonOutlet: UIButton!
    @IBOutlet weak var playAgainButtonOutlet: UIButton!
    
    @IBOutlet weak var opponentLabel: UILabel!
    @IBOutlet weak var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI(gameState: .start)
    }


    @IBAction func rockButtonAction(_ sender: Any) {
    }
    @IBAction func paperButtonAction(_ sender: Any) {
    }
    @IBAction func scissorsButtonAction(_ sender: Any) {
    }
    
    @IBAction func playAgainButton(_ sender: Any) {
        updateUI(gameState: .start)
    }
    
    
    func updateUI (gameState: GameState) {
        
       // resultsLabel.text = gameState
        
        switch gameState {
            case .start:
            view.backgroundColor = .gray
            opponentLabel.text = "🤖"
            
            playAgainButtonOutlet.isHidden = true
            
            rockButtonOutlet.isHidden = false
            paperButtonOutlet.isHidden = false
            scissorsButtonOutlet.isHidden = false
            
            
            
            case .win:
            view.backgroundColor = .green
            
            case .lose:
            view.backgroundColor = .red
            
            case .draw:
            view.backgroundColor = .yellow
        }
        
        
    }
}

