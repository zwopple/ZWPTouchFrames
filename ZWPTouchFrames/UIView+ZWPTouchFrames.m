#import "UIView+ZWPTouchFrames.h"

@implementation UIView (ZWPTouchFrames)

#pragma mark - Edges

- (CGFloat)frameMinX {
	CGRect r = self.frame;
	return r.origin.x;
}

- (void)setFrameMinX:(CGFloat)frameMinX {
	CGRect r = self.frame;
	r.origin.x = frameMinX;
	self.frame = r;
}

- (CGFloat)frameMidX {
	CGRect r = self.frame;
	return r.origin.x + (r.size.width / 2.0);
}

- (void)setFrameMidX:(CGFloat)frameMidX {
	CGRect r = self.frame;
	r.origin.x = frameMidX - (r.size.width / 2.0);
	self.frame = r;
}

- (CGFloat)frameMaxX {
	CGRect r = self.frame;
	return r.origin.x + r.size.width;
}

- (void)setFrameMaxX:(CGFloat)frameMaxX {
	CGRect r = self.frame;
	r.origin.x = frameMaxX - r.size.width;
	self.frame = r;
}

- (CGFloat)frameMinY {
	CGRect r = self.frame;
	return r.origin.y;
}

- (void)setFrameMinY:(CGFloat)frameMinY {
	CGRect r = self.frame;
	r.origin.y = frameMinY;
	self.frame = r;
}

- (CGFloat)frameMidY {
	CGRect r = self.frame;
	return r.origin.y + (r.size.height / 2.0);
}

- (void)setFrameMidY:(CGFloat)frameMidY {
	CGRect r = self.frame;
	r.origin.y = frameMidY - (r.size.height / 2.0);
	self.frame = r;
}

- (CGFloat)frameMaxY {
	CGRect r = self.frame;
	return r.origin.y + r.size.height;
}

- (void)setFrameMaxY:(CGFloat)frameMaxY {
	CGRect r = self.frame;
	r.origin.y = frameMaxY - r.size.height;
	self.frame = r;
}

#pragma mark - Dimensions

- (CGFloat)frameWidth {
	CGRect r = self.frame;
	return r.size.width;
}

- (void)setFrameWidth:(CGFloat)frameWidth {
	CGRect r = self.frame;
	r.size.width = frameWidth;
	self.frame = r;
}

- (CGFloat)frameHeight {
	CGRect r = self.frame;
	return r.size.height;
}

- (void)setFrameHeight:(CGFloat)frameHeight {
	CGRect r = self.frame;
	r.size.height = frameHeight;
	self.frame = r;
}

#pragma mark - Origins

- (CGPoint)frameTopLeft {
	CGRect r = self.frame;
	return CGPointMake(r.origin.x, r.origin.y);
}

- (void)setFrameTopLeft:(CGPoint)frameTopLeft {
	CGRect r = self.frame;
	r.origin.x = frameTopLeft.x;
	r.origin.y = frameTopLeft.y;
	self.frame = r;
}

- (CGPoint)frameTopCenter {
	CGRect r = self.frame;
	return CGPointMake(r.origin.x + (r.size.width / 2.0), r.origin.y);
}

- (void)setFrameTopCenter:(CGPoint)frameTopCenter {
	CGRect r = self.frame;
	r.origin.x = frameTopCenter.x - (r.size.width / 2.0);
	r.origin.y = frameTopCenter.y;
	self.frame = r;
}

- (CGPoint)frameTopRight {
	CGRect r = self.frame;
	return CGPointMake(r.origin.x + r.size.width, r.origin.y);
}

- (void)setFrameTopRight:(CGPoint)frameTopRight {
	CGRect r = self.frame;
	r.origin.x = frameTopRight.x - r.size.width;
	r.origin.y = frameTopRight.y;
	self.frame = r;
}

- (CGPoint)frameBottomLeft {
	CGRect r = self.frame;
	return CGPointMake(r.origin.x, r.origin.y + r.size.height);
}

- (void)setFrameBottomLeft:(CGPoint)frameBottomLeft {
	CGRect r = self.frame;
	r.origin.x = frameBottomLeft.x;
	r.origin.y = frameBottomLeft.y - r.size.height;
	self.frame = r;
}

