#import <Cordova/CDVPlugin.h>

@interface CDVLookback : CDVPlugin

	- (void)setupWithAppToken:(CDVInvokedUrlCommand*)command;
	- (void)shakeToRecord:(CDVInvokedUrlCommand*)command;
	- (void)userIdentifier:(CDVInvokedUrlCommand*)command;

@end