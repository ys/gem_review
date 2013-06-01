GemReview::Application.routes.draw do
  resources :gems, path: "/", only: [:show] do
    resources :reviews, only: [:create]
  end
  mount Api::GemReview => '/gems'
end
