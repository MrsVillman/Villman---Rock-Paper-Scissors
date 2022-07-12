//
//  sign.swift
//  Villman - Rock Paper Scissors
//
//  Created by Villman, Korrin E on 7/11/22.
//

import Foundation
import Metal

enum Sign {
    case rock
    case paper
    case scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "🪨"
        case .paper:
            return "📃"
        case .scissors:
            return "✂️"
        }
    }
}

func determineWinner(playerSign: Sign, opponentSign: Sign) -> GameState {
    if playerSign == opponentSign {
        return .draw
    }
    
    switch playerSign {
    case .rock:
        if opponentSign == .scissors {
            return .win
        } else {
            return .lose
            }
            
    case .paper:
        if opponentSign == .rock {
            return .win
        } else {
            return .lose
            }
                
    case .scissors:
        if opponentSign == .paper {
            return .win
        } else {
            return .lose
            }
    }
}
