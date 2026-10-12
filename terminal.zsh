# Terminal integration: kitty + herdr

# Option+arrows / Option+Delete word editing (kitty sends these codes; also inside herdr)
bindkey $'\e[1;3D' backward-word
bindkey $'\e[1;3C' forward-word
bindkey $'\e[3;3~' kill-word

# Mark this kitty window as running herdr, so kitty's Cmd shortcuts drive herdr (see kitty/kitty.conf)
herdr() {
  printf '\e]1337;SetUserVar=in_herdr=MQ==\a'
  command herdr "$@"
  local rc=$?
  printf '\e]1337;SetUserVar=in_herdr\a'
  return $rc
}
