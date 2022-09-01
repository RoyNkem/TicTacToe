//
//  Haptics.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 01/09/2022.
//

import UIKit

class Haptics {
    static let shared = Haptics()
    
    private init() { }
    
    func haptic(_ feedbackType: UINotificationFeedbackGenerator.FeedbackType) {
        UINotificationFeedbackGenerator().notificationOccurred(feedbackType)
    }

    func impact(_ feedbackStyle: UIImpactFeedbackGenerator.FeedbackStyle) {
        UIImpactFeedbackGenerator(style: feedbackStyle).impactOccurred()
    }
}
