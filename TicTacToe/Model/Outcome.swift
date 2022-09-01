//
//  Outcome.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 30/08/2022.
//

import Foundation
import SwiftUI

struct Outcome {
    let message: MessageOutcome
    let image: ImageOutcome
    let button: ButtonOutcome
    let color: [Color]
//    
//    static let `default` = Self(message: MessageOutcome(rawValue: "You win") ?? <#default value#>MessageOutcome(rawValue: ) ?? <#default value#>, image: ImageOutcome(rawValue: "trophy") ?? <#default value#>, button: ButtonOutcome(rawValue: "Share") ?? <#default value#>, color: [.orange, .blue])
}

enum MessageOutcome: String {
    case win = "You won"
    case lose = "You Lost"
    case draw = "Ended in a draw"
}

enum ImageOutcome: String {
    case win = "trophy"
    case lose = "loss"
    case draw = "draw"
}

enum ButtonOutcome: String {
    case win = "Share"
    case lose = "Play Again"
    case draw = "Try Again"
}
