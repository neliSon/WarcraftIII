//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"


@implementation Barracks

- (instancetype)init
{
    _gold = 1000;
    _food = 80;
    return self;
}

- (Footman *) trainFootman {
    if (self.canTrainFootman) {
        self.gold -= 135;
        self.food -= 2;
        return [Footman new];
    }else{
        return nil;
    }
}

- (BOOL)canTrainFootman {
    if (self.gold < 135 || self.food < 2) {
        return NO;
    }else{
        return YES;
    }
}

- (Peasant*)trainPeasant {
    if (self.canTrainPeasant) {
        self.gold -= 90;
        self.food -= 2;
        return [Peasant new];
    }else{
        return nil;
    }
}

- (BOOL)canTrainPeasant {
    if (self.gold < 90 || self.food < 5) {
        return NO;
    }else{
        return YES;
    }
}


@end
