//
//  Barracks.h
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import <Foundation/Foundation.h>
#import "Footman.h"

@interface Barracks : NSObject

@property int gold, food;


- (Footman *) trainFootman;
- (BOOL)canTrainFootman;

@end
