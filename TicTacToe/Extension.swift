//
//  Extension.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 12/07/2022.
//

import Foundation
import SwiftUI

extension View {
    public func foregroundLinearGradient(colors: [Color], startPoint: UnitPoint, endPoint: UnitPoint) -> some View {
        self.overlay(
        LinearGradient(colors: colors, startPoint: startPoint, endPoint: endPoint)
            .mask(self)
        )
    }
}
