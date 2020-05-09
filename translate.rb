#!/usr/bin/ruby

require 'net/http'
require 'uri'
require 'whatlanguage'

what_language = WhatLanguage.new(:english, :russian)

input_text = ARGV[0]
lang = what_language.language(input_text) == :english ? 'en-ru' : 'ru-en'

uri = URI('https://translate.yandex.net/api/v1.5/tr.json/translate')
query_parameters = {
    :key => '',
    :text => input_text,
    :lang => lang
}
uri.query = URI.encode_www_form(query_parameters)
puts translate_request = Net::HTTP.get(uri)
