Template.post_item.helpers
Template.post_item.events
    'click .delete_post': ->
        if confirm 'delete'
            Docs.remove @_id
