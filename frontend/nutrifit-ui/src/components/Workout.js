import { useState } from "react";
import api from "../api/api";

export default function Workout() {
  const [form, setForm] = useState({
    type: "",
    duration: "",
    caloriesBurnt: "",
    workoutDate: "",
    workoutTime: ""
  });

  const submit = async () => {
    if (
      !form.type ||
      !form.duration ||
      !form.caloriesBurnt ||
      !form.workoutDate
    ) {
      alert("All fields are required");
      return;
    }

    try {
      await api.post("/workouts/add", {
        type: form.type,
        duration: Number(form.duration),
        caloriesBurnt: Number(form.caloriesBurnt),
        workoutDate: form.workoutDate,
        workoutTime: form.workoutTime
      });

      alert("Workout added successfully");

      // reset form
      setForm({
        type: "",
        duration: "",
        caloriesBurnt: "",
        workoutDate: "",
        workoutTime: ""
      });
    } catch {
      alert("Error adding workout");
    }
  };

  return (
    <div className="container mt-5" style={{ maxWidth: "500px" }}>
      <div className="card shadow p-4">
        <h3 className="text-center mb-4">🏋️ Add Workout</h3>

        {/* Workout Type */}
        <input
          className="form-control mb-3"
          placeholder="Workout Type (e.g. Running)"
          value={form.type}
          onChange={e => setForm({ ...form, type: e.target.value })}
        />

        {/* Duration */}
        <input
          className="form-control mb-3"
          type="number"
          placeholder="Duration (minutes)"
          value={form.duration}
          onChange={e => setForm({ ...form, duration: e.target.value })}
        />

        {/* Calories Burnt */}
        <input
          className="form-control mb-3"
          type="number"
          placeholder="Calories Burnt"
          value={form.caloriesBurnt}
          onChange={e =>
            setForm({ ...form, caloriesBurnt: e.target.value })
          }
        />

        {/* Date */}
        <input
          className="form-control mb-3"
          type="date"
          value={form.workoutDate}
          onChange={e =>
            setForm({ ...form, workoutDate: e.target.value })
          }
        />

        {/* Time */}
        <input
          className="form-control mb-4"
          type="time"
          value={form.workoutTime}
          onChange={e =>
            setForm({ ...form, workoutTime: e.target.value })
          }
        />

        <button
          className="btn btn-primary w-100"
          onClick={submit}
        >
          Save Workout
        </button>
      </div>
    </div>
  );
}
