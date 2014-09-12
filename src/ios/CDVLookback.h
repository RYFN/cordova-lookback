#import <Cordova/CDVPlugin.h>

@interface CDVLookback : CDVPlugin

	- (void)setupWithAppToken:(CDVInvokedUrlCommand*)command;
	- (void)shakeToRecord:(CDVInvokedUrlCommand*)command;
	- (void)enabled:(CDVInvokedUrlCommand*)command;
	- (void)paused:(CDVInvokedUrlCommand*)command;
	- (void)userIdentifier:(CDVInvokedUrlCommand*)command;
	- (void)enteredView:(CDVInvokedUrlCommand*)command;
	- (void)exitedView:(CDVInvokedUrlCommand*)command;

@end