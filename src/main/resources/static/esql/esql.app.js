'use strict';

angular.module('esqlApp', [
  'ngRoute',
]).
  config(['$compileProvider', '$locationProvider', '$routeProvider', function ($compileProvider, $locationProvider, $routeProvider) {
    $compileProvider.commentDirectivesEnabled(false);
    $compileProvider.cssClassDirectivesEnabled(false);
    $locationProvider.hashPrefix('!');
    $locationProvider.html5Mode(true);
    $routeProvider.
      when('/queries', {
        template : '<query-list></query-list>'
      }).
      when('/queries/:queryId', {
        template : '<query-detail></query-detail>'
      }).
      otherwise('/queries');

  }]);