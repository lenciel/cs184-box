class heroku {
  $wget = 'wget -qO- http://assets.heroku.com.s3.amazonaws.com/heroku-client/heroku-client.tgz'
  $sh  = 'sh'

  exec { 'install heroku standalone toolbelt':
    command => "${wget} | ${sh}"
  }
}
