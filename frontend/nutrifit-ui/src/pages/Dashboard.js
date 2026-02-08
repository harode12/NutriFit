import { Link, Outlet, useNavigate, useLocation } from "react-router-dom";
import { useEffect } from "react";

export default function Dashboard() {
  const navigate = useNavigate();
  const location = useLocation();

  useEffect(() => {
    const token = localStorage.getItem("token");

    if (!token) {
      navigate("/login", { replace: true });
    }
  }, [navigate]);

  return (
    <div className="container mt-4">

      {/* ===== Header Card ===== */}
      <div className="card shadow-sm border-0 mb-4">
        <div className="card-body text-center bg-dark text-white rounded">
          <h3 className="fw-bold mb-1">🏋️ NutriFit User Dashboard</h3>
          <p className="mb-0">
            Track BMI • Health • Workouts • Diet • Progress
          </p>
        </div>
      </div>

      {/* ===== Navigation Tabs ===== */}
      <div className="card shadow-sm border-0 mb-4">
        <div className="card-body p-2">
          <div className="d-flex justify-content-center flex-wrap gap-2">

            <Link
              to="bmi"
              className={`btn ${
                location.pathname.includes("/dashboard/bmi")
                  ? "btn-primary"
                  : "btn-outline-primary"
              } fw-semibold`}
            >
              📊 BMI
            </Link>

            <Link
              to="health"
              className={`btn ${
                location.pathname.includes("/dashboard/health")
                  ? "btn-success"
                  : "btn-outline-success"
              } fw-semibold`}
            >
              ❤️ Health
            </Link>

            <Link
              to="workout"
              className={`btn ${
                location.pathname.includes("/dashboard/workout")
                  ? "btn-warning"
                  : "btn-outline-warning"
              } fw-semibold`}
            >
              💪 Workout
            </Link>

            <Link
              to="diet"
              className={`btn ${
                location.pathname.includes("/dashboard/diet")
                  ? "btn-danger"
                  : "btn-outline-danger"
              } fw-semibold`}
            >
              🥗 Diet
            </Link>

            {/* ✅ ADDED */}
            <Link
              to="goals"
              className={`btn ${
                location.pathname.includes("/dashboard/goals")
                  ? "btn-info"
                  : "btn-outline-info"
              } fw-semibold`}
            >
              🎯 Goals
            </Link>

            {/* ✅ ADDED */}
            <Link
              to="progress"
              className={`btn ${
                location.pathname.includes("/dashboard/progress")
                  ? "btn-secondary"
                  : "btn-outline-secondary"
              } fw-semibold`}
            >
              📈 Progress
            </Link>

          </div>
        </div>
      </div>

      {/* ===== Module Content Area ===== */}
      <div className="card shadow-sm border-0">
        <div className="card-body">
          <Outlet />
        </div>
      </div>

    </div>
  );
}
