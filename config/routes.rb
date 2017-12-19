Rails.application.routes.draw do
  get 'survey/agree'
  get 'survey/index'
  get 'survey/finish'
  get 'survey/admin'
  get 'survey/exit'
  root 'survey#agree'

  post 'survey/survey' => 'survey#survey_create'
  post 'survey/finish' => 'survey#finish_create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
