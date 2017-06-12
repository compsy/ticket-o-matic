#!/var/www/rvm/rubies/ruby-current/bin/ruby

require 'sinatra'
require 'yaml'
require 'json'
require 'openssl'
require 'httparty'

set :bind, 'imac.evionix.org'
set :port, 1234

configure do
  # logging is enabled by default in classic style applications,
  # so `enable :logging` is not needed
  file = File.new("./log/autodeploy.log", 'a+')
  file.sync = true
  use Rack::CommonLogger, file
end

CONFIGURATION = YAML.load_file('config.yml').freeze

post '/' do
  request.body.rewind
  payload_body = request.body.read
  verify_signature(payload_body)
  begin
    payload = JSON.parse(params[:payload])
  rescue JSON::ParserError, TypeError
    return [400, 'Payload is not valid JSON']
  end
  return [400, 'Payload is not a Hash'] unless (payload && payload.is_a?(Hash))
  return [204, 'Payload is not an issue'] unless payload.has_key?('issue') && payload['action'] == 'opened'

  issue_id = payload['issue']['id']

  url = "https://api.github.com/projects/columns/#{CONFIGURATION['inbox_column_id']}/cards"

  headers =  {
    'User-Agent' => 'Compsy-Project',
    'Authorization' => "token #{CONFIGURATION['github_token']}",
    'Accept' => 'application/vnd.github.inertia-preview+json'
  }

  body = { content_id: issue_id, content_type: 'Issue' }.to_json

  res = HTTParty.post(url, headers: headers, body: body).body
  puts res
  'Autodeploy succeeded!'
end

def verify_signature(payload_body)
  signature = 'sha1=' + OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha1'), CONFIGURATION['github_secret'], payload_body)
  return halt 401, "Signatures didn't match!" unless Rack::Utils.secure_compare(signature, request.env['HTTP_X_HUB_SIGNATURE'])
end