- (CGPoint)frameBottomCenter {
	CGRect r = self.frame;
	return CGPointMake(r.origin.x + (r.size.width / 2.0), r.origin.y + r.size.height);
}

- (void)setFrameBottomCenter:(CGPoint)frameBottomCenter {
	CGRect r = self.frame;
	r.origin.x = frameBottomCenter.x - (r.size.width / 2.0);
	r.origin.y = frameBottomCenter.y - r.size.height;
	self.frame = r;
}

- (CGPoint)frameBottomRight {
	CGRect r = self.frame;
	return CGPointMake(r.origin.x + r.size.width, r.origin.y + r.size.height);
}

- (void)setFrameBottomRight:(CGPoint)frameBottomRight {
	CGRect r = self.frame;
	r.origin.x = frameBottomRight.x - r.size.width;
	r.origin.y = frameBottomRight.y - r.size.height;
	self.frame = r;
}

- (CGPoint)frameCenterLeft {
	CGRect r = self.frame;
	return CGPointMake(r.origin.x, r.origin.y + (r.size.height / 2.0));
}

- (void)setFrameCenterLeft:(CGPoint)frameCenterLeft {
	CGRect r = self.frame;
	r.origin.x = frameCenterLeft.x;
	r.origin.y = frameCenterLeft.y - (r.size.height / 2.0);
	self.frame = r;
}

- (CGPoint)frameCenter {
	CGRect r = self.frame;
	return CGPointMake(r.origin.x + (r.size.width / 2.0), r.origin.y + (r.size.height / 2.0));
}

- (void)setFrameCenter:(CGPoint)frameCenter {
	CGRect r = self.frame;
	r.origin.x = frameCenter.x - (r.size.width / 2.0);
	r.origin.y = frameCenter.y - (r.size.height / 2.0);
	self.frame = r;
}

- (CGPoint)frameCenterRight {
	CGRect r = self.frame;
	return CGPointMake(r.origin.x + r.size.width, r.origin.y + (r.size.height / 2.0));
}

- (void)setFrameCenterRight:(CGPoint)frameCenterRight {
	CGRect r = self.frame;
	r.origin.x = frameCenterRight.x - r.size.width;
	r.origin.y = frameCenterRight.y - (r.size.height / 2.0);
	self.frame = r;
}


#pragma mark - Absolutes & Adjustments

- (void)setFrameX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height {
	CGRect r = self.frame;
	r.origin.x = x;
	r.origin.y = y;
	r.size.width = width;
	r.size.height = height;
	self.frame = r;
}

- (void)adjustFrameX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height {
	CGRect r = self.frame;
	r.origin.x += x;
	r.origin.y += y;
	r.size.width += width;
	r.size.height += height;
	self.frame = r;
}

- (void)setFrameX:(CGFloat)x y:(CGFloat)y {
	CGRect r = self.frame;
	r.origin.x = x;
	r.origin.y = y;
	self.frame = r;
}

- (void)adjustFrameX:(CGFloat)x y:(CGFloat)y {
	CGRect r = self.frame;
	r.origin.x += x;
	r.origin.y += y;
	self.frame = r;
}

- (void)setFrameWidth:(CGFloat)width height:(CGFloat)height {
	CGRect r = self.frame;
	r.size.width = width;
	r.size.height = height;
	self.frame = r;
}

- (void)adjustFrameWidth:(CGFloat)width height:(CGFloat)height {
	CGRect r = self.frame;
	r.size.width += width;
	r.size.height += height;
	self.frame = r;
}

- (void)adjustFrameToWholePointsByRounding {
	CGRect r = self.frame;
	r.origin.x = roundf(r.origin.x);
	r.origin.y = roundf(r.origin.y);
	r.size.width = roundf(r.size.width);
	r.size.height = roundf(r.size.height);
	self.frame = r;
}

- (void)adjustFrameToWholePointsByFlooring {
	CGRect r = self.frame;
	r.origin.x = floorf(r.origin.x);
	r.origin.y = floorf(r.origin.y);
	r.size.width = floorf(r.size.width);
	r.size.height = floorf(r.size.height);
	self.frame = r;
}

