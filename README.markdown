
# Hey Everyone!

First, thanks for considering me for the Senior Software Engineer position. I hope you find these commits usefull. It's been almost 3 years since I touched some Paperclip code and I wrote this while running a fever today. No excuses, just not on my game today. Things that are not done that I wanted to do:

* Use a rich JavaScript uploader that would report progress.
* Schedule said parsing of data files via a work queue.
* Show a nice table of the last uploads with dynamic page updates using web events, sockets or polling.
* Hooked up to Travis CI.

Most of the stuff above speaks to large data sets and a better user experience. Which is where I have been spending most of my time lately. Specifically CoffeeScript. If needed, I can demo my two Spine.JS projects and open them for code review. There is also of course my blog and github accounts.

* My Blog - http://metaskills.net/
* My Github accounts - https://github.com/metaskills & https://github.com/rails-sqlserver/


# Development Setup

This project was developed and tested on Ruby 1.9.3.p125. This should be the minimally valid Ruby version. I did not write a .rvmrc or .rbenv to the repo to communicate this.

    $ rbenv local 1.9.3-p125

The app uses a normal Rails test setup. Hoever, I am using MiniTest::Spec on the back end vs Ruby 1.9's Test::Unit compatibility layer. All tests leverage the spec style but can be written either way. Lastly, the Rails test/integration directory is not the normal integrated session that Rails offers. Instead I wanted to use a simple Capybara DSL that I so often rely on. However there are no integration tests for this one page app in my time allowance. Some info:

* https://github.com/metaskills/minitest-spec-rails
* https://github.com/jonleighton/poltergeist

Despite no intergration tests. To get up and running, bundle install and run rake test.

    $ bundle install
    $ rake test


# In Closing

Here are a few open source ruby projects besides my SQL Server adapter and/or C extensions. All my CoffeeScript/JavaScript work is closed source, but I can open access to one of my private repos if needed.

* Recnet Spine.JS Pull Request - https://github.com/maccman/spine/pull/328
* Recursive Config Hashes - https://github.com/metaskills/store_configurable
* Less Rails Engine - https://github.com/metaskills/less-rails
* Old But Modernized AR Plugin - https://github.com/metaskills/grouped_scope



