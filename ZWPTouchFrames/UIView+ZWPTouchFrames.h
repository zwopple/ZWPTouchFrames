#import <UIKit/UIKit.h>

@interface UIView (ZWPTouchFrames)

#pragma mark - Frame Edges

@property (nonatomic, assign) CGFloat frameMinX;
@property (nonatomic, assign) CGFloat frameMidX;
@property (nonatomic, assign) CGFloat frameMaxX;
@property (nonatomic, assign) CGFloat frameMinY;
@property (nonatomic, assign) CGFloat frameMidY;
@property (nonatomic, assign) CGFloat frameMaxY;

#pragma mark - Frame Dimensions

@property (nonatomic, assign) CGSize frameSize;
@property (nonatomic, assign) CGFloat frameWidth;
@property (nonatomic, assign) CGFloat frameHeight;

#pragma mark - Frame Origins

@property (nonatomic, assign) CGPoint frameTopLeft;
@property (nonatomic, assign) CGPoint frameTopCenter;
@property (nonatomic, assign) CGPoint frameTopRight;
@property (nonatomic, assign) CGPoint frameBottomLeft;
@property (nonatomic, assign) CGPoint frameBottomCenter;
@property (nonatomic, assign) CGPoint frameBottomRight;
@property (nonatomic, assign) CGPoint frameCenterLeft;
@property (nonatomic, assign) CGPoint frameCenter;
@property (nonatomic, assign) CGPoint frameCenterRight;

#pragma mark - Frame Adjustments

- (void)setFrameX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;
- (void)adjustFrameX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;
- (void)setFrameX:(CGFloat)x y:(CGFloat)y;
- (void)adjustFrameX:(CGFloat)x y:(CGFloat)y;
- (void)setFrameWidth:(CGFloat)width height:(CGFloat)height;
- (void)adjustFrameWidth:(CGFloat)width height:(CGFloat)height;
- (void)adjustFrameToWholePointsByRounding;
- (void)adjustFrameToWholePointsByFlooring;
- (void)adjustFrameToWholePointsByCeiling;

#pragma mark - Frame Insetting & Expanding

- (void)insetFrameBy:(CGFloat)amount;
- (void)insetFrameByWidth:(CGFloat)widthAmount height:(CGFloat)heightAmount;
- (void)expandFrameBy:(CGFloat)amount;
- (void)expandFrameByWidth:(CGFloat)widthAmount height:(CGFloat)heightAmount;

#pragma mark - Frame Sizing

- (void)sizeWidthToFit;
- (void)sizeHeightToFit;

#pragma mark - Bounds Edges

@property (nonatomic, assign, readonly) CGFloat boundsMinX;
@property (nonatomic, assign, readonly) CGFloat boundsMidX;
@property (nonatomic, assign, readonly) CGFloat boundsMaxX;
@property (nonatomic, assign, readonly) CGFloat boundsMinY;
@property (nonatomic, assign, readonly) CGFloat boundsMidY;
@property (nonatomic, assign, readonly) CGFloat boundsMaxY;

#pragma mark - Bounds Dimensions

@property (nonatomic, assign, readonly) CGSize boundsSize;
@property (nonatomic, assign, readonly) CGFloat boundsWidth;
@property (nonatomic, assign, readonly) CGFloat boundsHeight;

#pragma mark - Bounds Origins

@property (nonatomic, assign, readonly) CGPoint boundsTopLeft;
@property (nonatomic, assign, readonly) CGPoint boundsTopCenter;
@property (nonatomic, assign, readonly) CGPoint boundsTopRight;
@property (nonatomic, assign, readonly) CGPoint boundsBottomLeft;
@property (nonatomic, assign, readonly) CGPoint boundsBottomCenter;
@property (nonatomic, assign, readonly) CGPoint boundsBottomRight;
@property (nonatomic, assign, readonly) CGPoint boundsCenterLeft;
@property (nonatomic, assign, readonly) CGPoint boundsCenter;
@property (nonatomic, assign, readonly) CGPoint boundsCenterRight;

@end
