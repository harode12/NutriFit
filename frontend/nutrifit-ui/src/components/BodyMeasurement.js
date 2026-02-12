import api from "../api/api";
import { useState } from "react";

export default function BodyMeasurement() {
  const [data, setData] = useState({
    weight: "",
    height: "",
    gender: "Male",
    hasDisease: false
  });

  const submit = async () => {
    const res = await api.post("/body/add", data);
    alert("BMI: " + res.data.bmi);
  };

  return (
    <>
      <h3>Body Measurement</h3>
      <input placeholder="Weight" onChange={e=>setData({...data,weight:e.target.value})}/>
      <input placeholder="Height" onChange={e=>setData({...data,height:e.target.value})}/>
      <button onClick={submit}>Save</button>
    </>
  );
}
