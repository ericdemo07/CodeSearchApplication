(function() {
	angular.module('arrowApp', [ 'ui.router', 'ui.bootstrap', ]).config(config);

	config.$inject = [ '$stateProvider', '$urlRouterProvider' ];

	function config($stateProvider, $urlRouterProvider) {
		$urlRouterProvider.otherwise("/list");
		$stateProvider.state('list', {
			url : '/list',
			controller : 'DisplayController',
			templateUrl : 'display/display.view.html',
			controllerAs : 'vm',
			params : {
				param1 : {
					value : "defaultValue"
				}
			}
		});
	}
})();