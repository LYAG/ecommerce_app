rails generate model User email:string password_digest:string
rails generate model Buyer user:references
rails generate model Seller user:references
rails generate model Product name:string description:text price:decimal stock:integer seller:references image:text
rails generate model Order product:references buyer:references quantity:integer total_price:decimal
