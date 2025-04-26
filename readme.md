<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Cover</title>
    <style>
        body {
            margin: 0;
            font-family: 'Georgia', serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(to bottom right, #e0eafc, #cfdef3);
        }
        .book-cover {
            width: 600px;
            height: 800px;
            background: linear-gradient(to bottom, #ffffff, #f9f9f9);
            border: 2px solid #e0e0e0;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            text-align: center;
            padding: 30px;
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            overflow: hidden;
        }
        .image-container {
            margin-top: 40px;
        }
        .image-container img {
            width: 260px;
            height: auto;
            border: 3px solid #444;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        .title-section {
            margin: 40px 0;
        }
        .subtitle {
            font-size: 1.7em;
            color: #666;
            text-transform: uppercase;
            letter-spacing: 3px;
            font-weight: 600;
        }
        .main-title {
            font-size: 4em;
            font-weight: 900;
            background: linear-gradient(to right, #2c3e50, #3498db);
            -webkit-background-clip: text;
            color: transparent;
            margin: 15px 0;
            line-height: 1;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }
        .target-audience {
            font-size: 2.2em;
            color: #e74c3c;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-weight: 700;
            text-shadow: 1px 1px 3px rgba(231, 76, 60, 0.3);
        }
        .authors {
            font-size: 2em;
            color: #555;
            margin: 25px 0;
            font-style: italic;
        }
        .authors span {
            color: #2980b9;
            font-weight: bold;
            font-style: normal;
        }
        .website {
            font-size: 1.3em;
            color: #7f8c8d;
            text-decoration: none;
            margin-bottom: 25px;
            transition: color 0.3s ease;
        }
        .website:hover {
            color: #2980b9;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="book-cover">
        <div class="image-container">
            <img src="https://www.microsoft.com/en-us/research/wp-content/uploads/2018/08/01_MSR_SIGCOMM_Data_Network_1400x788-1024x576.png" alt="Book Cover Image">
        </div>
        <div class="title-section">
            <div class="subtitle">Let's Talk About</div>
            <div class="main-title">FINANCE BASICS</div>
            <div class="target-audience">For Young Women</div>
        </div>
        <div class="authors">
            By Henrietta Mitchell <span>&</span> Olivia Wilson
        </div>
        <a href="#" class="website">www.reallygreatsite.com</a>
    </div>
</body>
</html>