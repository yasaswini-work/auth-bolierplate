import { login, register } from "../controllers/auth.controller.js";

export default function authRoutes(app) {
  app.post("/auth/register", register);
  app.post("/auth/login", login);
}
