# lodash

Lodash is a utility framework which provides productivity to the developer without losing performance.

It is inspired by Javascript module https://github.com/lodash/lodash.

### Quick Example ###

```sh
NSArray *array = @[@1,@2];
NSArray *mapped = _.map(array,^id(id obj,NSInteger index) {
  NSInteger value = [obj integerValue] * 3;
  return [NSNumber numberWithInteger:value];
});
NSLog(@"mapped array: %@",mapped);
```

### How to use ###

Ready in 1 minute. Just following the next steps:
* add the framework to your project (drag and drop).
* go to your target >> General tab
* add the lodash.framework to your 'Embedded Binaries'
* run and done!

Final Xcode configuration

![image](http://i64.tinypic.com/2u59jkj.png)

### Utility ###

Available methods on the framework:
* times
* random
* range
* uniqueId

### Lang ###

Available methods on the framework:
* isArray
* isNumber
* isString
* isNull
* isDictionary
* isDate
* isData
* isSet
* isEmpty
* isEqual
* toArray
* gt
* gte
* lt
* lte

### String ###
Available methods on the framework:
* capitalize
* lowercase
* uppercase
* padLeft
* padRight
* contain
* replace
* parseInt
* repeat
* trim
* strip
* split
* join
* startsWith
* endsWith
* escape
* unescape

### Math ###
Available methods on the framework:
* add
* ceil
* floor
* max
* min
* round
* abs
* pow
* sqrt
* sum

### Array ###
Available methods on the framework:
* flatten
* map

# Utility

### times ###

Iteratee n times, returning an array of the results of each invocation.
'Times' is invoked with one argument: n(number).

**Arguments**

n (integer): The number of times to invoke iteratee.
block (Function): The function invoked per iteration.

**Return**

(void):

**Example**

```sh
NSInteger __block count = 0;
NSInteger times = 10;
_.times(times,^(NSInteger n) {
  count++;
});
```

### random ###

Returns a random integer between 0 and max, inclusive.

**Arguments**

 max (integer): The max random number possible.

**Return**

(integer): Returns the random integer.

**Example**

```sh
NSInteger res = _.random(100);
```

### range ###

Returns a random integer between min and max, inclusive.
If you only pass one argument, it will return a number between 0 and that number.

**Arguments**

min (integer): The min random number possible.
max (integer): The max random number possible.

**Return**

(integer): Returns the random integer.

**Example**

```sh
NSInteger res = _.range(90,100);
```
### uniqueId ###

Generate a unique integer id (unique within the entire client session).
Useful for temporary ids.
If prefix is passed, the id will be appended to it.

**Arguments***

prefix (string): A prefix if we want to apply one.

**Return**

(string): Returns the random unique id.

**Example**

```sh
NSString *id = _.uniqueId(@"lodash");
```
# Lang

### isArray ###

Checks if value is classified as an Array object.

**Arguments***

value (id): The value to check.

**Return**

(boolean): Returns true if value is correctly classified, else false.

**Example**

```sh
BOOL res = _.isArray(@[@1,@2]);
```

### isNumber ###

Checks if value is classified as a Number primitive or object.

**Arguments***

value (id): The value to check.

**Return**

(boolean): Returns true if value is correctly classified, else false.

**Example**

```sh
BOOL res = _.isNumber(@1);
```

### isString ###

Checks if value is classified as a String primitive or object.

**Arguments***

value (id): The value to check.

**Return**

(boolean): Returns true if value is correctly classified, else false.

**Example**

```sh
BOOL res = _.isString(@"lodash");
```

### isNull ###

Checks if value is null.

**Arguments***

value (id): The value to check.

**Return**

(boolean): Returns true if value is null, else false.

**Example**

```sh
BOOL res = _.isNull([NSNull null]);
BOOL res = _.isNull(@"lodash");
```

### isDictionary ###

Checks if value is classified as a Dictionary primitive or object.

**Arguments***

value (id): The value to check.

**Return**

(boolean): Returns true if value is correctly classified, else false.

**Example**

```sh
BOOL res = _.isDictionary(@{@"key":@1});
```

### isDate ###

Checks if value is classified as a Date primitive or object.

**Arguments***

value (id): The value to check.

**Return**

(boolean): Returns true if value is correctly classified, else false.

**Example**

```sh
BOOL res = _.isDate([NSDate date]);
```

### isData ###

Checks if value is classified as a Data primitive or object.

**Arguments***

value (id): The value to check.

**Return**

(boolean): Returns true if value is correctly classified, else false.

**Example**

```sh
NSString *str = @"lodash";
NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
BOOL res = _.isData(data);
```

### isSet ###

Checks if value is classified as a Set primitive or object.

**Arguments***

value (id): The value to check.

**Return**

(boolean): Returns true if value is correctly classified, else false.

**Example**

```sh
NSSet *set = [NSSet setWithObjects:@1,@2,nil];
BOOL res = _.isSet(set);
```

### isEmpty ###

Checks if value is null.

**Arguments***

value (id): The value to check.

**Return**

(boolean): Returns true if value is null, else false.

**Example**

```sh
BOOL res = _.isEmpty(@[]);
BOOL res = _.isEmpty(@[@1,@2]);
```

### isEqual ###

Performs a deep comparison between two values to determine if they are equivalent.
If customizer is provided it is invoked to compare values.
If customizer returns undefined comparisons are handled by the method instead.
The customizer is bound to thisArg and invoked with three arguments: (value, other [, index|key]).

Note: This method supports comparing arrays, booleans, Date objects, numbers, Object objects, regexes, and strings.
Objects are compared by their own, not inherited, enumerable properties.

**Arguments***

a (id): The value to compare.
b (id): The other value to compare.

**Return**

(boolean): Returns true if the values are equivalent, else false.

**Example**

```sh
BOOL res = _.isEqual(@"1",@"2");
BOOL res = _.isEqual(@[@1,@2],@[@1,@2]);
BOOL res = _.isEqual(@{@"key":@1},@{@"key":@2});
```

### toArray ###

Converts value to an array.

**Arguments***

value (id): The NSSet to convert.

**Return**

(NSArray): Returns the converted array.

**Example**

```sh
NSSet *set = [NSSet setWithObjects:@1,@2,nil];
NSArray *array = _.toArray(set);
```

### gt / gte ###

gt : Checks if value is greater than other.
gte : Checks if value is greater than or equal other.

**Arguments***

a (NSInteger): The value to compare.
b (NSInteger): The other value to compare.

**Return**

(boolean): Returns true if value is greater than other, else false.

**Example**

```sh
BOOL res = _.gt(4,3);
BOOL res = _.gte(4,3);
```

### lt / lte ###

lt : Checks if value is less than other.
lte : Checks if value is less than or equal other.

**Arguments***

a (NSInteger): The value to compare.
b (NSInteger): The other value to compare.

**Return**

(boolean): Returns true if value is greater than other, else false.

**Example**

```sh
BOOL res = _.lt(4,3);
BOOL res = _.lte(4,3);
```




















###  ###



**Arguments***



**Return**



**Example**

```sh

```
