Cordova Lookback Plugin
=======================

Unofficial Cordova plugin for http://lookback.io (v0.6.4)

Methods will be accessable on the window.Lookback object.

Utilizes Lookback HD - **NOT** suitable for deployment to app store, use for testing only.

Install
-------

Install with `cordova plugin add https://github.com/RYFN/cordova-lookback`

Currently supported functions
-----------------------------

Most of the functionality of the [Lookback class](https://s3-eu-west-1.amazonaws.com/lookback-public/docs/ios/0.6.4/Lookback_h/Classes/Lookback/index.html#//apple_ref/occ/cl/Lookback) has been implimented.

### setupWithAppToken
call this first, once, and after device ready.
### shakeToRecord
true|false
### userIdentifier
Some unique per-device identifier, or set to `deviceName` to use the currentDevice name as assigned by iOS. ([[UIDevice currentDevice] name]);
### paused
true|false
### enteredView
pass in a view name
### exitedView
pass in a view name

Example
-------

    document.addEventListener('deviceready', function(){
            window.Lookback.setupWithAppToken('your-app-token');
            window.Lookback.shakeToRecord(true);
            window.Lookback.userIdentifier('some-id-here');
            // or 
            //window.Lookback.userIdentifier('deviceName');
        }, false);

or...

    document.addEventListener('deviceready', function(){
        window.Lookback.setupWithAppToken('your-app-token');
        window.Lookback.shakeToRecord(false);
        window.Lookback.userIdentifier('some-id-here');
        
        window.Lookback.enteredView('my view name');
    }, false);

License
-------

Use of lookback.io Framework subject to terms available on http://lookback.io

