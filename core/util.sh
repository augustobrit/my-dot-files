#!/bin/sh

function has() {
	[[ -x "$(command -v "$1")" ]];
}

function has_not() {
	! has "$1"
}
