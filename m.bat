@echo off
start /wait cmd /C "rake db:migrate"
start /wait cmd /C "rake db:migrate RAILS_ENV=test"
