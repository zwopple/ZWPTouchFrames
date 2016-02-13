# ZWPTouchFrames

UIViews are particularly annoying to work with when having to adjust just one property of their frame.

How many times have you done something like:

```
CGRect r = view.frame;
r.origin.x += 50.0;
view.frame = r;
```

Not only is this code annoying to write it also is hard to read and maintain. Wouldn't it be awesome if we could just do something like:

```
view.frameMinX += 50.0;
```

Or how about pinning the view to the top right corner of its super view:

```
view.frameTopRight = view.superview.boundsTopRight;
```

### Frame Manipulation

These are the following properties added for frame manipulation

* `@property (nonatomic, assign) CGFloat frameMinX;`
* `@property (nonatomic, assign) CGFloat frameMidX;`
* `@property (nonatomic, assign) CGFloat frameMaxX;`
* `@property (nonatomic, assign) CGFloat frameMinY;`
* `@property (nonatomic, assign) CGFloat frameMidY;`
* `@property (nonatomic, assign) CGFloat frameMaxY;`
* `@property (nonatomic, assign) CGSize frameSize;`
* `@property (nonatomic, assign) CGFloat frameWidth;`
* `@property (nonatomic, assign) CGFloat frameHeight;`
* `@property (nonatomic, assign) CGPoint frameTopLeft;`
* `@property (nonatomic, assign) CGPoint frameTopCenter;`
* `@property (nonatomic, assign) CGPoint frameTopRight;`
* `@property (nonatomic, assign) CGPoint frameCenterLeft;`
* `@property (nonatomic, assign) CGPoint frameCenter;`
* `@property (nonatomic, assign) CGPoint frameCenterRight;`
* `@property (nonatomic, assign) CGPoint frameBottomLeft;`
* `@property (nonatomic, assign) CGPoint frameBottomCenter;`
* `@property (nonatomic, assign) CGPoint frameBottomRight;`

There are also some handy methods to also help manipulate frames:<br/><span style="font-size: 10px;">_Note any adjust methods take the current value and += the given adjustment_</span>

* `- (void)setFrameX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;`
* `- (void)adjustFrameX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;`
* `- (void)setFrameX:(CGFloat)x y:(CGFloat)y;`
* `- (void)adjustFrameX:(CGFloat)x y:(CGFloat)y;`
* `- (void)setFrameWidth:(CGFloat)width height:(CGFloat)height;`
* `- (void)adjustFrameWidth:(CGFloat)width height:(CGFloat)height;`

Also some extras to point align your frames!

* `- (void)adjustFrameToWholePointsByRounding;`
* `- (void)adjustFrameToWholePointsByFlooring;`
* `- (void)adjustFrameToWholePointsByCeiling;`


### Frame Insetting & Expanding

Insetting and expanding frames are also extremely annoying so we have some quick helpers to do that too!

* `- (void)insetFrameBy:(CGFloat)amount;`
* `- (void)insetFrameByWidth:(CGFloat)widthAmount height:(CGFloat)heightAmount;`
* `- (void)expandFrameBy:(CGFloat)amount;`
* `- (void)expandFrameByWidth:(CGFloat)widthAmount height:(CGFloat)heightAmount;`

### Sizing Frames

Autosizing is great in iOS but sometimes you only want to width or height to be allowed to adjust.

* `- (void)sizeWidthToFit;`
* `- (void)sizeHeightToFit;`

### Bounds

Dealing with the bounds is less annoying but sometimes some quick helpers make code easier and quicker but are readonly.

* `@property (nonatomic, assign, readonly) CGFloat boundsMinX;`
* `@property (nonatomic, assign, readonly) CGFloat boundsMidX;`
* `@property (nonatomic, assign, readonly) CGFloat boundsMaxX;`
* `@property (nonatomic, assign, readonly) CGFloat boundsMinY;`
* `@property (nonatomic, assign, readonly) CGFloat boundsMidY;`
* `@property (nonatomic, assign, readonly) CGFloat boundsMaxY;`
* `@property (nonatomic, assign, readonly) CGSize boundsSize;`
* `@property (nonatomic, assign, readonly) CGFloat boundsWidth;`
* `@property (nonatomic, assign, readonly) CGFloat boundsHeight;`
* `@property (nonatomic, assign, readonly) CGPoint boundsTopLeft;`
* `@property (nonatomic, assign, readonly) CGPoint boundsTopCenter;`
* `@property (nonatomic, assign, readonly) CGPoint boundsTopRight;`
* `@property (nonatomic, assign, readonly) CGPoint boundsCenterLeft;`
* `@property (nonatomic, assign, readonly) CGPoint boundsCenter;`
* `@property (nonatomic, assign, readonly) CGPoint boundsCenterRight;`
* `@property (nonatomic, assign, readonly) CGPoint boundsBottomLeft;`
* `@property (nonatomic, assign, readonly) CGPoint boundsBottomCenter;`
* `@property (nonatomic, assign, readonly) CGPoint boundsBottomRight;`

### Usage

CocoaPods available simply just add this to your Podfile!

`pod "ZWPTouchFrames"`

### Fully Tested

ZWPTouchFrames has a full SenTesting suite to ensure all the manipulators are bug free! Enjoy.

### License

That MIT license thing, also known as use it however you like.