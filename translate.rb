#!/usr/bin/ruby

require 'net/http'
require 'uri'
require 'whatlanguage'
require 'json'

what_language = WhatLanguage.new(:english, :russian)

input_text = ARGV[0]
lang = what_language.language(input_text) == :english ? 'en-ru' : 'ru-en'

uri = URI('https://translate.yandex.net/api/v1.5/tr.json/translate')
query_parameters = {
  key: ENV['YANDEX_TRANSLATE_KEY'],
  text: input_text,
  lang: lang
}
uri.query = URI.encode_www_form(query_parameters)
translate_response = JSON.parse(Net::HTTP.get(uri))

response_code = translate_response['code']

case response_code
when 200
  puts translate_response['text']
when 401
  puts 'Invalid API key'
when 402
  puts 'Blocked API key'
when 403
  puts 'Exceeded the daily limit on the amount of translated text'
end
