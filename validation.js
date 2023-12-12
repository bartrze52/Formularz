$(document).ready(function () {
    $("#registrationForm").validate({
      rules: {
        firstName: "required",
        lastName: "required",
        birthdate: "required",
        email: {
          required: true,
          email: true
        },
        phone: "required",
        province: "required",
        gender: "required",
      },
      messages: {
        firstName: "Proszę podać imię",
        lastName: "Proszę podać nazwisko",
        birthdate: "Proszę podać datę urodzenia",
        email: {
          required: "Proszę podać adres email",
          email: "Proszę podać prawidłowy adres email"
        },
        phone: "Proszę podać numer telefonu",
        province: "Proszę wybrać województwo",
        gender: "Proszę wybrać płeć",
      },
      errorElement: "div",
      errorPlacement: function (error, element) {
        error.addClass("invalid-feedback");
        element.closest(".form-group").append(error);
      },
      highlight: function (element, errorClass, validClass) {
        $(element).addClass("is-invalid").removeClass("is-valid");
      },
      unhighlight: function (element, errorClass, validClass) {
        $(element).removeClass("is-invalid").addClass("is-valid");
      }
    });
  });