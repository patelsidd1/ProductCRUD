<html>
<head>
<%@ include file = "./base.jsp"%>

<style>
        body {
            background-image: url('https://img.freepik.com/free-photo/blur-field-texture_1160-907.jpg?t=st=1739258428~exp=1739262028~hmac=d21a3fc98454b1382dade84d4d6347f363fab0b462f516f381f1d62478075075&w=740'); /* Path to your image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
    </style>

</head>
<body>
<div class="container mt-5">
    <div class="row">

        <div class="col-md-6 offset-md-3" >
<h1 class="text-center mb-3 fancy-heading">Add The <span class="highlight">Product Details </span></h1>

<style>
    .fancy-heading {
        font-size: 2.5rem;
        font-weight: bold;
        color: #333;
        text-transform: capitalize;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        padding: 10px;
    }

    .highlight {
        color: #007bff; /* Bootstrap primary blue for a modern feel */
        font-weight: bold;
    }
</style>
            <form action="handleProduct" method="post">
                <div class="form-group">
                    <label for="productName">Product Name</label>
                    <input type="text"
                    class="form-control"
                    id="productName" name="name"
                    aria-describedby="emailHelp"
                    placeholder="Enter the name here ">
                </div>
                <div class="form-group">
                    <label for="description">Product Discription</label>

                    <textarea class="form-control"
                    id="description" name="description"
                    rows="5" placeholder="Enter the product Discription"></textarea>

                </div>
                <div class="form-group">
                    <label for="price"> Product price  </label>
                    <input type="text" class="form-control"
                    id="productQuantity" name="price"
                    placeholder="Enter the price ">

                </div>
                <div class="container text-center">
                    <a href="${pageContext.request.contextPath}/"
                    class="btn btn-outline-danger">Back </a>
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>

        </div>
    </div>
</div>

</body>
</html>
