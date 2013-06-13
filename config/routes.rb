GemReview::Application.routes.draw do
  resources :gems, path: '/', only: [:show] do
    resources :reviews, only: [:create]
  end

  get 'auth/github/callback' => 'auth/callbacks#show'

  constraints subdomain: 'api' do
    mount GemReviewApi => '/'
  end
end
