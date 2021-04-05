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
  if (data.tempF) {
    temp = data.tempF;
  }
  weatherCode = data.weatherCode;
  weatherDesc = data.weatherDesc[0].value;
  windSpeed = data.windspeedMiles;
  arrow = getWindDirection(Number(data.winddirDegree));
  tempColor = getTempColor(temp);
  windColor = getWindColor(windSpeed);

  switch (weatherCode) {
    case "113":
      return [
        "\033[33m    \\   /    \033[0m " + weatherDesc,
        "\033[33m     .-.      \033[0m" + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[33m  ― (   ) ―  \033[0m " + arrow + "\033["+ windColor + "m " + windSpeed + "\033[0m" + " mph",
        "\033[33m     '-’     \033[0m",
        "\033[33m    /   \\    \033[0m"
      ];
      break;
      
    case "116":
      return [
        "\033[33m   \\  /\033[0m       " + weatherDesc + " ",
        "\033[33m _ /\"\"\033[0m\033[0m.-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[33m   \\_\033[0m\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[33m   /\033[0m\033[0m(___(__) \033[0m",
        "           "
      ];
      break;

    case "119":
      return [
        "\033[0m     .--.    \033[0m "  + weatherDesc + " ",
        "\033[0m  .-(    ).  \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m (___.__)__) \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
      ];
      break;
    
    case "122":
      return [
        "\033[0m     .--.    \033[0m "  + weatherDesc + " ",
        "\033[0m  .-(    ).  \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m (___.__)__) \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
      ];
      break;

    case "176":
      return [
        "\033[33m   \\  /\033[0m        " + weatherDesc + " ",
        "\033[33m _ /\\\033[0m\033[0m.-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[33m   /\033[0m(___(__) \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m    ‘ ‘ ‘ ‘ \033[0m",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m"
      ];
      break;

    case "353":
      return [
        "\033[33m   \\  /\033[0m        " + weatherDesc + " ",
        "\033[33m _ /\\\033[0m\033[0m.-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[33m   /\033[0m(___(__) \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m    ‘ ‘ ‘ ‘ \033[0m",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m"
      ];
      break;
    case "263":
      return [
        "\033[33m   \\  /\033[0m        " + weatherDesc + " ",
        "\033[33m _ /\\\033[0m\033[0m.-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[33m   /\033[0m(___(__) \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m    ‘ ‘ ‘ ‘ \033[0m",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m"
      ];
      break;

    case "299":
      return [
        "\033[33m   \\  /\033[0m        " + weatherDesc + " ",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[33m   /\033[0m(___(__) \033[0m",
        "\033[34m   ‚‘‚‘‚‘‚‘  \033[0m",
        "\033[34m   ‚’‚’‚’‚’  \033[0m"
      ];
      break;

    case "305":
      return [
        "\033[33m   \\  /\033[0m        " + weatherDesc + " ",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[33m   /\033[0m(___(__) \033[0m",
        "\033[34m   ‚‘‚‘‚‘‚‘  \033[0m",
        "\033[34m   ‚’‚’‚’‚’  \033[0m"
      ];
      break;

    case "356":
      return [
        "\033[33m   \\  /\033[0m        " + weatherDesc + " ",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[33m   /\033[0m(___(__) \033[0m",
        "\033[34m   ‚‘‚‘‚‘‚‘  \033[0m",
        "\033[34m   ‚’‚’‚’‚’  \033[0m"
      ];
      break;
    
    case "323":
      return [
        "\033[33m   \\  /\033[0m        " + weatherDesc + " ",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[33m   /\033[0m(___(__) \033[0m",
        "\033[36m     *  *  * \033[0m",
        "\033[36m    *  *  *  \033[0m"
      ];
      break;
    
    case "326":
      return [
        "\033[33m   \\  /\033[0m        " + weatherDesc + " ",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[33m   /\033[0m(___(__) \033[0m",
        "\033[36m     *  *  * \033[0m",
        "\033[36m    *  *  *  \033[0m"
      ];
      break;

    case "335":
      return [
        "\033[33m   \\  /\033[0m        " + weatherDesc + " ",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[33m   /\033[0m(___(__) \033[0m",
        "\033[36m     *  *  * \033[0m",
        "\033[36m    *  *  *  \033[0m"
      ];
      break;

    case "371":
      return [
        "\033[33m   \\  /\033[0m        " + weatherDesc + " ",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[33m   /\033[0m(___(__) \033[0m",
        "\033[36m     *  *  * \033[0m",
        "\033[36m    *  *  *  \033[0m"
      ];
      break;

    case "395":
      return [
        "\033[33m   \\  /\033[0m        " + weatherDesc + " ",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[33m  ,\\_\033[0m(   ).  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[33m   /\033[0m(___(__) \033[0m",
        "\033[36m     *  *  * \033[0m",
        "\033[36m    *  *  *  \033[0m"
      ];
      break;

    case "386":
      return [
        "\033[33m   \\  /\033[0m        " + weatherDesc + " ",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[33m   /\033[0m(___(__) \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[33m  ⚡\033[34m‘ ‘\033[33m,⚡\033[34m‘  \033[0m",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m"
      ];
      break;
    
    case "200":
      return [
        "\033[33m   \\  /\033[0m        " + weatherDesc + " ",
        "\033[33m  _/\\\033[0m\033[0m .-. \033[0m    " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[33m   /\033[0m(___(__) \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[33m  ⚡\033[34m‘ ‘\033[33m,⚡\033[34m‘  \033[0m",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m"
      ];
      break;

    case "389":
      return [
        "\033[0m      .-.     \033[0m " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m  ‚‘\033[33m⚡\033[34m‘‚\033[33m⚡\033[34m‚‘ \033[0m",
        "\033[34m  ‚’‚’\033[33m⚡\033[34m’‚’  \033[0m"
      ];
      break;

    case "LightRain":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m",
        "\033[34m  ‘ ‘ ‘ ‘   \033[0m"
      ];
      break;

    case "266":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m",
        "\033[34m  ‘ ‘ ‘ ‘   \033[0m"
      ];
      break;

    case "293":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m",
        "\033[34m  ‘ ‘ ‘ ‘   \033[0m"
      ];
      break;

    case "296":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m   ‘ ‘ ‘ ‘  \033[0m",
        "\033[34m  ‘ ‘ ‘ ‘   \033[0m"
      ];
      break;

    case "359":
      return [
        "\033[0m      .-.     \033[0m " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m   ‚‘‚‘‚‘‚‘  \033[0m",
        "\033[34m   ‚’‚’‚’‚’  \033[0m"
      ];
      break;

    case "302":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m   ‚‘‚‘‚‘‚‘  \033[0m",
        "\033[34m   ‚’‚’‚’‚’  \033[0m"
      ];
      break;

    case "308":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m   ‚‘‚‘‚‘‚‘  \033[0m",
        "\033[34m   ‚’‚’‚’‚’  \033[0m"
      ];
      break;

    case "320":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[36m   *  *  * \033[0m",
        "\033[36m  *  *  *  \033[0m"
      ];
      break;
    
    case "227":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[36m   *  *  * \033[0m",
        "\033[36m  *  *  *  \033[0m"
      ];
      break;

    case "329":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[36m   * * * * \033[0m",
        "\033[36m  * * * *  \033[0m"
      ];
      break;

    case "332":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[36m   * * * * \033[0m",
        "\033[36m  * * * *  \033[0m"
      ];
      break;

    case "338":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[36m   * * * * \033[0m",
        "\033[36m  * * * *  \033[0m"
      ];
      break;
    case "230":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[36m   * * * * \033[0m",
        "\033[36m  * * * *  \033[0m"
      ];
      break;

    case "182":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m",
      ];
      break;

    case "185":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m",
      ];
      break;

    case "281":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m",
      ];
      break;
    
    case "284":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m",
      ];
      break;

    case "314":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m",
      ];
      break;

    case "317":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m",
      ];
      break;

    case "350":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m",
      ];
      break;

    case "377":
      return [
        "\033[0m      .-.     \033[0m   " + weatherDesc + " ",
        "\033[0m    (   ).   \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[0m   (___(__)  \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "\033[34m   ‘ \033[0m*\033[34m ‘ \033[0m*  \033[0m",
        "\033[0m  *\033[34m ‘ \033[0m*\033[34m ‘   \033[0m",
      ];
      break;
    case "143":
      return [
        "\033[36m _ - _ - _ - \033[0m  "  + weatherDesc + " ",
        "\033[36m  _ - _ - _  \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[36m _ - _ - _ - \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "             "
      ];
      break;

    case "248":
      return [
        "\033[36m _ - _ - _ - \033[0m  "  + weatherDesc + " ",
        "\033[36m  _ - _ - _  \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[36m _ - _ - _ - \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "             "
      ];
      break;

    case "260":
      return [
        "\033[36m _ - _ - _ - \033[0m  "  + weatherDesc + " ",
        "\033[36m  _ - _ - _  \033[0m " + "\033[" + tempColor +"m" + temp + "\033[0m °F",
        "\033[36m _ - _ - _ - \033[0m " + arrow + " " + "\033["+ windColor + "m" + windSpeed + "\033[0m" + " mph",
        "             "
      ];
      break;
  }
}


function main(data) {
  data = JSON.parse(data);
  const d = new Date();
  const currHour = d.getHours();
  let diagram = [];
  diagram.push(printWeatherInfo(data.current_condition[0]));
  let headerOutput = "      Current Conditions"; 
  if (currHour < 12) {
    headerOutput += new Array(8).join(' ') + "             Noon";
    diagram.push(printWeatherInfo(data.weather[0].hourly[4]));
  }
  if (currHour < 24) {
    headerOutput += new Array(diagram.length * 27 - headerOutput.length ).join(' ') + "               Evening";
    diagram.push(printWeatherInfo(data.weather[0].hourly[7]));
  }
  
  let size = 5;
  spacing = "|";
  const stringLength = require('string-length');
  let cellLength = stringLength(diagram[0][0]);
  for (i = 0; i < size; i++) {
    for (j = 0; j < diagram.length; j++){
      if (diagram[j][i]){
        if (cellLength < stringLength(diagram[j][i])){
          cellLength = stringLength(diagram[j][i]);
        }
      }
    }
  }
  

  console.log(headerOutput);
  console.log( "┌" + new Array(diagram.length * cellLength+diagram.length).join('─') + "┐" );
  for (i = 0; i < size; i++) {
    output = "";
    for (j = 0; j < diagram.length; j++){
      if (diagram[j][i]) {
        extraPadding = cellLength - stringLength(diagram[j][i]);
        output += "│" + diagram[j][i] + new Array(extraPadding+1).join(' ');
      }
      else{
        output += "│" + new Array(cellLength+1).join(' ')
      }
    }

    console.log(output + "│");
  }
  console.log( "└" + new Array(diagram.length * cellLength+diagram.length).join('─') + "┘");
    
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
    if (data.city == "San Jose") {
      data.city = "Dolores Heights";
    }
    console.log("\n  Weather report: " + data.city + ", " + data.region + ", " + data.country + "\n");
    getWeatherData(data.city);
  })
})
locReq.on('error', error => {
  console.error(error)
})

locReq.end()
