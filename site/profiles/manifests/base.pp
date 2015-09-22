class profiles::base {
  $myvar = ''

  if $myvar {
    notify { 'This is true': }
  }
  else {
    notify { 'This is false': }
  }

}
