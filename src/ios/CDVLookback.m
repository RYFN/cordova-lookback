#import "CDVLookback.h"
#import <Lookback/Lookback.h>

@implementation CDVLookback

- (void)setupWithAppToken:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* token = [command.arguments objectAtIndex:0];

    if (token != nil && [token length] > 0) {
        [Lookback_Weak setupWithAppToken:token];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)shakeToRecord:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    BOOL shakeToRecord = [[command.arguments objectAtIndex:0] boolValue];
    [Lookback_Weak lookback].shakeToRecord = shakeToRecord;
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)enabled:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    [Lookback_Weak lookback].enabled = enabled;
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)paused:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    BOOL paused = [[command.arguments objectAtIndex:0] boolValue];
    [Lookback_Weak lookback].paused = paused;
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)enteredView:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* viewName = [command.arguments objectAtIndex:0];

    if (viewName != nil && [viewName length] > 0) {
        [[Lookback_Weak lookback] enteredView:viewName];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)exitedView:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* viewName = [command.arguments objectAtIndex:0];

    if (viewName != nil && [viewName length] > 0) {
        [[Lookback_Weak lookback] exitedView:viewName];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)userIdentifier:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* identifier = [command.arguments objectAtIndex:0];

    if (identifier != nil && [identifier length] > 0) {

        if([identifier isEqualToString:@"deviceName"]){
            [Lookback_Weak lookback].userIdentifier = [[UIDevice currentDevice] name];
        } else {
            [Lookback_Weak lookback].userIdentifier = identifier;
        }

        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end