Rails.application.routes.draw do
  resources :resumes
  get 'resumes/index'
  get 'resumes/new'
  get 'resumes/create'
  get 'resumes/destroy'
  root 'resumes#home'
  get 'about'  => 'resumes#about'
  get 'demo' => 'resumes#demo'
  get 'job' => 'resumes#job'
  post 'job' => 'resumes#job'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
