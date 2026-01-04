# hails.Float-linkset

A lightweight LSL floating (bobbing) script for child prims in a linkset.

This script creates a smooth, natural floating motion using local positioning to ensure the prim always returns to its original position after sim restarts, script resets, or relinking. It is designed to be drift-free, simple, and low-maintenance.

---

### 🖼️ Preview
[Animated Preview](https://assets.hails.cc/i/sl/hails-float-example.gif) w/ selection wireframe  
[Animated Preview](hails-float-example-no_selection.gif) no selection wireframe  
![Preview](https://github.com/user-attachments/assets/5928a865-f380-4cd3-8422-3625b8b65fe0)


---

## 🗒️ Features

- Smooth sine-wave floating motion  
- Randomized float period per cycle (default: 9-15 seconds)  
- Uses local position to prevent long-term drift  
- Safe across sim restarts and script resets  
- Designed for child prims in linked objects  
- No controller or region avatar detection required  

---

## 📚 How It Works

The script:

- Captures the prim’s local position on startup  
- Applies a vertical sine-wave offset around that position  
- Randomizes the float period each cycle for natural motion  
- Continuously returns to the same “home” position  

Because it uses local positioning, the prim will not drift over time and will always return to its original placement relative to the root prim.

---

## ✔️Requirements

- Object must be linked  
- Script must be placed in a child prim  
- Root prim must remain stationary  
- Object must be non-physical  

---

## 💻Installation

1. Link your object normally  
2. Ensure the prim you want to float is not the root prim  
3. Drop the script into the child prim  
4. Reset the script  

The prim will immediately begin floating.

---

## 🎨Customization

- Adjust AMPLITUDE to change float height  
- Adjust MIN_PERIOD and MAX_PERIOD for slower or faster motion  
- Adjust TICK for smoother movement (uses slightly more script time)

---

## 🛑Notes & Limitations

- The script must be in a child prim  
- Root prim local position cannot be animated  
- Motion is purely visual (non-physical)  
- Uses region time, not frame-based motion  

---

## 🪪License

Use freely. Attribution appreciated but not required.
