# Test Scenarios (Tech-Agnostic)

- Register with valid payload -> should return success and userId
- Register with duplicate email -> should fail
- Login with correct credentials -> should return token
- Login with wrong password -> should fail
- Refresh token -> should generate new token
- Logout -> should invalidate active token
