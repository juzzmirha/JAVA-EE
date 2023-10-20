<!DOCTYPE html>
<html>

<head>
    <title>Car Showroom</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Verdana, sans-serif;
            background-color: white;
            padding: 20px;
        }

        h1{
            padding: 30px;
            background: black;
            font-family: sans-serif;
            line-height: 3em;
            font-size: 35px;
            font-weight:normal;
            color: white;
            text-align:center;
            margin-top: 0%;
        }

        h3{
            align-items: center;
            justify-content: center;
            text-align: center;
        }
        .car {
            border: 1px solid #ddd;
            background-color: #fff;
            padding: 20px;
            margin: 20px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }

        .car p {
            margin: 0;
        }

        .car-link {
            text-decoration: none;
            color: #333;
        }

        .create-car-form {
            text-align: center;
            max-width: 400px;
            margin: 0 auto;
        }

        .create-car-form input[type="text"],
        .create-car-form input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .btn-add-car {
            border: 0;
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border: 2px solid #2ecc71;
            padding: 14px 40px;
            outline: none;
            color: white;
            border-radius: 24px;
            transition: background-color 0.3s;
            cursor: pointer;
            font-family: 'Verdana', sans-serif;
            background-color: #333; /* Цвет фона кнопки */
        }

        .btn-add-car:hover {
            background-color: #2ecc71; /* Цвет кнопки при наведении */
        }

        .btn-add-car {
            background-color: #333;
            color: #fff;
            padding: 10px;
            border: none;
            cursor: pointer;
        }
    </style>
</head>

<body>
<div class="container">
    <h1>Showroom</h1>
    <div class="row">
        <#list products as car>
            <div class="col-md-6">
                <div class="car">
                    <p>
                        ${car.id} <b>${car.title}</b> ${car.price} | <a class="car-link"
                                                                                    href="/car/${car.id}">ABOUT CAR</a>
                    </p>
                </div>
            </div>
        </#list>
    </div>
    <h3>Create new car</h3>
    <form class="create-car-form" action="/car/create" method="post">
        <div class="form-group">
            <input type="text" class="form-control" name="title" placeholder="Name of car" required>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="description" placeholder="Description" required>
        </div>
        <div class="form-group">
            <input type="number" class="form-control" name="price" placeholder="Price" required>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="city" placeholder="Country of Origin" required>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="author" placeholder="Company" required>
        </div>
        <button type="submit" class="btn btn-add-car">ADD NEW CAR</button>
    </form>
</div>
</body>

</html>
