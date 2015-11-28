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

###  ###



**Arguments***



**Return**



**Example**

```sh

```
