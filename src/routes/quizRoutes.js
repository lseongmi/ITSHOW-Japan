const express = require('express');
const router = express.Router();
const quizController = require('../controllers/quizController');

// 학습한 퀴즈 조회
router.get('/quiz/learned', quizController.getAllCompletedQuizzes);

// 선택한 표현의 퀴즈 조회
router.get('/quiz/:expressionsId', quizController.getQuizByExpressions);

// 정답 확인
router.post('/quiz/:quizId/answer', quizController.submitQuizAnswer);

// 수동으로 결과 저장 (필요 시)
router.post('/quiz/:quizId/result', quizController.saveQuizResult); 

module.exports = router;
