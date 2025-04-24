import { exec } from "child_process";

exec("turbo ls --affected --output=json", (error, stdout, stderr) => {
  if (error) {
    console.error("❌ Error:", error.message);
    return;
  }
//   if (stderr) {
//     console.error("⚠️ Stderr:", stderr);
//     return;
//   }

  try {
    const result = JSON.parse(stdout);
    console.log("✅ Affected packages:", result.items);
  } catch (err) {
    console.error("❌ JSON parse error:", err);
  }
});
