<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration Successful</title>
    <style>
        :root {
            --primary: #6c5ce7;
            --secondary: #00cec9;
            --success: #00b894;
            --dark: #2d3436;
            --glass: rgba(255, 255, 255, 0.85);
        }

        * {
            box-sizing: border-box;
            font-family: 'Segoe UI', system-ui, sans-serif;
        }

        body {
            margin: 0;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(-45deg, #667eea, #764ba2, #00cec9, #6c5ce7);
            background-size: 400% 400%;
            animation: gradientBG 12s ease infinite;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .glass-card {
            background: var(--glass);
            backdrop-filter: blur(16px);
            border-radius: 30px;
            padding: 55px 45px;
            width: 100%;
            max-width: 480px;
            text-align: center;
            box-shadow:
                0 30px 60px rgba(0, 0, 0, 0.25),
                inset 0 1px 0 rgba(255, 255, 255, 0.4);
            animation: floatIn 1s cubic-bezier(0.22, 1, 0.36, 1);
            position: relative;
            overflow: hidden;
        }

        .glass-card::before {
            content: "";
            position: absolute;
            inset: -50%;
            background: radial-gradient(circle at top left, rgba(108,92,231,.35), transparent 60%),
                        radial-gradient(circle at bottom right, rgba(0,206,201,.35), transparent 60%);
            z-index: -1;
        }

        @keyframes floatIn {
            from { opacity: 0; transform: translateY(40px) scale(0.9); }
            to { opacity: 1; transform: translateY(0) scale(1); }
        }

        /* Glowing Checkmark */
        .success-animation {
            margin-bottom: 28px;
            filter: drop-shadow(0 0 10px rgba(0, 184, 148, 0.6));
        }

        .checkmark {
            width: 90px;
            height: 90px;
            border-radius: 50%;
            stroke-width: 2.5;
            stroke: white;
            fill: var(--success);
            box-shadow: 0 0 0 0 rgba(0, 184, 148, 0.7);
            animation: pulse 1.5s ease infinite alternate;
        }

        .checkmark__circle {
            stroke-dasharray: 166;
            stroke-dashoffset: 166;
            stroke: white;
            fill: none;
            animation: stroke 0.6s ease forwards;
        }

        .checkmark__check {
            stroke-dasharray: 48;
            stroke-dashoffset: 48;
            animation: stroke 0.3s ease 0.7s forwards;
        }

        @keyframes stroke {
            to { stroke-dashoffset: 0; }
        }

        @keyframes pulse {
            from { box-shadow: 0 0 0 0 rgba(0, 184, 148, 0.5); }
            to { box-shadow: 0 0 25px 8px rgba(0, 184, 148, 0.2); }
        }

        h1 {
            font-size: 30px;
            font-weight: 800;
            color: var(--dark);
            margin-bottom: 10px;
        }

        .sub-text {
            font-size: 18px;
            color: #636e72;
            margin-bottom: 32px;
        }

        .tip-card {
            background: linear-gradient(135deg, #ffffff, #f1f3ff);
            border-radius: 20px;
            padding: 22px 20px;
            text-align: left;
            border-left: 6px solid var(--primary);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            position: relative;
        }

        .tip-card::before {
            content: "✨";
            position: absolute;
            top: -12px;
            right: -12px;
            background: white;
            width: 32px;
            height: 32px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }

        .tip-label {
            font-size: 12px;
            letter-spacing: 1.6px;
            font-weight: 700;
            color: var(--primary);
            margin-bottom: 6px;
            display: block;
        }

        .quote {
            font-size: 15.5px;
            color: #444;
            font-style: italic;
            line-height: 1.6;
        }

        .btn-continue {
            margin-top: 35px;
            display: inline-block;
            width: 100%;
            padding: 16px;
            border-radius: 16px;
            background: linear-gradient(135deg, #6c5ce7, #00cec9);
            color: white;
            font-size: 16px;
            font-weight: 700;
            text-decoration: none;
            box-shadow: 0 15px 30px rgba(108, 92, 231, 0.4);
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .btn-continue::after {
            content: "";
            position: absolute;
            inset: 0;
            background: linear-gradient(120deg, transparent, rgba(255,255,255,.5), transparent);
            transform: translateX(-100%);
            transition: transform 0.6s ease;
        }

        .btn-continue:hover::after {
            transform: translateX(100%);
        }

        .btn-continue:hover {
            transform: translateY(-3px) scale(1.02);
            box-shadow: 0 22px 40px rgba(108, 92, 231, 0.55);
        }
    </style>
</head>
<body>

<div class="glass-card">
    <div class="success-animation">
        <svg class="checkmark" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52">
            <circle class="checkmark__circle" cx="26" cy="26" r="25" fill="none"/>
            <path class="checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8"/>
        </svg>
    </div>

    <h1>Registration Successfully 🎉</h1>
    <p class="sub-text">Welcome aboard! Your profile is now active.</p>

    <div class="tip-card">
        <span class="tip-label">💡 Interview Tip</span>
        <p class="quote">
            “Confidence grows when preparation meets opportunity.”
        </p>
    </div>


</div>

</body>
</html>
