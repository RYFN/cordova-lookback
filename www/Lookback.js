var exec = require('cordova/exec');

var Lookback = {
	setupWithAppToken:function(token){
		exec(null, null, "Lookback", "setupWithAppToken", [token]);
	},
	shakeToRecord:function(shakeToRecord){
		exec(null, null, "Lookback", "shakeToRecord", [shakeToRecord]);
	},
	userIdentifier:function(identifier){
		exec(null, null, "Lookback", "userIdentifier", [identifier]);
	},
	enabled:function(enabled){
		exec(null, null, "Lookback", "enabled", [enabled]);
	},
	paused:function(paused){
		exec(null, null, "Lookback", "paused", [paused]);
	},
	enteredView:function(viewName){
		exec(null, null, "Lookback", "enteredView", [viewName]);
	},
	exitedView:function(viewName){
		exec(null, null, "Lookback", "exitedView", [viewName]);
	}

};

module.exports = Lookback;