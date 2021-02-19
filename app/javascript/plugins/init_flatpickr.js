import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

const initFlatpickr = () =>  {
   const bookingForm = document.getElementById('booking-form');
   if (bookingForm) {
     const bookings = []
    // const bookings = JSON.parse(bookingForm.dataset.bookings);
    flatpickr("#range_start", {
      plugins: [new rangePlugin({ input: "#range_end"})],
      minDate: "today",
      inline: true,
      dateFormat: "Y-m-d",
      "disable": bookings,
      onChange: function(selectedDates, dateStr, instance) {
        console.log(selectedDates)
        if (selectedDates.length === 2) {
          const differenceInTime = selectedDates[1].getTime() - selectedDates[0].getTime()
          const differenceInDays = differenceInTime / (1000 * 3600 * 24) + 1
          console.log(differenceInDays)
          const price = parseFloat(document.getElementById("booking-form").dataset.price, 10)
          console.log(price)
          const totalAmount = price * differenceInDays
          document.getElementById("total-amount").innerText = `Prix total : ${totalAmount.toFixed(2)} €` 
        }
       // console.log(dateStr)
  //      console.log(instance)
      }
    })
  }
}
export { initFlatpickr }