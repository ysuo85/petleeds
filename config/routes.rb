Rails.application.routes.draw do

  get 'species/create'

  get 'species/edit'

  get 'species/destroy'

  get 'species/read'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  get 'sessions/new'
end
