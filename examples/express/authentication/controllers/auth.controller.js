import * as AuthService from "../services/auth.service.js";

export const register = async (req, res) => {
  const { email, password } = req.body;

  const result = await AuthService.registerUser({ email, password });
  return res.status(201).json(result);
};

export const login = async (req, res) => {
  const { email, password } = req.body;

  const result = await AuthService.loginUser({ email, password });
  return res.status(200).json(result);
};
