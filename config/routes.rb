Rails.application.routes.draw do
  get "breaks" => "breaks#index"
  patch "breaks/:id" => "breaks#update"

  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
end
