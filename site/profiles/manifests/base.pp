class profiles::base {
  $myvar = ''

  if $myvar {
    notice('This is true.')
  }
  else {
    notice('This is false.')
  }

}
