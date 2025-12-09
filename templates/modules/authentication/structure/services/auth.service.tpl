// Generic Authentication Service (Tech-Agnostic)

export default {
  async createUser(data) {
    // calls repository.save(data)
  },

  async verifyCredentials(data) {
    // compare data.password using {{HASH_FUNCTION}}
    // return user or null
  },

  async generateToken(user) {
    // use strategy: {{AUTH_STRATEGY}}
    // return token + refreshToken
  },

  async refreshToken(refreshToken) {
    // validate refresh token
  },

  async revokeToken(token) {
    // blocklist or invalidate token logic
  }
};
