#import <Foundation/Foundation.h>


%group BeforeiOS7
%hook PLPhotoBrowserController

- (BOOL)shouldShowActionMenu {
	return YES;
}
%end
%end

%group iOS7
%hook PUPhotoBrowserControllerSpec

- (BOOL)shouldShowShareItem {
	return YES;
}
%end
%end

%ctor {
	if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) {
        %init(BeforeiOS7);
    } else {
        %init(iOS7);
    }
}