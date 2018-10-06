
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

articles = [
  {
    :info => {
      name: "computers are hard",
      body: "no but srsly!",
      likes: 0,
      dislikes: 0
    }

  },
  {
    :info => {
      name: "Woodworking quarterly",
      body: "Ron Swanson wins again",
      likes: 0,
      dislikes: 0
    }

  }
]

users.each {|user| User.create!(user[:info]) }
articles.each {|article| Article.create!(article[:info]) }
