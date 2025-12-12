Dish Search Backend (Node.js + MySQL)

This is a simple backend service that allows users to search for restaurants based on a dish name, filtered by a mandatory price range, and sorted by how many times that dish has been ordered.

The system stores:

Restaurants

Menu items

Orders (each order = one menu item)

When a user searches for a dish, the service returns the top 10 restaurants where that dish has been ordered the most.

Features

Search restaurants by dish name

Mandatory minPrice & maxPrice filters

Returns restaurants sorted by total order count

Uses clean SQL queries (mysql2)

Simple and lightweight Node.js architecture

Includes schema + seed SQL files

Ready for deployment on Railway / Render

Tech Stack

Node.js

Express.js

MySQL

mysql2

dotenv

Folder Structure
backend/
│
├── src/
│   ├── app.js
│   ├── db/
│   │   └── index.js
│   └── routes/
│       └── search.js
│
├── scripts/
│   ├── schema.sql
│   └── seed.sql
│
├── .env
├── .gitignore
└── package.json

Environment Variables

Create a .env file in the root:

DB_HOST=localhost
DB_USER=root
DB_PASS=secret
DB_NAME=dish_search
DB_PORT=3306
PORT=3000


Update values as needed.

Setup Instructions
1. Install dependencies
npm install

2. Create MySQL database
mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS dish_search;"

3. Run schema
mysql -u root -p dish_search < scripts/schema.sql

4. Seed sample data
mysql -u root -p dish_search < scripts/seed.sql

5. Start the server
npm start


Server runs on:

http://localhost:8000

API Usage
Endpoint
GET /search/dishes?name={dishName}&minPrice={min}&maxPrice={max}

Example Request
/search/dishes?name=biryani&minPrice=150&maxPrice=300

Example Response
{
  "restaurants": [
    {
      "restaurantId": 5,
      "restaurantName": "Hyderabadi Spice House",
      "city": "Hyderabad",
      "dishName": "Chicken Biryani",
      "dishPrice": 220,
      "orderCount": 96
    }
  ]
}

Deployment

This project can be deployed on:

Railway.app (recommended)

Render.com

Docker container

For deployment:

Create a MySQL database on the platform

Add environment variables

Import schema and seed files

Deploy the Node server


Production URL: https:

License

Open-source. Feel free to use or modify.