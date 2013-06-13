Rails.application.config.middleware.use OmniAuth::Builder do
    provider :developer unless Rails.env.production?
    provider :github, Env.github_client_id, Env.github_client_secret
end
