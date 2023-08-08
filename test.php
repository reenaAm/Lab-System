<!DOCTYPE html>
<html dir="rtl" lang="ar">

<head>
    <meta charset="UTF-8">
    <title>المعامل المركزية لبرنامج الأشراف المشترك</title>

    <style>
        body {
            font-family: Calibri, sans-serif;
            text-align: center;
            background-color: #D3EFE4;
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #026374;
            margin-bottom: 30px;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #026374;
            margin-top: 30px;
        }

        label {
            color: #2DA876;
            display: block;
            margin-bottom: 8px;
            text-align: right;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
            margin-bottom: 20px;
            text-align: right;
            color: #026374;
            font-family: Calibri, sans-serif;
        }

        input[type="file"] {
            display: none;
        }

        .file-upload-label {
            display: inline-block;
            background-color: #2DA876;
            color: #fff;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .file-upload-label:hover {
            background-color: #026374;
        }

        input[type="submit"] {
            background-color: #2DA876;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
            font-family: Calibri, sans-serif;
        }

        input[type="submit"]:hover {
            background-color: #026374;
        }

        img {
            width: 600px;
            /* Adjust the width as needed */
            height: auto;
            /* Maintain the aspect ratio */
        }
    </style>

    <!-- Include the local Flatpickr JavaScript file -->
    <script src="flatpickr.min.js"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

</head>

<body>

    <img src="C:\Users\Rz\Desktop\Lab System\JSP.png" alt="JSP" />

    <form action="/action_page.php">
        <h1>نموذج حجز المعامل المركزية لبرنامج الإشراف المشترك</h1>
        <h2>المعامل</h2>
        <select name="Labs" id="Labs" onchange="showFormElements()">
            <option value="select">اختر المعمل</option>
            <?php
            $dbPath = 'C:\Users\Rz\Desktop\Lab System\LabUP.db'; // Replace with the actual path to your SQLite database file

            $conn = new SQLite3($dbPath);
            if (!$conn) {
                die("Connection failed: " . $conn->lastErrorMsg());
            }

            $sql = "SELECT Name, labID FROM Lab"; // Replace 'Lab' with the actual table name
            $result = $conn->query($sql);

            if ($result) {
                while ($row = $result->fetchArray(SQLITE3_ASSOC)) {
                    $labID = $row['labID']; // Store the value in a variable

                    // Use the $labID variable wherever you need it
                    echo '<option value="' . $labID . '">' . $row['Name'] . ' (' . $labID . ')</option>';
                }
            }

            $conn->close();
            ?>
        </select>
        <div id="formElements" style="display: none;">
        <h2>المعلومات الشخصية</h2>
        <label for="name">الأسم:</label>
        <input type="text" id="name" name="name"><br><br>
        <label for="phone">رقم الجوال:</label>
        <input type="text" id="phone"name="phone"><br><br>

<h2>الأجهزة</h2>
<?php
$dbPath = 'C:\Users\Rz\Desktop\Lab System\LabUP.db'; // Replace with the actual path to your SQLite database file
echo $labID;
$conn = new SQLite3($dbPath);
if (!$conn) {
    die("Connection failed: " . $conn->lastErrorMsg());
}

$sql = "SELECT DeviceName FROM Devices WHERE labID=$labID"; // Replace 'Devices' with the actual table name
$result = $conn->query($sql);

if ($result) {
    while ($row = $result->fetchArray(SQLITE3_ASSOC)) {
        echo '<input type="checkbox" name="devices[]" value="' . $row['DeviceName'] . '">' . $row['DeviceName'] . '<br>';
    }
}

$conn->close();
?>

        <h2>تحديد التوقيت</h2>
        <label for="date">التاريخ والوقت:</label>
        <input type="text" id="date" name="date" class="flatpickr"><br><br>

        <input type="submit" value="إرسال">
        </div>
    </form>

    <!-- Initialize Flatpickr on the input field -->
    <script>
        flatpickr("#date", {
            enableTime: true,
            dateFormat: "Y-m-d H:i",
        });
    </script>

<script>
    function showFormElements() {
        var selectElement = document.getElementById("Labs");
        var formElements = document.getElementById("formElements");
        
        if (selectElement.value !== "select") {
            formElements.style.display = "block";
        } else {
            formElements.style.display = "none";
        }
    }
</script>

</body>

</html>