<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Health calculators.aspx.cs" Inherits="jinan_sara.Health_calculators" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <style>
        body { font-family: Arial, sans-serif; direction: rtl; text-align: right; }
        h2{text-align:center;background-color:#007BFF;color:white;padding:20px;}
        img { width: 100%; height: 150px; object-fit: cover; border-radius: 5px; }
        .container { max-width: 800px; margin: auto; display: grid; grid-template-columns: repeat(2, 1fr); gap: 15px; }
        .calculator { padding: 15px; border: 1px solid #ddd; border-radius: 5px; background-color: #f9f9f9; }
        button { background-color: #28a745; color: white; padding: 10px; border: none; cursor: pointer; width: 100%; }
        button:hover { background-color: #218838; }
        input, select { width: 100%; padding: 8px; margin: 5px 0; border: 1px solid #ccc; }
        .result { font-weight: bold; margin-top: 10px; }
        @media (max-width: 600px) {
            .container { grid-template-columns: 1fr; }
        }
    </style></head><body>
    <form id="form1" runat="server"></form>
    <h2>Health accounts</h2>
    <div class="container"><div class="calculator" id="bmi-calculator">
    <h3> Body mass index calculator (BMI) ⚖️</h3>
    <img src="images/bmi-calc.JPG" alt="" />
    <p> The calculation is as follows:Body Mass Index (BMI) = Height in meters X Height in meters / Body weight in kilograms</p>
    <label>Weight (kg)</label>
    <input type="number" id="weight" />
    <label>Length(meter)</label>
    <input type="number" id="height" />
    <button onclick="calculateBMI()">Calculate</button>
    <p class="result" id="bmi-result"></p></div>
        
    <div class="calculator" id="calories-calculator">
    <h3> Calculate the calorie level you need 🔥</h3>
     <img src="images/download (4).JPG" alt="" />
    <label>Age</label>
    <input type="number" id="age" />
    <label>Weight (kg)</label>
    <input type="number" id="cal-weight" />
    <label>Length(meter)</label>
    <input type="number" id="cal-height" />
    <label>Gender</label>
    <select id="gender"><option value="male">Male</option><option value="female">Female</option></select>
    <button onclick="calculateCalories()">Calculate</button><p class="result" id="calories-result"></p></div>
        
   <div class="calculator" id="heart-rate-calculator">
   <h3>Favorite Heart Rate Calculator ❤️ </h3>
   <img src="images/heart-beat-calc-img.JPG" alt="" />
   <label>Age</label>
   <input type="number" id="heart-age" />
   <button onclick="calculateHeartRate()">Calculate</button>
   <p class="result" id="heart-rate-result"></p></div>
        
  <div class="calculator" id="mayo-clinic-calculator">
  <h3>Mayo Clinic Healthy Weight Pyramid 🏋️ </h3>
   <img src="images/Healthy.JPG" alt="" />
  <label>Age</label>
  <input type="number" id="mayo-age" />
  <label>Length(meter)</label>
  <input type="number" id="mayo-height" />
  <label>Weight (kg)</label>
  <input type="number" id="mayo-weight" />
  <label>Gender</label>
  <select id="mayo-gender"><option value="male">Male</option><option value="female">Female</option></select>
  <label>Required program</label>
  <select id="mayo-goal"><option value="lose">Weight loss</option><option value="maintain">Maintain weight</option></select>
  <button onclick="calculateMayoClinic()">Calculate</button>
   <p class="result" id="mayo-result"></p></div>
        
  <div class="calculator" id="burn-calculator">
  <h3> Calorie burn calculator 🔥</h3>
  <img src="images/download (5).JPG" alt="" />
  <label>Age</label>
  <input type="number" id="burn-age" />
  <label>Length(meter)</label>
  <input type="number" id="burn-height" />
  <label>Weight (kg)</label>
  <input type="number" id="burn-weight" />
  <label>Gender</label>
  <select id="burn-gender"><option value="male">Male</option><option value="female">Female</option></select>
  <button onclick="calculateBurn()">Calculate</button>
   <p class="result" id="burn-result"></p></div></div>

    <script>
        function calculateBMI() {
            let weight = parseFloat(document.getElementById("weight").value);
            let height = parseFloat(document.getElementById("height").value);
            if (weight > 0 && height > 0) {
                let bmi = (weight / (height * height)).toFixed(2);
                let category = bmi < 18.5 ? "نحافة" : bmi < 25 ? "وزن طبيعي" : bmi < 30 ? "زيادة وزن" : "سمنة";
                document.getElementById("bmi-result").innerText = نتيجة الحساب: ${category} (${bmi} = BMI);
            }
        }

        function calculateCalories() {
            let age = parseInt(document.getElementById("age").value);
            let weight = parseFloat(document.getElementById("cal-weight").value);
            let height = parseFloat(document.getElementById("cal-height").value);
            let gender = document.getElementById("gender").value;
            let bmr = gender === "male" ? 10 * weight + 6.25 * height - 5 * age + 5 : 10 * weight + 6.25 * height - 5 * age - 161;
            document.getElementById("calories-result").innerText = احتياجاتك اليومية: ${Math.round(bmr)} سعرة حرارية;
        }


        function calculateHeartRate() {
            let age = parseInt(document.getElementById("heart-age").value);
            if (age > 0) {
                let maxHeartRate = 220 - age;
                let targetHeartRate = ${Math.round(maxHeartRate * 0.5)} - ${Math.round(maxHeartRate * 0.85)};
                document.getElementById("heart-rate-result").innerText = معدل ضربات القلب المثالي: ${targetHeartRate} نبضة في الدقيقة;
            }
        }

        function calculateMayoClinic() {
            let age = parseInt(document.getElementById("mayo-age").value);
            let weight = parseFloat(document.getElementById("mayo-weight").value);
            let height = parseFloat(document.getElementById("mayo-height").value) * 100;
            let gender = document.getElementById("mayo-gender").value;
            let goal = document.getElementById("mayo-goal").value;
            let bmr = gender === "male" ? 10 * weight + 6.25 * height - 5 * age + 5 : 10 * weight + 6.25 * height - 5 * age - 161;
            let dailyCalories = goal === "lose" ? bmr - 500 : bmr;
            document.getElementById("mayo-result").innerText = السعرات الحرارية اليومية الموصى بها: ${Math.round(dailyCalories)} سعرة حرارية;
        }

        function calculateBurn() {
            let age = parseInt(document.getElementById("burn-age").value);
            let weight = parseFloat(document.getElementById("burn-weight").value);
            let height = parseFloat(document.getElementById("burn-height").value) * 100;
            let gender = document.getElementById("burn-gender").value;
            let bmr = gender === "male" ? 10 * weight + 6.25 * height - 5 * age + 5 : 10 * weight + 6.25 * height - 5 * age - 161;
            document.getElementById("burn-result").innerText = السعرات الحرارية المحروقة يوميًا: ${Math.round(bmr)} سعرة حرارية;
        }

    </script></body></html>
