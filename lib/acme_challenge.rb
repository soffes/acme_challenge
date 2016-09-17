require 'acme_challenge/version'

class AcmeChallenge
  def initialize(app, challenge)
    self.app = app
    self.key, self.secret = challenge.split('.')
  end

  def call(env)
    path = env['PATH_INFO']
    if path == "/.well-known/acme-challenge/#{key}"
      return [200, {'Content-Type' => 'text/plain'}, ["#{key}.#{secret}"]]
    end

    app.call(env)
  end

  protected

  attr_accessor :app
  attr_accessor :key
  attr_accessor :secret
end
