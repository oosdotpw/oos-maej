window.App = Ember.Application.create()

window.App.Router.map ->
  this.route('discovery', {path: '/'})
  this.route('steams')
  this.route('account')
  this.route('settings')

window.App.DiscoveryRoute = Ember.Route.extend({
  setupController: (controller) -> 
    controller.set('title', "Discover oos.pw!")
})

$(document).ready(() ->
	$("#navi").toggle()
	$(".app.title").click(() ->
		$("#navi").toggle()
	)
)