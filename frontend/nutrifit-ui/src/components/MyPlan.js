import { useEffect, useState } from "react";
import api from "../api/api";

export default function MyPlan() {
  const [plan, setPlan] = useState(null);

  useEffect(() => {
    api.get("/plans/recommended")
      .then(res => setPlan(res.data))
      .catch(() => setPlan(null));
  }, []);

  if (!plan) return <p>No plan available</p>;

  return (
    <>
      <h2>My Recommended Plan</h2>
      <p><b>BMI:</b> {plan.bmi}</p>

      <h4>🥗 Diet Plan</h4>
      <p>{plan.dietPlan}</p>

      <h4>🏋️ Workout Plan</h4>
      <p>{plan.workoutPlan}</p>
    </>
  );
}