- (void)adjustFrameToWholePointsByCeiling {
	CGRect r = self.frame;
	r.origin.x = ceilf(r.origin.x);
	r.origin.y = ceilf(r.origin.y);
	r.size.width = ceilf(r.size.width);
	r.size.height = ceilf(r.size.height);
	self.frame = r;
}

#pragma mark - Insetting

- (void)insetFrameBy:(CGFloat)amount {
	CGRect r = self.frame;
	r.origin.x += amount;
	r.origin.y += amount;
	r.size.width -= amount * 2.0;
	r.size.height -= amount * 2.0;
	self.frame = r;
}

- (void)insetFrameByWidth:(CGFloat)widthAmount height:(CGFloat)heightAmount {
	CGRect r = self.frame;
	r.origin.x += widthAmount;
	r.origin.y += heightAmount;
	r.size.width -= widthAmount * 2.0;
	r.size.height -= heightAmount * 2.0;
	self.frame = r;
}

- (void)expandFrameBy:(CGFloat)amount {
	[self insetFrameBy:-amount];
}

- (void)expandFrameByWidth:(CGFloat)widthAmount height:(CGFloat)heightAmount {
	[self insetFrameByWidth:-widthAmount height:-heightAmount];
}

#pragma mark - Sizing

- (void)sizeWidthToFit {
	CGRect r = self.frame;
	CGSize s = [self sizeThatFits:CGSizeMake(CGFLOAT_MAX, r.size.height)];
	r.size.width = s.width;
	self.frame = r;
}

- (void)sizeHeightToFit {
	CGRect r = self.frame;
	CGSize s = [self sizeThatFits:CGSizeMake(r.size.width, CGFLOAT_MAX)];
	r.size.height = s.height;
	self.frame = r;
}

#pragma mark - Bounds Edges

- (CGFloat)boundsMinX {
	CGRect r = self.bounds;
	return r.origin.x;
}

- (CGFloat)boundsMidX {
	CGRect r = self.bounds;
	return r.origin.x + (r.size.width / 2.0);
}

- (CGFloat)boundsMaxX {
	CGRect r = self.bounds;
	return r.origin.x + r.size.width;
}

- (CGFloat)boundsMinY {
	CGRect r = self.bounds;
	return r.origin.y;
}

- (CGFloat)boundsMidY {
	CGRect r = self.bounds;
	return r.origin.y + (r.size.height / 2.0);
}

- (CGFloat)boundsMaxY {
	CGRect r = self.bounds;
	return r.origin.y + r.size.height;
}

#pragma mark - Bounds Dimensions

- (CGFloat)boundsWidth {
	CGRect r = self.bounds;
	return r.size.width;
}

- (CGFloat)boundsHeight {
	CGRect r = self.bounds;
	return r.size.height;
}

#pragma mark - Bounds Origins

- (CGPoint)boundsTopLeft {
	CGRect r = self.bounds;
	return CGPointMake(r.origin.x, r.origin.y);
}

- (CGPoint)boundsTopCenter {
	CGRect r = self.bounds;
	return CGPointMake(r.origin.x + (r.size.width / 2.0), r.origin.y);
}

- (CGPoint)boundsTopRight {
	CGRect r = self.bounds;
	return CGPointMake(r.origin.x + r.size.width, r.origin.y);
}

- (CGPoint)boundsBottomLeft {
	CGRect r = self.bounds;
	return CGPointMake(r.origin.x, r.size.height);
}

- (CGPoint)boundsBottomCenter {
	CGRect r = self.bounds;
	return CGPointMake(r.origin.x + (r.size.width / 2.0), r.origin.y + r.size.height);
}

- (CGPoint)boundsBottomRight {
	CGRect r = self.bounds;
	return CGPointMake(r.origin.x + r.size.width, r.origin.y + r.size.height);
}

- (CGPoint)boundsCenterLeft {
	CGRect r = self.bounds;
	return CGPointMake(r.origin.x, r.origin.y + (r.size.height / 2.0));
}

- (CGPoint)boundsCenter {
	CGRect r = self.bounds;
	return CGPointMake(r.origin.x + (r.size.width / 2.0), r.origin.y + (r.size.height / 2.0));
}

- (CGPoint)boundsCenterRight {
	CGRect r = self.bounds;
	return CGPointMake(r.origin.x + r.size.width, r.origin.y + (r.size.height / 2.0));
}

@end