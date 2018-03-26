//
//  ObjCTicTacToeGame.m
//  TicTacToe
//
//  Created by Kiana Caston on 3/26/18.
//  Copyright © 2018 Kiana Caston. All rights reserved.
//

#import "ObjCTicTacToeGame.h"

@implementation ObjCTicTacToeGame

- (id) init {
    self = [super init];
    if (self) {
        self.gameState = GameStateXTurn;
        for (int i = 0; i < 9; ++i) {
            gameBoard[i] = MarkTypeNone;
        }
    }
    return self;
}

- (NSString*) getGameStateString {
    switch (self.gameState) {
        case GameStateXTurn:
            return @"X Turn";
        case GameStateOTurn:
            return @"O Turn";
        case GameStateXWon:
            return @"X Wins!";
        case GameStateOWon:
            return @"O Wins!";
        case GameStateTie:
            return @"Tie Game.";
    }
};

- (NSString*) getMarkTypeString:(MarkType) mark {
    switch (mark){
        case MarkTypeX:
            return @"X";
        case MarkTypeO:
            return @"O";
        case MarkTypeNone:
            return @"-";
    }
}

- (MarkType) getGameBoardMarkAtIndex: (NSInteger) index {
    return gameBoard[index];
}

//func getGameString(_ indices: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8]) -> String {
//    var gameString = ""
//    for index in indices {
//        gameString += gameBoard[index].rawValue
//    }
//    return gameString
//}
//
//var description: String {
//    return "\(gameState.rawValue) Board: \(getGameString())"
//}
//
//func pressedSquare( _ index: Int) {
//    if gameBoard[index] != .none {
//        return // This square is not empty
//    }
//    if gameState == .xTurn {
//        gameBoard[index] = .x
//        gameState = .oTurn
//        checkForGameOver()
//    }else if gameState == .oTurn {
//        gameBoard[index] = .o
//        gameState = .xTurn
//        checkForGameOver()
//    }
//}

- (void) pressedSquare: (NSInteger) index{
    
}

//
//func checkForGameOver() {
//    if !gameBoard.contains(.none) {
//        gameState = .tieGame
//    }
//
//    var linesOf3 = [String]()
//    linesOf3.append(getGameString([0, 1, 2]))
//    linesOf3.append(getGameString([3, 4, 5]))
//    linesOf3.append(getGameString([6, 7, 8]))
//    linesOf3.append(getGameString([0, 4, 8]))
//    linesOf3.append(getGameString([2, 4, 6]))
//    linesOf3.append(getGameString([0, 3, 6]))
//    linesOf3.append(getGameString([1, 4, 7]))
//    linesOf3.append(getGameString([2, 5, 8]))
//
//    for lineOf3 in linesOf3 {
//        if lineOf3 == "XXX" {
//            gameState = .xWin
//            break
//        } else if lineOf3 == "OOO" {
//            gameState = .oWin
//            break
//        }
//    }
//}
@end
