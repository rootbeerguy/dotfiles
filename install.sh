#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Add Homebrew shell packages to system shells
# sudo -s
# echo /usr/local/bin/bash >> /etc/shells
# echo /usr/local/bin/zsh >> /etc/shells

# Make ZSH the default shell environment
# chsh -s /usr/local/bin/zsh

# Install Composer
# curl -sS https://getcomposer.org/installer | php
# mv composer.phar /usr/local/bin/composer

# Install global Composer packages
# /usr/local/bin/composer global require laravel/installer laravel/lumen-installer laravel/valet tightenco/jigsaw spatie/http-status-check bramus/mixed-content-scan laravel/spark-installer

# Install Laravel Valet
# $HOME/.composer/vendor/bin/valet install

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
# mkdir $HOME/Sites

# TODO: add choice to run or not
# Set macOS preferences
# We will run this last because this will reload the shell
# source .macos
