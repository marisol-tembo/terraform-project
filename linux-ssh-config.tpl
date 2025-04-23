cat << EOE >> ~/.ssh/config

Host ${hostname}
  HostName ${hostanme}
  User ${user}
  IdentityFile ${identityfile}
EOF
