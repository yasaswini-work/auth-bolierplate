import { createUser, findUserByEmail } from "../models/auth.model.js";
import { validateAuthDTO } from "../dtos/auth.dto.js";
import jwt from "jsonwebtoken";
import authConfig from "../config/auth.config.js";

export const registerUser = ({ email, password }) => {
  const validation = validateAuthDTO({ email, password });
  if (!validation.valid) return validation;

  const existing = findUserByEmail(email);
  if (existing) return { message: "User already exists" };

  const user = createUser({ email, password });
  return { message: "User registered", user };
};

export const loginUser = ({ email, password }) => {
  const user = findUserByEmail(email);

  if (!user || user.password !== password) {
    return { message: "Invalid credentials" };
  }

  const token = jwt.sign({ id: user.id }, authConfig.tokenSecret, {
    expiresIn: authConfig.tokenExpiry,
  });

  return { message: "Login successful", token };
};
