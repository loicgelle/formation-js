angular.module 'todo-list', []
.controller 'TodoListController', ($scope, $http) ->
    $scope.title = 'Ma todo list'
    $http.get('todolist.json').success (todolist) ->
        $scope.todolist = todolist
    $scope.remove = (taskToRemove) ->
        $scope.todolist.splice($scope.todolist.indexOf(taskToRemove), 1)
        return
    $scope.add = ->
        $scope.todolist.push
            task: $scope.formtask,
            priority: $scope.formpriority,
            checked: $scope.formdone
        $scope.formtask = ''
        $scope.formpriority = 0
        $scope.formdone = false
        return
    return
