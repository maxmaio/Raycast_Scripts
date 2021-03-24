#!/usr/bin/env node

// Current Weather
//
// Dependency: This script requires Nodejs.
// Install Node: https://nodejs.org/en/download/
// Required parameters:
// @raycast.schemaVersion 1
// @raycast.title Current Weather
// @raycast.mode fullOutput
// @raycast.packageName Current Weather
//
// Optional parameters:
// @raycast.icon 🌦
//
// Documentation:
// @raycast.description Grabs the weather and displays data 
// @raycast.author maxmaio
// @raycast.authorURL github.com/maxmaio

function getWindColor(windSpeed) {
  windColor = 32;
  if (windSpeed > 5) {
    windColor = 33;
  }
  if (windSpeed > 12) {
    windColor = 31;
  }
  return windColor;
}

function getWindDirection(degrees) {
  let arrow = "↑";
  if (20 <= degrees && degrees < 70){
    arrow = "↙";
  }
  if (70 <= degrees && degrees <120){
    arrow = "←";
  }
  if (120 <= degrees&& degrees < 160) {
    arrow = "↖";
  }
  if (160 <= degrees && degrees < 200) {
    arrow = "↑";
  }
  if (200 <= degrees && degrees < 250) {
    arrow = "↗";
  }
  if (250 <= degrees && degrees < 290) {
    arrow = "→";
  }
  if (290 <= degrees && degrees < 330) {
    arrow = "↘";
  }
  if (330 <= degrees || degrees < 20) {
    arrow = "↓";
  }
  return arrow;
}

function getTempColor(temp) {
  tempColor = 32;
  if (Number(temp) > 80) {
    tempColor = 31;
  }
  if(Number(temp) < 55) {
    tempColor = 34;
  }
  return tempColor;
}


