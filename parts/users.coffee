if Meteor.isClient
    Router.route '/users', (->
        @layout 'layout'
        @render 'users'
        ), name:'users'

    Template.users.onCreated ->
        Session.set 'username', null

    Template.users.helpers
        redditors: ->
            Redditors.find()
    Template.users.events
        'keyup .username': ->


if Meteor.isServer
    Meteor.publish 'redditors', ->
        Redditors.find()
