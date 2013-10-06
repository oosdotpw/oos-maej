connect = {
  uri:"http://api.oos.pw"
}
angular.module('request', ['ngResource','ngCookies']).
    factory('Request', function($resource){
      return {
      	
      }
    })
angular.module('maej', ['ngCookies']).
  config(['$routeProvider', ($routeProvider)->
	  $routeProvider.
	  	  when('/steams', {templateUrl: 'steam.html'}, controller: SteamCtrl).
	      when('/user', {templateUrl: 'user.html',   controller: UserCtrl}).
	      when('/user/:userId', {templateUrl: 'user-detail.html', controller: UserCtrl}).
	      otherwise({redirectTo: '/steams'})
])
UserCtrl= ($scope, $routeParams, $cookies, "request")-> 
  login = $cookies.myFavorite
  $scope.orderProp = 'age'
  this
SteamCtrl= ($scope, $routeParams, $cookies, "request")->
  $scope.wait = "10"
  $scope.num = 15
  this