function printWeatherInfo(data) {
  temp = data.temp_F;
  weatherCode = data.weatherCode;
  weatherDesc = data.weatherDesc[0].value;
  windSpeed = data.windspeedMiles;
  arrow = getWindDirection(Number(data.winddirDegree));
  tempColor = getTempColor(temp);
  windColor = getWindColor(windSpeed);

  switch (weatherCode) {
    case "113":
      console.log(
        "\033[33m     \\   /    \033[0m " + weatherDesc + " \n",
        "\033[33m     .-.      \033[0m" + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[33m  ― (   ) ―  \033[0m " + arrow + "\033["+ windColor + "m " + windSpeed + "\033[0m" + " mph\n",
        "\033[33m     '-’     \033[0m\n",
        "\033[33m    /   \\    \033[0m\n"
      );
      break;
      
    case "116":
      console.log(
        "\033[33m   \\  /\033[0m        " + weatherDesc + " \n",
        "\033[33m _ /\"\"\033[0m\033[0m.-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[33m   \\_\033[0m\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[33m   /\033[0m\033[0m(___(__) \033[0m\n",
        "           \n"
      );
      break;

    case "119":
      console.log(
        "\033[0m     .--.    \033[0m  "  + weatherDesc + " \n",
        "\033[0m  .-(    ).  \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m (___.__)__) \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
      );
      break;
    
    case "122":
      console.log(
        "\033[0m     .--.    \033[0m  "  + weatherDesc + " \n",
        "\033[0m  .-(    ).  \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m (___.__)__) \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
      );
      break;

    case "176":
      console.log(
        "\033[33m   \\  /\033[0m        " + weatherDesc + " \n",
        "\033[33m _ /\\\033[0m\033[0m.-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[33m   /\033[0m(___(__) \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m    ‘ ‘ ‘ ‘ \033[0m\n",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m\n"
      );
      break;

    case "353":
      console.log(
        "\033[33m   \\  /\033[0m        " + weatherDesc + " \n",
        "\033[33m _ /\\\033[0m\033[0m.-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[33m   /\033[0m(___(__) \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m    ‘ ‘ ‘ ‘ \033[0m\n",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m\n"
      );
      break;
    case "263":
      console.log(
        "\033[33m   \\  /\033[0m        " + weatherDesc + " \n",
        "\033[33m _ /\\\033[0m\033[0m.-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[33m   /\033[0m(___(__) \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m    ‘ ‘ ‘ ‘ \033[0m\n",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m\n"
      );
      break;

    case "299":
      console.log(
        "\033[33m   \\  /\033[0m        " + weatherDesc + " \n",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[33m   /\033[0m(___(__) \033[0m\n",
        "\033[34m   ‚‘‚‘‚‘‚‘  \033[0m\n",
        "\033[34m   ‚’‚’‚’‚’  \033[0m\n"
      );
      break;

    case "305":
      console.log(
        "\033[33m   \\  /\033[0m        " + weatherDesc + " \n",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[33m   /\033[0m(___(__) \033[0m\n",
        "\033[34m   ‚‘‚‘‚‘‚‘  \033[0m\n",
        "\033[34m   ‚’‚’‚’‚’  \033[0m\n"
      );
      break;

    case "356":
      console.log(
        "\033[33m   \\  /\033[0m        " + weatherDesc + " \n",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[33m   /\033[0m(___(__) \033[0m\n",
        "\033[34m   ‚‘‚‘‚‘‚‘  \033[0m\n",
        "\033[34m   ‚’‚’‚’‚’  \033[0m\n"
      );
      break;
    
    case "323":
      console.log(
        "\033[33m   \\  /\033[0m        " + weatherDesc + " \n",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[33m   /\033[0m(___(__) \033[0m\n",
        "\033[36m     *  *  * \033[0m\n",
        "\033[36m    *  *  *  \033[0m\n"
      );
      break;
    
    case "326":
      console.log(
        "\033[33m   \\  /\033[0m        " + weatherDesc + " \n",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[33m   /\033[0m(___(__) \033[0m\n",
        "\033[36m     *  *  * \033[0m\n",
        "\033[36m    *  *  *  \033[0m\n"
      );
      break;

    case "335":
      console.log(
        "\033[33m   \\  /\033[0m        " + weatherDesc + " \n",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[33m   /\033[0m(___(__) \033[0m\n",
        "\033[36m     *  *  * \033[0m\n",
        "\033[36m    *  *  *  \033[0m\n"
      );
      break;

    case "371":
      console.log(
        "\033[33m   \\  /\033[0m        " + weatherDesc + " \n",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[33m   /\033[0m(___(__) \033[0m\n",
        "\033[36m     *  *  * \033[0m\n",
        "\033[36m    *  *  *  \033[0m\n"
      );
      break;

    case "395":
      console.log(
        "\033[33m   \\  /\033[0m        " + weatherDesc + " \n",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[33m   /\033[0m(___(__) \033[0m\n",
        "\033[36m     *  *  * \033[0m\n",
        "\033[36m    *  *  *  \033[0m\n"
      );
      break;

    case "386":
      console.log(
        "\033[33m   \\  /\033[0m        " + weatherDesc + " \n",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[33m   /\033[0m(___(__) \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[33m  ⚡\033[34m‘ ‘\033[33m,⚡\033[34m‘  \033[0m\n",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m\n"
      );
      break;
    
    case "200":
      console.log(
        "\033[33m   \\  /\033[0m        " + weatherDesc + " \n",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[33m   /\033[0m(___(__) \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[33m  ⚡\033[34m‘ ‘\033[33m,⚡\033[34m‘  \033[0m\n",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m\n"
      );
      break;

    case "389":
      console.log(
        "\033[0m      .-.     \033[0m " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m  ‚‘\033[33m⚡\033[34m‘‚\033[33m⚡\033[34m‚‘ \033[0m\n",
        "\033[34m  ‚’‚’\033[33m⚡\033[34m’‚’  \033[0m\n"
      );
      break;

    case "LightRain":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m\n",
        "\033[34m  ‘ ‘ ‘ ‘   \033[0m\n"
      );
      break;

    case "266":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m\n",
        "\033[34m  ‘ ‘ ‘ ‘   \033[0m\n"
      );
      break;

    case "293":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m\n",
        "\033[34m  ‘ ‘ ‘ ‘   \033[0m\n"
      );
      break;

    case "296":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m\n",
        "\033[34m  ‘ ‘ ‘ ‘   \033[0m\n"
      );
      break;

    case "359":
      console.log(
        "\033[0m      .-.     \033[0m " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m   ‚‘‚‘‚‘‚‘  \033[0m\n",
        "\033[34m   ‚’‚’‚’‚’  \033[0m\n"
      );
      break;

    case "302":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m   ‚‘‚‘‚‘‚‘  \033[0m\n",
        "\033[34m   ‚’‚’‚’‚’  \033[0m\n"
      );
      break;

    case "308":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m   ‚‘‚‘‚‘‚‘  \033[0m\n",
        "\033[34m   ‚’‚’‚’‚’  \033[0m\n"
      );
      break;

    case "320":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[36m   *  *  * \033[0m\n",
        "\033[36m  *  *  *  \033[0m\n"
      );
      break;
    
    case "227":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[36m   *  *  * \033[0m\n",
        "\033[36m  *  *  *  \033[0m\n"
      );
      break;

    case "329":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[36m   * * * * \033[0m\n",
        "\033[36m  * * * *  \033[0m\n"
      );
      break;

    case "332":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[36m   * * * * \033[0m\n",
        "\033[36m  * * * *  \033[0m\n"
      );
      break;

    case "338":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[36m   * * * * \033[0m\n",
        "\033[36m  * * * *  \033[0m\n"
      );
      break;
    case "230":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[36m   * * * * \033[0m\n",
        "\033[36m  * * * *  \033[0m\n"
      );
      break;

    case "182":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m\n",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m\n",
      );
      break;

    case "185":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m\n",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m\n",
      );
      break;

    case "281":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m\n",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m\n",
      );
      break;
    
    case "284":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m\n",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m\n",
      );
      break;

    case "314":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m\n",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m\n",
      );
      break;

    case "317":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m\n",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m\n",
      );
      break;

    case "350":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m\n",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m\n",
      );
      break;

    case "377":
      console.log(
        "\033[0m      .-.     \033[0m   " + weatherDesc + " \n",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m\n",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m\n",
      );
      break;
    case "143":
      console.log(
        "\033[36m _ - _ - _ - \033[0m  "  + weatherDesc + " \n",
        "\033[36m  _ - _ - _  \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[36m _ - _ - _ - \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "             \n"
      );
      break;

    case "248":
      console.log(
        "\033[36m _ - _ - _ - \033[0m  "  + weatherDesc + " \n",
        "\033[36m  _ - _ - _  \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[36m _ - _ - _ - \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "             \n"
      );
      break;

    case "260":
      console.log(
        "\033[36m _ - _ - _ - \033[0m  "  + weatherDesc + " \n",
        "\033[36m  _ - _ - _  \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F\n",
        "\033[36m _ - _ - _ - \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph\n",
        "             \n"
      );
      break;
  }
}


function main(data) {
  data = JSON.parse(data);
  printWeatherInfo(data.current_condition[0]);
}

function getWeatherData(location) {
  // replace whitespace with '+'
  location = location.replace(/\s/g, '+');
  const https = require('https');
  let data = "";
  const weatherOptions = {
  hostname: 'wttr.in',
  port: 443,
  path: '/' + location + '?format=j1',
  method: 'GET'
  }
  const req = https.request(weatherOptions, res => {

    res.on('data', d => {
      if (d){
      data += d;
      }
    })
    res.on('end',() => {
       main(data);
    })
  })

  req.on('error', error => {
    console.error(error)
  })

  req.end()
}

const https = require('https');
data = "";
const locOptions = {
  hostname: "ipinfo.io",
  port: 443,
  path: '/',
  method: 'GET'
}
const locReq = https.request(locOptions, res => {
    res.on('data', d => {
    if (d){
    data += d;
    }
  })
  res.on('end',() => {
    data = JSON.parse(data);
    console.log("Weather report: " + data.city + ", " + data.region + ", " + data.country + "\n");
    getWeatherData(data.city);
  })
})
locReq.on('error', error => {
  console.error(error)
})

locReq.end()