#import "ZWPTouchFramesTests.h"
#import "UIView+ZWPTouchFrames.h"

@interface ZWPTouchFramesTests() {
}
@end
@implementation ZWPTouchFramesTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testFrameEdges {
	UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50.0, 50.0, 100.0, 100.0)];
	
	STAssertEquals(view.frameMinX, (CGFloat)50.0, nil);
	STAssertEquals(view.frameMidX, (CGFloat)100.0, nil);
	STAssertEquals(view.frameMaxX, (CGFloat)150.0, nil);
	STAssertEquals(view.frameMinY, (CGFloat)50.0, nil);
	STAssertEquals(view.frameMidY, (CGFloat)100.0, nil);
	STAssertEquals(view.frameMaxY, (CGFloat)150.0, nil);
	
	view.frameMinX = 25.0;
	STAssertEquals(view.frameMinX, (CGFloat)25.0, nil);
	STAssertEquals(view.frameMidX, (CGFloat)75.0, nil);
	STAssertEquals(view.frameMaxX, (CGFloat)125.0, nil);
	
	view.frameMidX = 25.0;
	STAssertEquals(view.frameMinX, (CGFloat)-25.0, nil);
	STAssertEquals(view.frameMidX, (CGFloat)25.0, nil);
	STAssertEquals(view.frameMaxX, (CGFloat)75.0, nil);
	
	view.frameMaxX = 25.0;
	STAssertEquals(view.frameMinX, (CGFloat)-75.0, nil);
	STAssertEquals(view.frameMidX, (CGFloat)-25.0, nil);
	STAssertEquals(view.frameMaxX, (CGFloat)25.0, nil);
	
	view.frameMinY = 25.0;
	STAssertEquals(view.frameMinY, (CGFloat)25.0, nil);
	STAssertEquals(view.frameMidY, (CGFloat)75.0, nil);
	STAssertEquals(view.frameMaxY, (CGFloat)125.0, nil);
	
	view.frameMidY = 25.0;
	STAssertEquals(view.frameMinY, (CGFloat)-25.0, nil);
	STAssertEquals(view.frameMidY, (CGFloat)25.0, nil);
	STAssertEquals(view.frameMaxY, (CGFloat)75.0, nil);
	
	view.frameMaxY = 25.0;
	STAssertEquals(view.frameMinY, (CGFloat)-75.0, nil);
	STAssertEquals(view.frameMidY, (CGFloat)-25.0, nil);
	STAssertEquals(view.frameMaxY, (CGFloat)25.0, nil);
	
}
- (void)testFrameDimensions {
	UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50.0, 50.0, 100.0, 100.0)];
	
	STAssertEquals(view.frameWidth, (CGFloat)100.0, nil);
	STAssertEquals(view.frameHeight, (CGFloat)100.0, nil);
	
	view.frameWidth = 25.0;
	STAssertEquals(view.frameMinX, (CGFloat)50.0, nil);
	STAssertEquals(view.frameMidX, (CGFloat)62.5, nil);
	STAssertEquals(view.frameMaxX, (CGFloat)75.0, nil);
	
	view.frameHeight = 25.0;
	STAssertEquals(view.frameMinY, (CGFloat)50.0, nil);
	STAssertEquals(view.frameMidY, (CGFloat)62.5, nil);
	STAssertEquals(view.frameMaxY, (CGFloat)75.0, nil);
}
- (void)testFrameOrigins {
	UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50.0, 50.0, 100.0, 100.0)];
	
	STAssertEquals(view.frameTopLeft, CGPointMake(50.0, 50.0), nil);
	STAssertEquals(view.frameTopCenter, CGPointMake(100.0, 50.0), nil);
	STAssertEquals(view.frameTopRight, CGPointMake(150.0, 50.0), nil);
	STAssertEquals(view.frameBottomLeft, CGPointMake(50.0, 150.0), nil);
	STAssertEquals(view.frameBottomCenter, CGPointMake(100.0, 150.0), nil);
	STAssertEquals(view.frameBottomRight, CGPointMake(150.0, 150.0), nil);
	STAssertEquals(view.frameCenterLeft, CGPointMake(50.0, 100.0), nil);
	STAssertEquals(view.frameCenter, CGPointMake(100.0, 100.0), nil);
	STAssertEquals(view.frameCenterRight, CGPointMake(150.0, 100.0), nil);
	
	view.frameTopLeft = CGPointMake(75.0, 75.0);
	STAssertEquals(view.frameTopLeft, CGPointMake(75.0, 75.0), nil);
	
	view.frameTopCenter = CGPointMake(75.0, 75.0);
	STAssertEquals(view.frameTopCenter, CGPointMake(75.0, 75.0), nil);
	
	view.frameTopRight = CGPointMake(75.0, 75.0);
	STAssertEquals(view.frameTopRight, CGPointMake(75.0, 75.0), nil);
	
	view.frameBottomLeft = CGPointMake(75.0, 75.0);
	STAssertEquals(view.frameBottomLeft, CGPointMake(75.0, 75.0), nil);
	
	view.frameBottomCenter = CGPointMake(75.0, 75.0);
	STAssertEquals(view.frameBottomCenter, CGPointMake(75.0, 75.0), nil);
	
	view.frameBottomRight = CGPointMake(75.0, 75.0);
	STAssertEquals(view.frameBottomRight, CGPointMake(75.0, 75.0), nil);
	
	view.frameCenterLeft = CGPointMake(75.0, 75.0);
	STAssertEquals(view.frameCenterLeft, CGPointMake(75.0, 75.0), nil);
	
	view.frameCenter = CGPointMake(75.0, 75.0);
	STAssertEquals(view.frameCenter, CGPointMake(75.0, 75.0), nil);
	
	view.frameCenterRight = CGPointMake(75.0, 75.0);
	STAssertEquals(view.frameCenterRight, CGPointMake(75.0, 75.0), nil);
}
- (void)testFrameAdjustments {
	UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50.0, 50.0, 100.0, 100.0)];
	
	[view setFrameX:0.0 y:0.0];
	STAssertEquals(view.frame.origin, CGPointMake(0.0, 0.0), nil);
	
	[view setFrameX:10.0 y:10.0];
	[view adjustFrameX:50.0 y:50.0];
	STAssertEquals(view.frame.origin, CGPointMake(60.0, 60.0), nil);
	
	[view setFrameWidth:100.0 height:100.0];
	STAssertEquals(view.frame.size, CGSizeMake(100.0, 100.0), nil);
	
	[view setFrameWidth:100.0 height:100.0];
	[view adjustFrameWidth:100.0 height:100.0];
	STAssertEquals(view.frame.size, CGSizeMake(200.0, 200.0), nil);
}
- (void)testFrameInsetting {
	UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50.0, 50.0, 100.0, 100.0)];
	
	[view insetFrameBy:10.0];
	STAssertEquals(view.frame, CGRectMake(60.0, 60.0, 80.0, 80.0), nil);
	
	[view insetFrameByWidth:10.0 height:20.0];
	STAssertEquals(view.frame, CGRectMake(70.0, 80.0, 60.0, 40.0), nil);
	
	view.frame = CGRectMake(0.6, 0.4, 120.4, 120.6);
	[view adjustFrameToWholePointsByRounding];
	STAssertEquals(view.frame, CGRectMake(1.0, 0.0, 120.0, 121.0), nil);
	
	view.frame = CGRectMake(0.6, 0.4, 120.4, 120.6);
	[view adjustFrameToWholePointsByFlooring];
	STAssertEquals(view.frame, CGRectMake(0.0, 0.0, 120.0, 120.0), nil);
	
	view.frame = CGRectMake(0.6, 0.4, 120.4, 120.6);
	[view adjustFrameToWholePointsByCeiling];
	STAssertEquals(view.frame, CGRectMake(1.0, 1.0, 121.0, 121.0), nil);
}

