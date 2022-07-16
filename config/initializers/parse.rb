require "parse/stack"

# Set your specific Parse keys in your ENV. For all connection options, see
# https://github.com/modernistik/parse-stack#connection-setup
Parse.setup app_id: ENV["PARSE_SERVER_APPLICATION_ID"] || 'tivali',
            api_key: ENV["PARSE_SERVER_REST_API_KEY"] || '',
            master_key: ENV["PARSE_SERVER_MASTER_KEY"], # optional
            server_url: "http://localhost:1337/parse"
# optional
#    logging: false,
#      cache: Moneta.new(:File, dir: 'tmp/cache'),
#    expires: 1 # cache ttl 1 second
