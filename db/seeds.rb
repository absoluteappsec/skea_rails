
users = [
  {
    :info => {
    email: "seth@zactly.io",
    password: "Password1"
    }
  },
  {
    :info => {
      email: "ken@zactly.io",
      password: "Password1"
    }
  }
]

users.each {|user| User.create!(user[:info]) }
