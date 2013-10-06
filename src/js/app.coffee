angular.module('maej', []).
  config(['$routeProvider', ($routeProvider)->
	  $routeProvider.
	  	  when('/steams', {templateUrl: 'steam.html'}, controller: SteamCtrl).
	      when('/user', {templateUrl: 'user.html',   controller: UserCtrl}).
	      when('/user/:userId', {templateUrl: 'user-detail.html', controller: UserCtrl}).
	      otherwise({redirectTo: '/steams'})
])
UserCtrl= ($scope, $routeParams)-> 
  $scope.orderProp = 'age'


SteamCtrl= ($scope, $routeParams)->
  $scope.wait = "10"
  $scope.num = 15
