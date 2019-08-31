var cnt = []
bootstrapValidate('#UIDAI', 'max:12:Please enter complete Aadhaar Number', function (isValid) {
    if (!isValid) {
        cnt[0] = 0;
        console.log("INVALID")
    } else
        cnt[0] = 1;
});
bootstrapValidate('#UIDAI', 'numeric:Please enter numbers only!', function (isValid) {
    if (!isValid) {
        cnt[1] = 0;
        console.log("INVALID")
    } else
        cnt[1] = 1;
})
bootstrapValidate('#UIDAI', 'min:12:Please enter complete Aadhaar Number', function (isValid) {
    if (!isValid) {
        cnt[12] = 0;
        console.log("INVALID")
    } else
        cnt[12] = 1;
})
bootstrapValidate('#InputPhoneNumber', 'max:10:Please check your mobile number', function (isValid) {
    if (!isValid) {
        cnt[2] = 0;
        console.log("INVALID")
    } else
        cnt[2] = 1;
});
bootstrapValidate('#InputPhoneNumber', 'numeric:Please enter numbers only!', function (isValid) {
    if (!isValid) {
        cnt[3] = 0;
        console.log("INVALID")
    } else
        cnt[3] = 1;
})
bootstrapValidate('#InputName', 'max:25:Please check your mobile number', function (isValid) {
    if (!isValid) {
        cnt[4] = 0;
        console.log("INVALID")
    } else
        cnt[4] = 1;
});
bootstrapValidate('#InputName', 'max:25:Please check your mobile number', function (isValid) {
    if (!isValid) {
        cnt[5] = 0;
        console.log("INVALID")
    } else
        cnt[5] = 1;
});
bootstrapValidate('#InputName', 'alpha:You can only input alphabetic characters', function (isValid) {
    if (!isValid) {
        cnt[6] = 0;
        console.log("INVALID")
    } else
        cnt[6] = 1;
})
bootstrapValidate('#InputEmail', 'email:Enter a valid email address', function (isValid) {
    if (!isValid) {
        cnt[7] = 0;
        console.log("INVALID")
    } else
        cnt[7] = 1;
})
bootstrapValidate('#InputAddress', 'max:100:Please keep it within 100 characters', function (isValid) {
    if (!isValid) {
        cnt[8] = 0;
        console.log("INVALID")
    } else
        cnt[8] = 1;
});
bootstrapValidate('#InputSpaceAddress', 'max:100:Please keep it within 100 characters', function (isValid) {
    if (!isValid) {
        cnt[9] = 0;
        console.log("INVALID")
    } else
        cnt[10] = 1;
});
bootstrapValidate('#InputPrice', 'max:6:Please keep it within 6 characters', function (isValid) {
    if (!isValid) {
        cnt[11] = 0;
        console.log("INVALID")
    } else
        cnt[11] = 1;
});
bootstrapValidate('#InputPrice', 'numeric:Numbers only please', function (isValid) {
    if (!isValid) {
        cnt[12] = 0;
        console.log("INVALID")
    } else
        cnt[11] = 1;
});


document.getElementById('next1').onclick = function () {
    console.log("Proceeding to section 2");
    document.getElementById('div1').classList.add('hidden');
    document.getElementById('div1').classList.remove('visibleform');
    document.getElementById('div2').classList.add('visibleform');
    document.getElementById('div2').classList.remove('hidden');
};

document.getElementById('next2').onclick = function () {
    console.log("Proceeding to section 3");
    document.getElementById('div3').classList.add('visibleform');
    document.getElementById('div3').classList.remove('hidden');
    document.getElementById('div2').classList.add('hidden');
    document.getElementById('div2').classList.remove('visibleform');
    document.getElementById('fakesubmit').classList.remove('hidden');
};

document.getElementById('fakesubmit').onclick = function () {
    console.log("SUBMISSION ATTEMPTED");
    document.getElementById('div1').classList.remove('hidden');
    document.getElementById('div2').classList.remove('hidden');
    document.getElementById('div3').classList.remove('hidden');
    document.getElementById('next1').classList.add("hidden");
    document.getElementById('next2').classList.add("hidden");
    document.getElementById('fakesubmit').classList.add("hidden");
    document.getElementById('realsubmit').classList.remove("hidden");

}

document.getElementById('realsubmit').onclick = function () {
    console.log("cnt value is : " + cnt);
    if (document.getElementById('InputRooms').value > 30)
        cnt[0] = 0;
    if (document.getElementById('InputTSA').length < 1)
        cnt[0] = 0;
    if (document.getElementById('InputPrice').value < 5000)
        cnt[0] = 0;
    if (!document.getElementById('Check1').checked)
        cnt[0] = 0;
    if (!document.getElementById('InputArea').value)
        cnt[0] = 0;
    for (var i = 0; i < cnt.length; i++)
        if (cnt[i] == 0) {
            alert("Sorry! Please check your input");
            return;
        }
    document.getElementById('details').submit();


}
