//
//  ObjCTicTacToeGame.h
//  TicTacToe
//
//  Created by Kiana Caston on 3/26/18.
//  Copyright © 2018 Kiana Caston. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, GameState) {
    GameStateXTurn,
    GameStateOTurn,
    GameStateXWon,
    GameStateOWon,
    GameStateTie
};

typedef NS_ENUM(NSInteger, MarkType) {
    MarkTypeNone,
    MarkTypeX,
    MarkTypeO
};

@interface ObjCTicTacToeGame : NSObject {
    MarkType gameBoard[9];
}


- (NSString*) getGameStateString;
- (NSString*) getMarkTypeString:(MarkType) mark;
- (MarkType) getGameBoardMarkAtIndex: (NSInteger) index;
- (void) pressedSquare: (NSInteger) index;

@property (nonatomic) GameState gameState;

@end
