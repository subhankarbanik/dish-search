const express = require("express");
const pool = require("../db/index");

const router = express.Router();

router.get("/dishes", async (req, res) => {
  const { name, minPrice, maxPrice } = req.query;

  if (!name || !minPrice || !maxPrice) {
    return res.status(400).json({ error: "name, minPrice, maxPrice are required" });
  }

  try {
    const query = `
      SELECT 
        r.id AS restaurantId,
        r.name AS restaurantName,
        r.city,
        m.dish_name AS dishName,
        m.price AS dishPrice,
        COUNT(o.id) AS orderCount
      FROM restaurants r
      JOIN menu_items m ON m.restaurant_id = r.id
      JOIN orders o ON o.menu_item_id = m.id
      WHERE m.dish_name LIKE CONCAT('%', ?, '%')
      AND m.price BETWEEN ? AND ?
      GROUP BY r.id, m.id
      ORDER BY orderCount DESC
      LIMIT 10;
    `;

    const [rows] = await pool.query(query, [name, minPrice, maxPrice]);
    res.json({ restaurants: rows });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "server error" });
  }
});

module.exports = router;
