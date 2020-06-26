if Meteor.isClient
    Router.route '/groups', (->
        @layout 'layout'
        @render 'groups'
        ), name:'groups'

    Template.groups.onCreated ->
        Session.set 'username', null

    Template.groups.events
        'keyup .username': ->
