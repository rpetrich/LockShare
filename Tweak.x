#import <Foundation/Foundation.h>

%hook PUPhotoBrowserControllerSpec

- (BOOL)shouldShowShareItem
{
	%log();
	return YES;
}

%end
