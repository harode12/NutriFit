import axios from "axios";

const api = axios.create({
  baseURL: "https://nutrifitserver-a8cvhqf7gge8hsg7.centralindia-01.azurewebsites.net/api", // ✅ Correct backend URL
});

api.interceptors.request.use((req) => {
  const token = localStorage.getItem("token");
  if (token) req.headers.Authorization = "Bearer " + token; // ✅ Attach JWT token if exists
  return req;
});

export default api;
