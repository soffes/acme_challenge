require 'test_helper'
require 'rack/test'

class AcmeChallengeTest < Minitest::Test
  include Rack::Test::Methods

  def app
    app = Rack::Builder.new  do
      use AcmeChallenge, 'UG0AjhvK-plt_4TjdxFMHgINYdqB_At1ukwMH1ItZXo.pI79XvTWAEyw1GO5BJYjxGs5KZrrSDSum9i5JZqeYsQ'
      run lambda { |env| [200, {'Content-Type' => 'text/plain'}, ['OK']] }
    end
  end

  def test_ok
    get '/'
    assert_equal 'OK', last_response.body
  end

  def test_challenge
    get '/.well-known/acme-challenge/UG0AjhvK-plt_4TjdxFMHgINYdqB_At1ukwMH1ItZXo'
    assert_equal 'UG0AjhvK-plt_4TjdxFMHgINYdqB_At1ukwMH1ItZXo.pI79XvTWAEyw1GO5BJYjxGs5KZrrSDSum9i5JZqeYsQ', last_response.body
  end
end
