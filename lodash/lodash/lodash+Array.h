//  Created by Isra San Jose on 23/11/2015.

@import Foundation;

#import "_.h"

@interface NSArray (Array)

/**
 Flattens a nested array.
 
 Arguments
 ---
 array (Array): The array to flatten.

 Returns
 ---
 (Array): Returns the new flattened array.
 */
+ (NSArray *(^)(NSArray *))_flatten;

/**
 Creates an array of values by running each element in collection through iteratee. 
 The iteratee is bound to thisArg and invoked with three arguments: (value,index).
 
 Arguments
 ---
 array (Array): The collection to iterate over.
 block (Function): The function invoked per iteration.
 
 Returns
 ---
 (Array): Returns the new mapped array.
 */
+ (NSArray *(^)(NSArray *,lodashIteratorArrayBlock))_map;

@end
