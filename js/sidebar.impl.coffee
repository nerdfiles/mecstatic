(($) ->
  $(->
    $( '.mobile--sidebar' ).simpleSidebar {
      settings:
        opener: '.sidebar-opener'
        wrapper: '#home_page'
      sidebar:
        align: 'left'
        width: 250
        closingLinks: 'a'
        style:
          zIndex: 100
      mask:
        style:
          backgroundColor: 'grey'
          opacity: 0.9
          filter: 'Alpha(opacity=90)'
    }
  )
) jQuery