- (void)testBoundsEdges {
	UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50.0, 50.0, 100.0, 100.0)];
	
	STAssertEquals(view.boundsMinX, (CGFloat)0.0, nil);
	STAssertEquals(view.boundsMidX, (CGFloat)50.0, nil);
	STAssertEquals(view.boundsMaxX, (CGFloat)100.0, nil);
	STAssertEquals(view.boundsMinY, (CGFloat)0.0, nil);
	STAssertEquals(view.boundsMidY, (CGFloat)50.0, nil);
	STAssertEquals(view.boundsMaxY, (CGFloat)100.0, nil);
}
- (void)testBoundsDimensions {
	UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50.0, 50.0, 100.0, 100.0)];
	
	STAssertEquals(view.boundsWidth, (CGFloat)100.0, nil);
	STAssertEquals(view.boundsHeight, (CGFloat)100.0, nil);
}
- (void)testBoundsOrigins {
	UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50.0, 50.0, 100.0, 100.0)];
	
	STAssertEquals(view.boundsTopLeft, CGPointMake(0.0, 0.0), nil);
	STAssertEquals(view.boundsTopCenter, CGPointMake(50.0, 0.0), nil);
	STAssertEquals(view.boundsTopRight, CGPointMake(100.0, 0.0), nil);
	STAssertEquals(view.boundsBottomLeft, CGPointMake(0.0, 100.0), nil);
	STAssertEquals(view.boundsBottomCenter, CGPointMake(50.0, 100.0), nil);
	STAssertEquals(view.boundsBottomRight, CGPointMake(100.0, 100.0), nil);
	STAssertEquals(view.boundsCenterLeft, CGPointMake(0.0, 50.0), nil);
	STAssertEquals(view.boundsCenter, CGPointMake(50.0, 50.0), nil);
	STAssertEquals(view.boundsCenterRight, CGPointMake(100.0, 50.0), nil);
}

@end
