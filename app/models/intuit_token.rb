class IntuitToken < ConsumerToken
  INTUIT_SETTINGS={
  :request_token_path => "https://oauth.intuit.com/oauth/v1/get_request_token",
  :access_token_path => "https://oauth.intuit.com/oauth/v1/get_access_token",
  :authorize_path => "https://appcenter.intuit.com/Connect/Begin"
  }

  def self.consumer(options={})
  @consumer ||= OAuth::Consumer.new(credentials[:key], credentials[:secret], INTUIT_SETTINGS.merge(options))
  end
end
