(function() {
	angular.module('arrowApp').controller('DisplayController',
			DisplayController).filter('startFrom', function() {
		return function(input, start) {
			start = +start; // parse to int
			return input.slice(start);
		}
	});
	DisplayController.$inject = [ '$location', 'QueryService', '$scope',
			'$stateParams', '$state' ];

	function DisplayController($location, QueryService, $scope, $stateParams,
			$state) {
		var vm = this;
		vm.display = display;
		vm.displayProduct = displayProduct;

		var product = new Array();
		var productName;
		var productType;
		var keyWord = $stateParams.param1;
		console.log(keyWord);
		$scope.currentPage = 0;
		$scope.pageSize = 10;
		$scope.data = [];
		$scope.numberOfPages = function() {
			return Math.ceil($scope.data.length / $scope.pageSize);
		}
		QueryService.Display(keyWord).then(function(response) {
			product = response;
			if (product.length > 1) {
				$scope.products = product;
			} else {
				vm.dataLoading = false;
			}
		});
		// if required to be called from html
		function display() {
			vm.dataLoading = true;
			QueryService.Display().then(function(response, $routeParams) {
				product = response;
				if (product.length > 1) {
					$scope.products = product;
				} else {
					vm.dataLoading = false;
				}
			});
		}
		var url;
		function displayProduct(productClicked) {
			productType = productClicked.productType;
			productName = productClicked.productName;
			console.log("Product Id : " + productName);
			console.log("Product Id : " + product.price);
			vm.dataLoading = true;
			$state.go('displayProduct', {
				productType : productType,
				productName : productName
			});
		}
	}

})();
