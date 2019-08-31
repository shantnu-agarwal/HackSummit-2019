bootstrapValidate('#UIDAI', 'max:12:Enter complete Aadhaar Number');
bootstrapValidate('#UIDAI', 'numeric:Please enter numbers only!')
bootstrapValidate('#InputPhoneNumber', 'max:10:Please check your mobile number');
bootstrapValidate('#InputPhoneNumber', 'numeric:Please enter numbers only!')
bootstrapValidate('#InputName', 'max:25:Please check your mobile number');
bootstrapValidate('#InputName', 'max:25:Please check your mobile number');
bootstrapValidate('#InputName', 'alpha:You can only input alphabetic characters')
bootstrapValidate('#InputEmail', 'email:Enter a valid email address')
bootstrapValidate('#InputAddress', 'max:100:Please keep it within 100 characters');
bootstrapValidate('#InputSpaceAddress', 'max:100:Please keep it within 100 characters');
bootstrapValidate('#InputPrice', 'max:6:Please keep it within 6 characters');


document.getElementById('next1').onclick = function () {
    if(document.getElementById('UIDAI').value.length!=1);
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

};