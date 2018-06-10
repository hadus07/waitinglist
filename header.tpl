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
            background: linear-gradient(to right, #2193b0, #6dd5ed);
            background-size: cover;
            color: white;
            font-family: Arial, Helvetica, sans-serif;
        }

        .register {
            width: 60%;
            padding: 20px;
            text-align: center;
            margin-top: 100px;
            box-shadow: 0px 8px 6px -6px black;
            /* background-color: #f5a100; */
            background-color: rgba(0, 0, 0, 0.7);
        }

        input {
            color: #0069e4;
        }

        input:-webkit-autofill {
            -webkit-box-shadow: 0 0 0 30px black inset;
            box-shadow: 0 0 0 30px black inset;
            -webkit-text-fill-color: #0069e4 !important;
        }

        input, button {
            padding: 20px;
            width: 200px;
            display: inline-block;
            outline: none;
            font-size: 16px;
            border: none;
            background-color: black;
            
        }

        input:hover, input:focus {
            transition: all 0.2s ease-in;
            background-color: #eee;
        }

        input::placeholder {
            color: #bebebe;
        }

        button {
            background-color: #0069e4;
            width: 100px;
            margin-left: 20px;
            color: white;
        }

        button:hover {
            transition: all .3s cubic-bazier(1, 1, 0.5, 1.1);
            transform: scale(1.1);
            box-shadow: 0 8px 6px -6px black;
            cursor: pointer;
        }

        .cont {
            margin-top: 60px;
            width: 60%;
            color: #222;
            perspective: 1000px;
        }

        .item {
            width: 100%;
            padding: 20px 10px;
            margin-bottom: 5px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border: 1px solid #000;
            text-align: left;
            box-shadow: 0 8px 6px -6px black;
            transform: rotateX(18deg);
        }

        .item p {
            margin-top: 3px;
            font-size: 12px;
        }

        .name-cont {
            display: flex;
            align-items: center;
        }
        .name-cont h3 {
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