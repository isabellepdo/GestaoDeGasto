Rails.application.routes.draw do
	root  'ano_importado_csvs#index'
	
	resources :fornecedors
	resources :despesas
	resources :parlamentars
	

	resources :ano_importado_csvs do
		get 'processar', on: :member
	end
	# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

	# Defines the root path route ("/")
	# root "articles#index"
end
