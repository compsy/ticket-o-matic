### How to install

* set your projects to deploy in config.yml (see config.ymlexample for an example)
* gem install sinatra
* gem install rerun
* mkdir log
* `rerun autodeploy.rb >> log/autodeploy.log 2>&1`
* If you're using a firewall in macOS, make sure to allow Incoming Connections for the correct `ruby`.
* add `http://yourmachine.nl:4567/` as a Webhook to the GitHub project you're monitoring. The content-type should be `application/x-www-form-urlencoded`. The secret should match that in config.yml. Generate a secure secret with SecureRandom.hex(32). Make sure "Just send the push event" and "Active" are checked.
