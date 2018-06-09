<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Waiting List</title>
    <style>
        * {
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background: radial-gradient(#FFF176, #F57F17);
            background-size: cover;
            color: white;
            font-family: Arial, Helvetica, sans-serif;
        }

        .register {
            width: 60%;
            padding: 20px;
            text-align: center;
            margin-top: 100px;
            box-shadow: 0px 10px 15px -6px black;
            background-color: #f5a100;
        }

        input, button {
            padding: 20px;
            width: 200px;
            display: inline-block;
            outline: none;
            font-size: 14px;
            font-weight: bold;
            border: none;
            background-color: #f6ad07;
        }

        input:hover, input:focus {
            transition: all 0.2s ease-in;
            background-color: #eee;
        }

        button {
            background-color: #0069e4;;
            width: 100px;
            margin-left: 20px;
            color: white
        }

        button:hover {
            transition: all .3s cubic-bazier(1, 1, 0.5, 1.1);
            transform: scale(1.1) rotate(2deg);
            box-shadow: 0 8px 6px -6px black;
            cursor: pointer;
        }

        .cont {
            margin-top: 100px;
            width: 60%;
            color: #444;
        }

        .item {
            width: 100%;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #777;
            text-align: left;
        }

        .item p {
            margin-top: 3px;
            font-size: 12px;
        }

        .name-cont {
            display: flex;
            align-items: center;
        }
        .name-cont h2 {
            margin-right: 50px;
        }
        .name-cont div {
            width: 200px;
        }

        .item-btn {
            display: flex;
        }
    </style>
</head>
<body>