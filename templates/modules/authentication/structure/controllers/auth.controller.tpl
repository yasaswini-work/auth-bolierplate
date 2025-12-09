// Generic Authentication Controller (Tech-Agnostic)

export default {
  async register(payload) {
    // expected: payload = {{REGISTER_PAYLOAD}}
    // calls: service.createUser(payload)
  },

  async login(payload) {
    // calls: service.verifyCredentials(payload)
    // calls: service.generateToken(user)
  },

  async logout(payload) {
    // calls: service.revokeToken(payload.token)
  },

  async refresh(payload) {
    // calls: service.refreshToken(payload.refreshToken)
  }
};
