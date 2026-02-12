import { useState } from "react";
import api from "../api/api";

export default function Food() {
  const [data, setData] = useState({
    item: "",
    quantity: "",
    foodDate: "",
    foodTime: "",
    calories: "",
    vitamins: "",
    carbohydrates: "",
    fats: "",
    proteins: "",
    sugar: ""
  });

  const submit = async () => {
    try {
      await api.post("/food/add", {
        item: data.item,
        quantity: data.quantity,
        foodDate: data.foodDate,
        foodTime: data.foodTime,
        calories: Number(data.calories),
        vitamins: data.vitamins,
        carbohydrates: Number(data.carbohydrates),
        fats: Number(data.fats),
        proteins: Number(data.proteins),
        sugar: Number(data.sugar)
      });

      alert("Food & nutrition saved successfully");
    } catch (err) {
      alert("Error saving food");
    }
  };

  return (
    <>
      <h2>Food & Nutrition</h2>

      <input placeholder="Food Item"
        onChange={e => setData({ ...data, item: e.target.value })} />

      <input placeholder="Quantity (e.g. 1 bowl)"
        onChange={e => setData({ ...data, quantity: e.target.value })} />

      <input type="date"
        onChange={e => setData({ ...data, foodDate: e.target.value })} />

      <input type="time"
        onChange={e => setData({ ...data, foodTime: e.target.value })} />

      <input placeholder="Calories"
        onChange={e => setData({ ...data, calories: e.target.value })} />

      <input placeholder="Vitamins"
        onChange={e => setData({ ...data, vitamins: e.target.value })} />

      <input placeholder="Carbohydrates (g)"
         onChange={e => setData({ ...data, carbohydrates: e.target.value })} />

      <input placeholder="Fats (g)"
        onChange={e => setData({ ...data, fats: e.target.value })} />

      <input placeholder="Proteins (g)"
        onChange={e => setData({ ...data, proteins: e.target.value })} />

      <input placeholder="Sugar (g)"
        onChange={e => setData({ ...data, sugar: e.target.value })} />

      <button onClick={submit}>Save Food</button>
    </>
  );
}