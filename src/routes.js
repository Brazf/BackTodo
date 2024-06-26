const { Router } = require("express");
const {
  insertTask,
  showTasks,
  deleteTask,
  showTask,
  updateTask,
  ping
} = require("./Controller/Task.js");

const router = Router();
router.get("/ping", ping);
router.post("/task", insertTask);
router.get("/tasks", showTasks);
router.put("/task", updateTask);
router.post("/select/task", showTask);
router.post("/delete/task", deleteTask);
module.exports = router;
