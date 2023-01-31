document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  //select class of favorite submit
  
  
  const submitInput = (e) => {
    e.preventDefault()

    const input = document.querySelector(".favorite-input")
    const inputVal = input.value
    input.value = ""

    const newLi = document.createElement("li");
    newLi.textContent = inputVal

    const places = document.getElementById("sf-places")
    
    places.appendChild(newLi)
  }
  
  const submit = document.querySelector(".favorite-submit")
  submit.addEventListener("click", submitInput)



  // adding new photos

  // --- your code here!
  const showAndHide = (e) => {
    const photoForm = document.querySelector(".photo-form-container")
    if (photoForm.className === "photo-form-container hidden") {
      photoForm.className = "photo-form-container"
    } else {
      photoForm.className = "photo-form-container hidden"
    }
  }

  const submitPhoto = (e) => {

  }



});
