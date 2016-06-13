angular.module 'todo-list', []
.controller 'TodoListController', ($scope, $http) ->
  $scope.title = 'Ma todo list'
  $http.get('todolist.json').success ($response) ->
    $scope.todolist = $response
  
