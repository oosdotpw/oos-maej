App = Ember.Application.create();

App.Router.map(function() {
  this.route('discovery', {path: '/'});
  this.route('steams');
  this.route('account');
  this.route('settings');
});
