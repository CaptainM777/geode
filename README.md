# Geode V2: A (Modified) Clunky Modular Bot Framework for Discordrb With a Database

This fork is a modification of [Geode](https://github.com/hecksalmonids/geode) for my own personal use. Feel free to use it for your own bot projects if you want, however. 

Changes I made:
* Moved all configuration files to `config_files/` and added a readme there
* Made changes to the `config.yml` file:
  * Eliminated optional fields that I had no interest in using
  * Restructured the commented field descriptions
* Made changes to `Rakefile`:
  * `.git` and `.gitignore` will no longer be deleted
  * A `bots.json` file will be created in the `config_files/` upon running `rake init`
* Removed a line of code from `geode/templates/crystal_generate_template.erb` that included models for each generated crystal

## Instructions
1. Clone this repo and run `rake init` to initialize it
2. Read through the readme in the `config_files/` directory so that you can properly configure the bot
3. Fill out `config_files/bots.json` and `config_files/config.yml`
4. Run `thor geode:start` (or `thor geode -s` for short) on the command line. It will automatically load all crystals present in the `app/main` directory. To run crystals present in the `app/dev` directory, run `thor geode:start -d` for dev crystals, `thor geode:start -a` to run all crystals, and `thor geode:start --load-only=one two three` to run only the specified crystals.

## Other
