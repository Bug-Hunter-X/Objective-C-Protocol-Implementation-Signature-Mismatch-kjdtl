In Objective-C, a rare but impactful error stems from mismatched method signatures between a protocol declaration and its implementation.  Consider a protocol defining a method:

```objectivec
@protocol MyProtocol <NSObject>
- (void)myMethodWithParam:(NSString *)param;
@end
```

A class adopting this protocol might inadvertently implement it with a slightly different signature:

```objectivec
@implementation MyClass
- (void)myMethodWithParam:(NSString*)param {
    // Implementation
}
@end
```

Notice the subtle difference: the parameter's asterisk is adjacent to the type in the implementation, but spaced in the protocol. The compiler might not always catch this, leading to unexpected behavior or crashes at runtime.