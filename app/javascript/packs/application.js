import "bootstrap";


const tabs = document.querySelectorAll(".tab");
const content = document.querySelector(".content");

removeCurrentActive = () => {
  tabs.forEach((tab) => {
    tab.classList.remove("active");
  })
  content.innerHTML = "";
}

const displayMeals = "<div class='breakfast'><h1>Breakfast</h1></div><div class='lunch'><h1>Lunch</h1></div><div class='dinner'><h1>Dinner</h1></div>";

const setActive = (selectedTab) => {
  removeCurrentActive();
  newActiveTab = document.getElementById(selectedTab);
  newActiveTab.classList.add("active");

  switch(selectedTab) {
    case "mon":
      content.innerHTML = displayMeals;
      break;
    case "tue":
      content.innerHTML = displayMeals;
      break;
    case "wed":
      content.innerHTML = displayMeals;
      break;
    case "thu":
      content.innerHTML = displayMeals;
      break;
    case "fri":
      content.innerHTML = displayMeals;
      break;
    case "sat":
      content.innerHTML = displayMeals;
      break;
    case "sun":
      content.innerHTML = displayMeals;
      break;
  }
}
