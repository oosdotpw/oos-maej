App = Ember.Application.create();

App.Router.map(function() {
  this.route('discovery', {path: '/'});
  this.route('steams');
  this.route('account');
  this.route('settings');
});
App.DiscoveryRoute = Ember.Route.extend({
  setupController: function(controller) {
    controller.set('title', "Discover oos.pw!");
  }
})

$(document).ready(function(){
	$("#navi").toggle();
	$(".app.title").click(function(){
		$("#navi").toggle();
	})
});