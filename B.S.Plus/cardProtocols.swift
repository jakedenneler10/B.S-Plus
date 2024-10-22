//
//  cardProtocols.swift
//  B.S.Plus
//
//  Created by Student on 10/22/24.
//

import Foundation

protocol Card {}

protocol Deck {
	func shuffle()
	func reset()
	func drawACard()
}

protocol Shoe {
	func reset()
	func drawACard()
}
