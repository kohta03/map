import Vue from 'vue/dist/vue.esm.js'

const LogOut= {
template: `<div id="map-area">
                <p>test</p>
            </div>`
}

var app = new Vue({
    el: '#home',
    data: {
        message: "マップ共有アプリ（仮）",
        user: document.getElementById("form_board_id").value.slice(0, document.getElementById("form_board_id").value.indexOf('@')),
        isUserActive: false,
        isGeneralActive: false,
    },
    components: {
        'LogOut': LogOut,
    }
});