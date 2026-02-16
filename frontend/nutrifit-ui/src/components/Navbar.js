import { Link, useNavigate } from "react-router-dom";
import { useContext } from "react";
import { AuthContext } from "../context/AuthContext";

export default function Navbar() {
  const { logout } = useContext(AuthContext);
  const navigate = useNavigate();
  const user = JSON.parse(localStorage.getItem("user"));

  const handleLogout = () => {
    logout();
    navigate("/");
  };

  return (
    <nav className="navbar navbar-expand-lg navbar-dark bg-dark px-4">
      <span className="navbar-brand">NutriFit</span>

      <div className="navbar-nav me-auto">
        <Link className="nav-link" to="/dashboard">Dashboard</Link>
        <Link className="nav-link" to="/bmi">BMI</Link>
        <Link className="nav-link" to="/sleep">Sleep</Link>
        <Link className="nav-link" to="/workout">Workout</Link>
        <Link className="nav-link" to="/food">Food</Link>
        <Link className="nav-link" to="/my-plan">My Plan</Link>

        {user?.role === "ADMIN" && (
          <Link className="nav-link" to="/admin/add-plan">Add Plan</Link>
        )}
      </div>

      <div className="d-flex align-items-center text-white">
        <span className="me-3">👤 {user?.username}</span>
        <button className="btn btn-outline-light btn-sm" onClick={handleLogout}>
          Logout
        </button>
      </div>
    </nav>
  );
}

