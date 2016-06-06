(function() {
	angular.module('arrowApp').factory('QueryService', QueryService);
	QueryService.$inject = [ '$http', '$location' ];

	function QueryService($http, $location) {
		var service = {};
		service.Display = Display;

		return service;

		function Display(query) {
			var request = $http({
				method : "get",
				url : "/list",
				params : {
					page : "all"
				}
			});
			return request.then(handleSuccess, handleError('Faliure'));
		}
		function handleSuccess(data) {
			product = data.data;
			console.log(product[0]);
			return product;
		}
		function handleError(error) {
			return function() {
				return 

				{
					success: false
				}
				;
			};
		}
	}
})();