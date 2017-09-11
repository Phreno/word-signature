#!/usr/bin/env coffee
sign=require './index'
program=require 'commander'
bundle=require './package.json'

program
  .version(bundle.version)
  .option('-t, --text [text]', 'Texte à signer')
  .parse process.argv

signature=sign program.text
console.log signature

