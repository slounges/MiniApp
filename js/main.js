import { fetchData } from "./modules/TheDataMiner.js";
import MiniApp from "./modules/TheMiniApp.js";

(() => {
    let vue_vm = new Vue({
        // el: "#app",
        
        data: {
            message: "SELECT YOUR MINI:",
            removeAformat: true,
            showBioData: false,
            professors: [],
            currentProfData: {}
        }, 


        //this is the mounted lifecycle hook. Vue is done creating itself, and has attached itself to the "app" div on the page
        mounted: function() {
            console.log("Vue is mounted, trying a fetch for initial data");

            fetchData("./includes/index.php")
                .then(data => {
                    data.forEach(prof => this.professors.push(prof));
                })
                .catch(err => console.error(err));
        },

        //run a method when we change our view (update the DOM with vue)
        updated: function() {
            console.log('Vue just updated the DOM');
        },

        methods: {
            logClicked() {
                console.log("clicked on a car name");
            },

            clickHeader() {
                console.log("clicked on header");
            },

            showProfData(target) {
                debugger;
                // remove this prof from the professors array
                console.log('click to view car data ', target, target.name);
                // the "this" keyword inside a vue instance REFERS to the vue instance itself by default
                this.showBioData = this.showBioData ? false: true;

                // make the selected prof's data visable
                this.currentProfData = target;
            },

            removeProf(target){
                // remove this prof from the professors array
                console.log('click to view prof bio data ', target, target.name);
                // the "this" keyword inside a vue instance REFERS to the vue instance itself by default

                // make the selected prof's data visable
                //this.professors.splice(this.professors.indexOf(target), 1);
                this.$delete(this.professors, target);
            }
        },
        components:{
            "mini-app": MiniApp
        }

    }).$mount("#app");
})();   