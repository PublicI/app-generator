#!/usr/bin/env expect
set timeout 360

spawn yarn vue init . test

# This happens because of
# https://github.com/vuejs/vue-cli/issues/291
expect "Project name" { send "\n" }
expect "Project description" { send "\n" }
expect "Author" { send "\n" }
expect "Domain" { send "\n" }
expect "vue-cli · Generated" { send "\n" }
