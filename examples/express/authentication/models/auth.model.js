export const Users = [];

export const createUser = ({ email, password }) => {
  const user = { id: Date.now(), email, password };
  Users.push(user);
  return user;
};

export const findUserByEmail = (email) => {
  return Users.find((u) => u.email === email);
};
