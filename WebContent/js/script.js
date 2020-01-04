function validate() {
    var itemName = document.forms["menu"]["title"].value;
    var price = document.forms["menu"]["price"].value;
    var dateOfLaunch = document.forms["menu"]["dateOfLaunch"].value;
    var category = document.forms["menu"]["category"].value;
    var regex = (/^.*[0-9].*$/);

    if (itemName == "") {
        alert("Title is required");
        return false;
    }

    if (itemName.length < 2 || itemName.length > 65) {
        alert("Title should have 2 to 65 characters");
        return false;
    }

    if (price == "") {
        alert("Price is required");
        return false;
    }

    if (!price.match(regex)) {
        alert("Price has to be a number");
        return false;
    }

    if ( dateOfLaunch== "") {
        alert("Date of Launch is required");
        return false;
    }

    if (category == "") {
        alert("Select one category");
        return false;
    }
}
