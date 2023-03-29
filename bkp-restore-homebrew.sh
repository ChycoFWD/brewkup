#!/bin/bash

trap ctrl_c INT
function ctrl_c() {
echo "** Trapped CTRL-C"
exit 1
}

brew_command=/usr/local/bin/brew
brew_cask_command="$brew_command cask"
failed_items=""
function install_package() {
echo EXECUTING: brew install $1 $2
$brew_command install $1 $2
[ $? -ne 0 ] && $failed_items="$failed_items $1"  # package failed to install.
}
function install_cask_package() {
echo EXECUTING: brew cask install $1
$brew_cask_command install $1
[ $? -ne 0 ] && $failed_items="$failed_items $1"  # package failed to install.
}
/usr/local/bin/brew tap caskroom/cask
/usr/local/bin/brew tap caskroom/versions
/usr/local/bin/brew tap ethereum/ethereum
/usr/local/bin/brew tap homebrew/core
/usr/local/bin/brew tap homebrew/dupes
/usr/local/bin/brew tap homebrew/fuse
/usr/local/bin/brew tap homebrew/science
/usr/local/bin/brew tap homebrew/services
/usr/local/bin/brew tap homebrew/versions
install_package aircrack-ng ''
install_package autoconf ''
install_package automake ''
install_package avrdude ''
install_package awscli ''
install_package boost ''
install_package c-ares ''
install_package cask ''
install_package cmake ''
install_package coreutils ''
install_package diff-so-fancy ''
install_package dirmngr ''
install_package docker ''
install_package docker-compose ''
install_package docker-machine ''
install_package e2fsprogs ''
install_package eigen ''
install_package elixir ''
install_package emacs ''
install_package encfs ''
install_package erlang ''
install_package ethereum ''
install_package ext2fuse ''
install_package ffmpeg ''
install_package fig ''
install_package freetype ''
install_package gdbm ''
install_package gettext ''
install_package gifsicle ''
install_package git ''
install_package gmp ''
install_package gnu-tar ''
install_package gnupg2 ''
install_package go ''
install_package gpg-agent ''
install_package gpm ''
install_package grep ''
install_package ilmbase ''
install_package imagemagick ''
install_package intltool ''
install_package ipfs ''
install_package jpeg ''
install_package jq ''
install_package keybase ''
install_package lame ''
install_package leptonica ''
install_package libassuan ''
install_package libelf ''
install_package libevent ''
install_package libftdi0 ''
install_package libgcrypt ''
install_package libgpg-error ''
install_package libksba ''
install_package libpng ''
install_package libtiff ''
install_package libtool ''
install_package libusb ''
install_package libusb-compat ''
install_package libvo-aacenc ''
install_package libwebsockets ''
install_package libyaml ''
install_package mackup ''
install_package makedepend ''
install_package mercurial ''
install_package mongodb ''
install_package mtr ''
install_package node ''
install_package ntfs-3g ''
install_package oniguruma ''
install_package openexr ''
install_package openssl ''
install_package pcre ''
install_package phantomjs ''
install_package pinentry ''
install_package pkg-config ''
install_package pngquant ''
install_package postgresql ''
install_package prettyping ''
install_package pth ''
install_package pup ''
install_package pv ''
install_package pypy ''
install_package python ''
install_package python3 ''
install_package qt ''
install_package rbenv ''
install_package readline ''
install_package reattach-to-user-namespace ''
install_package redis ''
install_package rlog ''
install_package ruby-build ''
install_package sqlite ''
install_package syncthing ''
install_package tbb ''
install_package tmux ''
install_package unixodbc ''
install_package vim '  --override-system-vi
  --override-system-vi'
install_package watch ''
install_package wget ''
install_package wxmac ''
install_package x264 ''
install_package xvid ''
install_package xz ''
install_package youtube-dl ''
install_cask_package alfred
install_cask_package atom
install_cask_package bartender
install_cask_package bitbar
install_cask_package brave
install_cask_package dayone-cli
install_cask_package handbrake
install_cask_package hazel
install_cask_package heroku-toolbelt
install_cask_package istat-menus
install_cask_package iterm2-beta
install_cask_package java
install_cask_package kaleidoscope
install_cask_package kicad-library (!)
install_cask_package kicad-nightly
install_cask_package launchcontrol
install_cask_package mono-mdk
install_cask_package osxfuse
install_cask_package virtualbox
install_cask_package wireshark
install_cask_package yujitach-menumeters
[ ! -z $failed_items ] && echo The following items were failed to install: && echo $failed_items
