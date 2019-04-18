#!/usr/bin/expect
set password [lindex $argv 0];
spawn firmwarepasswd -verify
expect {
        "Verifying Firmware Password" {
                send "$password\r"
                exp_continue
        }
}
set PASSWORD ""
