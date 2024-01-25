Model: Company (that maps to db table companies) ---Models are singular, in db they are plural
- id: integer (AutoIncrementing PK)
- name: string
- created_at: timestamp
- updated_at: timestamp

Model: Beer (maps to db table beers)
- id: integer (AutoIncrementing PK)
- name: string (varchar in sql)
- price: decimal
- description: text (text in sql)
- created_at: timestamp
- updated_at: timestamp

Routes (uses Http verbs)
GET     /companies          => companies#index (COLLECTION ROUTE - LOAD ALL THE COMPANIES)
GET     /companies/:id      => companies#show e.g /companies/2 (Member route)

Controller: CompaniesController
-action: index
-action: show

Views
- index   /app/views/companies/index.html.erb
- show    /app/views/companies/show.html.erb ---html with ruby code

-rails s to run browser port
-rails c -- to run db console
-rails g model Company name:string
-rails db:migrate -migrate database
-rails g controller companies index show
-routes url rails/info/routes