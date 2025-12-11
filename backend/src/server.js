const express = require("express");
require("dotenv").config();

const searchRoutes = require("./routes/search");

const app = express();
app.use(express.json());

app.use("/search", searchRoutes);

app.listen(process.env.PORT, () => {
  console.log("Server running on", process.env.PORT);
});
