$ ->
  socket = io.connect 'http://localhost:1337'

  # socket.on 'connect', -> console.log 'connected'
  
  # socket.on 'disconnect', -> console.log 'disconnected'  

  socket.on 'message', ( data ) ->


    # control message
    if data.message[0] is 176

      # CC number
      if data.message[1] is 34
        $( '.ball' ).css 'left', data.message[2]

      # CC number
      if data.message[1] is 35
        $( '.ball' ).css 'top', data.message[2]

      return

    console.log 'got message ->', data.message