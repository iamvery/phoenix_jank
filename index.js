var Socket = require('phoenix').Socket;
var JankLib = require('jank');
var Jank = JankLib.Jank;
var PhoenixAdapter = JankLib.PhoenixAdapter;

// TODO make socket configurable
var socket = new Socket('/jank');
socket.connect();

function channelInit(topic) {
  var channel = socket.channel(topic);

  channel.join()
    .receive("ok", function(resp) { console.log("Joined \"" + topic + "\"") })
    .receive("error", function(resp) { console.log("Unable to join \"" + topic + "\"") });

  return new PhoenixAdapter(channel);
}

Jank.init({channelInit: channelInit});
