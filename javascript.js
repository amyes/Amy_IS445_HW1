var numberinput = prompt('Please enter a number between 2 and 10', '');

function Homework5() {
    if (numberinput <= 10 && numberinput >= 2) { 
        document.write('<h2>Your input number is ' + numberinput + '</h2> <br />'); 
        var millioncount = numberinput;
        for (var num = 0; millioncount > .000001 ; num++) {
            millioncount /= 2;
        }
        document.write('<h2>The number of times to divide the number  ' + numberinput + ' by 2 to get a value less than one millionth is ' + num + '</h2>');
        
        var star = numberinput;
        document.write('<p>');
        for (var star = numberinput; star !== 0; star--) {
            for (var starcount = star; starcount !== 0; starcount--) {
                document.write("*");
            }
            document.write('<br />');
        }
        document.write('</p>');

    }
    else {
        document.write('<h3>Your input number is ' + numberinput + '. The valid input number is between 2 and 10. Please reload this page and try again.</h2>');
    }
}