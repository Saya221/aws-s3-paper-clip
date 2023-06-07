# README

- Description

  - An example API app
  - Ruby version 3.2.2
  - Rails 7

- Starting rails app

  - cp config/application_example.yml config/application.yml
  - bundle install
  - rake migrate_image:from_paperclip_to_active_storage

- Code rules
  Running before push:
  - brakeman (for normal injections)
  - rubocop -A (for coding style)
