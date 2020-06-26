if Meteor.isClient
    Router.route '/users', (->
        @layout 'layout'
        @render 'users'
        ), name:'users'

    Template.users.onCreated ->
        Session.set 'username', null

    Template.users.events
        'keyup .username': ->
