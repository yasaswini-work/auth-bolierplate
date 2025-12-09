User Signup Flow (Tech-Agnostic):

User → register(payload)
  → Controller.register(payload)
  → Service.createUser(data)
  → Model/User saved
  → Response returned
