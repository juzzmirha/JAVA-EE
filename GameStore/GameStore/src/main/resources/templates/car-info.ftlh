<!DOCTYPE html>
<html>

<head>
    <title>Car Showroom</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Verdana, sans-serif;
            background-color: #f2f2f2;
        }

        .container {
            padding: 2% 10%;
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
        h4 {
            font-size: 24px; /* Размер шрифта */
            font-family: "Verdana", serif;
            color: #333; /* Цвет текста */
            margin: 10px 0; /* Внешние отступы сверху и снизу */
        }


        .car-info {
            background-color: #fff;
            border: 1px solid #ddd;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            padding: 20px;
            margin: 20px 0;
        }

        .car-info b {
            display: block;
        }

        .edit-car-form {
            text-align: center;
        }

        .delete-car-form,
        .back-button-form {
            margin-top: 10px;
        }

        .btn-delete {
            background-color: #333;
            color: #fff;
        }

        .form-group {
            margin-bottom: 10px;
        }


        .btn-delete, .btn-secondary {
            border: 2px solid #333;
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border-radius: 24px;
            cursor: pointer;
            font-family: 'Verdana', sans-serif;
            transition: background-color 0.3s;
        }

        .btn-delete:hover, .btn-secondary:hover {
            background-color: #2ecc71;
            border-color: #2ecc71;
        }

        .btn-primary, .btn-danger {
            border: 2px solid #3498db;
            padding: 14px 10px;
            width: 200px;
            outline: none;
            color: white;
            border-radius: 24px;
            transition: 0.25s;
            background-color: #3498db;
            cursor: pointer;
        }

        .btn-primary:hover, .btn-danger:hover {
            width: 280px;
            border-color: #2ecc71;
            background-color: #2ecc71;
        }

        .edit-car-form {
            max-width: 400px;
            margin: 0 auto;
        }

        .edit-car-form .form-group {
            margin: 10px 0;
        }

        .edit-car-form input[type="text"],
        .edit-car-form input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

    </style>

</head>

<body>
<div class="container">
    <h1>Showroom</h1>
    <h4>Information About Car</h4>
    <div class="car-info">
        <b>Name car:</b> ${car.title}<br>
        <b>Description:</b> ${car.description}<br>
        <b>Price:</b> ${car.price}<br>
        <b>Country of Origin:</b> ${car.city}<br>
        <b>Company:</b> ${car.author}<br>

        <h4>Edit Car's Info</h4>
        <form class="edit-car-form" action="/car/update/${car.id}" method="post">
            <div class="form-group">
                <input type="text" class="form-control" name="title" placeholder="New Car" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="description" placeholder="New Description" required>
            </div>
            <div class="form-group">
                <input type="number" class="form-control" name="price" placeholder="New Price" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="city" placeholder="New Country of origin" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="author" placeholder="New Company" required>
            </div>
            <button type="submit" class="btn btn-primary">Save Changes</button>
        </form>
    </div>

    <hr>
    <form class="delete-car-form" action="/car/delete/${car.id}" method="post">
        <input type="submit" class="btn btn-danger" value="Delete car" /><br><br>
    </form>

    <form class="back-button-form" action="/" method="post">
        <button type="button" class="btn btn-secondary" onclick="window.location.href='http://localhost:8080/'">Back</button>
    </form>

</div>
</body>

</html>
