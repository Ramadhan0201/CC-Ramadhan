const express = require('express');
const authController = require('../Controllers/authController');
const router = express.Router();

router.get('/profile', authController.getDataUser);
router.post('/profile/update', authController.updateProfile);


module.exports = router;