//  Created by Isra San Jose on 23/11/2015.

#import "lodash+Array.h"

@implementation NSArray (Array)

+ (NSArray *(^)(NSArray *array))_flatten
{
    return ^NSArray *(NSArray *array) {
        return [self baseFlattenWithArray:array result:[NSMutableArray new]];
    };
}

/**
 The base implementation of '_.flatten'.
 
 @private
 @param {Array} array The array to flatten.
 @param {Array} [result=[]] The initial result value.
 @returns {Array} Returns the new flattened array.
 */
+ (NSArray *)baseFlattenWithArray:(NSArray *)array result:(NSMutableArray *)result
{
    NSInteger index = -1;
    while (++index < array.count) {
        id obj = array[index];
        if (NSObject.isArray(obj)) {
            [self baseFlattenWithArray:obj result:result];
            break;
        } else if (NSObject.isSet(obj)) {
            [self baseFlattenWithArray:[obj allObjects] result:result];
        } else {
            [result addObject:obj];
        }
    }
    return result;
}

+ (NSArray *(^)(NSArray *array,lodashIteratorArrayBlock block))_map
{
    return ^NSArray *(NSArray *array,lodashIteratorArrayBlock block) {
        NSParameterAssert(array.count > 0);
        NSMutableArray *final = [NSMutableArray new];
        for (NSInteger iterator = 0; iterator < array.count; iterator++) {
            id obj = block(array[iterator],iterator);
            if (obj) {
                [final addObject:obj];
            }
        }
        return final;
    };
}

#pragma mark - Helpers
/**
 Converts 'array' to a array if it's not one.
 An exception is returned for 'null' or 'undefined' values.
 
 @private
 @param {*} array The value to process.
 @returns {array} Returns the processed array.
 */
+ (NSMutableArray *)baseToArray:(NSArray *)array
{
    NSParameterAssert(array);
    NSParameterAssert(NSObject.isArray(array));
    return [[NSMutableArray alloc] initWithArray:array];
}

@end
