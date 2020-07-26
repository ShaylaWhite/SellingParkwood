Selling Parkwood

[Houses] *join table joining buyers & users

>Name
>Cost
>Address

-belongs_to :user
-has_many :appointments
-has_many users, through :appointments 
-belongs_to :buyer


[User]

>Username
>Firstname
>Lastname
>Password_digest


-has_many :houses
-has_many :appointments 
-has_many :house_appointments, through :appointments
-has_many :buyers, through: :houses


[Appointment] (Join Table joining users and houses)

>Time

-belongs_to :user
-belongs_to :house


[Buyer]

> name

-has_many :houses
-has_many :users, through: :houses

























