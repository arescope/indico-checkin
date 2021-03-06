#!/bin/bash
textReset=$(tput sgr0)
textGreen=$(tput setaf 2)
message_info () {
  echo "${textGreen}[CheckIn mobile]${textReset} $1"
}

message_info "Creating necessary directories..."
mkdir plugins
mkdir platforms

message_info "Adding plugins..."
# If using cordova, change to: cordova plugin add
phonegap local plugin add org.apache.cordova.splashscreen
phonegap local plugin add org.apache.cordova.inappbrowser
phonegap local plugin add org.apache.cordova.dialogs
phonegap local plugin add org.apache.cordova.network-information
phonegap local plugin add https://github.com/jonathannaguin/BarcodeScanner.git
