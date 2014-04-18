#import <Foundation/Foundation.h>


%group iOSBefore7
%hook PLPhotoBrowserController

- (BOOL)shouldShowActionMenu {
	%log();
	return YES;
}
%end
%end

%group iOS7
%hook PUPhotoBrowserControllerSpec

- (BOOL)shouldShowShareItem
{
	%log();
	return YES;
}
%end
%end

%ctor {
	if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) {
        %init(iOSBefore7);
    } else {
        %init(iOS7);
    }
}