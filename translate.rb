#!/usr/bin/ruby

require 'net/http'
require 'uri'

uri = URI('https://translate.yandex.net/api/v1.5/tr.json/translate')
query_parameters = {
    :key => '',
    :text => 'Test',
    :lang => 'en-ru'
}
uri.query = URI.encode_www_form(query_parameters)
puts translate_request = Net::HTTP.get(uri)
