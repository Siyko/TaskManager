App.tasks = App.cable.subscriptions.create("TasksChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    alert(data)
    console.log(data);
    return $('.tasks').append(
      '<tr class="task">\
        <td class="name">' + data.task.name + '</td>\
        <td class="description">' + data.task.description + '</td>\
        <td>\
          <span><a class="btn btn-primary" href="/tasks/' + data.task.id + '">Show</a></span>\
          <span><a class="btn btn-warning" href="/tasks/' + data.task.id + '/edit">Edit</a></span>\
          <span><a data-confirm="Are you sure?" class="btn btn-danger" rel="nofollow" data-method="delete" href="/tasks/' + data.task.id + '">Destroy</a></span>\
        </td>\
      </tr>'
    )
    // Called when there's incoming data on the websocket for this channel
  }
});
