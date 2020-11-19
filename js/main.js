//this is a variation on our module theme
const myVM = (() => {
    let vue_vm = new Vue({
        el: "#app",

        data: {
            message: "Hello from Vue!",
            anotherMessage: "Hi"
        }
    })
})();