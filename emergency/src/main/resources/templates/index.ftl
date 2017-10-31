<!DOCTYPE html>
<html lang="en" xmlns:v-bind="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">

    <title>Title</title>
</head>
<body>

    <div id="app">
        <p>{{message | uppercase}}</p>
    </div>

    <div id="app-1">
        <span v-bind:title="message">
            悬停提示消息效果
        </span>
    </div>

    <div id="app-2">
        <span v-if="seen">现在你看到我了</span>
    </div>

    <div id="app-3">
        <ol>
            <li v-for="todo in todos">
                {{ todo.text }} -
                {{ todo.name }}
            </li>
        </ol>
    </div>

    <div id="app-4">
        <p>{{ message }}</p>
        <button v-on:click="reverseMessage">逆转消息</button>
    </div>

    <div id="app-5">
        <p>{{ message }}</p>
        <input v-model="message" />
    </div>

    <div id="app-6">
        <p>Hello Vue!</p>
        <p v-if="yes">Yess!</p>
        <p v-if="no">No!</p>
        <p v-if="age >= 25">Age:{{age}}</p>
        <p v-if="name.indexOf('jack') >=0 ">Name:{{name}}</p>
    </div>

    <div id="app-7">
        <p>正常信息：{{message}}</p>
        <p>反转信息：{{reversedMessage}}</p>
    </div>

    <div v-html="rawHtml">这是纯html？</div>

    <div id="app-8" v-bind:class="{ active: isActive }">test.</div>

    <div id="app-9" v-bind:class="classObject">11</div>
    <div id="app-10">
        <div v-if="type === 'A'">
            A
        </div>
        <div v-else-if="type === 'B'">
            B
        </div>
        <div v-else-if="type === 'C'">
            C
        </div>
        <div v-else>
            Not A/B/C
        </div>
    </div>
</body>

<script src="https://unpkg.com/vue/dist/vue.js"></script>
    <script>
        var app10 = new Vue({
            el: '#app-10',
            data: {
                type:'A'
            }
        })

        var app9 = new Vue({
            el: '#app-9',
            data: {
                isActive: true,
                error: null
            },
            computed: {
                classObject: function () {
                    return {
                        active: this.isActive && !this.error,
                        'text-danger': this.error && this.error.type === 'fatal'
                    }
                }
            }
        })

        var app8 = new Vue({
            el: '#app-8',
            data: {
                isActive: true
            }
        })

        var app7 = new Vue({
            el: '#app-7',
            data: {
                message:'这是测试内容'
            },
            computed: {
                reversedMessage: function () {
                    return this.message.split('').reverse().join('')
                }
            }
        })
        var app6 = new Vue({
            el: '#app-6',
            data:{
                yes:true,
                no:false,
                age:28,
                name:'kjkdj'
            }
        })


        var app5 = new Vue({
            el: '#app-5',
            data:{
                message:"这是一个测试"
            }
        })

        var app4 = new Vue({
            el: '#app-4',
            data:{
                message:"来反转我啊！"
            },
            methods:{
                reverseMessage: function () {
                    this.message = this.message.split('').reverse().join('')
                }
            }
        })

        var app3 = new Vue({
            el: '#app-3',
            data:{
                todos:[
                    {text:"学习嘎",name:"名字1"},
                    {text:"半年嘎",name:"名字2"},
                    {text:"至少嘎",name:"名字3"}
                ]
            }
        })
        app3.todos.push({text:'新项目', name: "名字4"});

        var app2 = new Vue({
            el: '#app-2',
            data: {
                seen:false
            }
        })

        var app1 = new Vue({
            el: '#app-1',
            data: {
                message:"页面加载于 " + new Date()
            }
        })

        var app = new Vue({
            el: '#app',
            data: {
                message: 'hello vue!!!!'
            }
        })
    </script>
</html>