if Meteor.isClient
    Router.route '/shop', (->
        @layout 'layout'
        @render 'shop'
        ), name:'shop'

    Template.shop.onCreated ->
        Session.set 'username', null

    Template.shop.events
        'keyup .username': ->
