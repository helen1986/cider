{{define "_style"}}
<style>
        body {
            color: #000000;
            line-height: 1.6em;
            padding: 1em;
            box-sizing: border-box;
            margin: auto;
            max-width: 72em;
            background: #fefefe;
            font-family: Fira Code,Monaco,Consolas,Ubuntu Mono,PingFang SC,Hiragino Sans GB,Microsoft YaHei,WenQuanYi Micro Hei,monospace,sans-serif;
        }
        blockquote {
            background: #f9f9f9;
            border-left: 10px solid #ccc;
            margin: 1.5em 10px;
            padding: 0.5em 10px;
            quotes: "\201C""\201D""\2018""\2019";
        }
        blockquote:before {
            color: #ccc;
            content: open-quote;
            font-size: 4em;
            line-height: 0.1em;
            margin-right: 0.25em;
            vertical-align: -0.4em;
        }
        blockquote p {
            display: inline;
        }
        em{
            color: grey;
        }

        pre{
            background-color: #eed;
        }
        code{
            background-color: #eed;
        }
        nav {
            margin-bottom: 20px;
        }
        small{
            font-size: smaller;
        }
        a {
            color: #007bff;
        }

        a:hover,
        a:focus {
            color: #0056b3;
        }

        a:visited{
            color: grey;
        }

        article {
            padding-bottom: 1em;
        }

        img {
            max-width: 100%;
        }

        body {
            background-color: #fff;
            color: #212529;
        }

        .comments{
            text-align: center;
            margin-top: 20px;
            padding: 5px 10px;
            font-size: .8rem;
            text-transform: uppercase;
            text-decoration: none;
            letter-spacing: .1em;
            z-index: 1;
        }

        .utterances{
            max-width: 100%;
        }
        .hr-middle-text{
            line-height: 1em;
            position: relative;
            outline: 0;
            border: 0;
            color: black;
            text-align: center;
            height: 1.5em;
            opacity: .5;
        }
        .hr-middle-text:before {
            content: '';
            background: linear-gradient(to right, transparent, black, transparent);
            position: absolute;
            left: 0;
            top: 50%;
            width: 100%;
            height: 1px;
        }
        .hr-middle-text:after{
            content: attr(data-content);
            position: relative;
            display: inline-block;
            color: black;
            padding: 0 .5em;
            line-height: 1.5em;
            background-color: #fcfcfa;
        }

        /* _nav style */
        .navbar-item::before {
            content: "[ ";
        }
        .navbar-item::after {
            content: " ]"
        }
        @media screen and (min-width: 300px) and (max-width: 700px) {
            .navbar {
                width: 100%;
                display: flex;
                align-items: center;
                justify-content: space-between;
            }
            .navbar-item {
                flex: 1;
                text-align: center;
                display: flex;
                align-items: center;
                justify-content: center;
                overflow: hidden;
            }
            
            .nav-btn {
                flex: 1;
                white-space: nowrap;
                text-overflow: ellipsis;
                overflow: hidden;
                text-align: center;
            }
        }
        /* _nav style end */

        /* index style */
        .posts-item {
            display: flex;
            flex-direction: column;
            margin-bottom: 20px;
        }
        @media screen and (min-width: 300px) and (max-width: 700px) {
            .posts-item {
                flex-direction: row;
                align-items: center;
                justify-content: space-around;
                margin-bottom: 10px;
            }
            .posts-item > a {
                display: inline-block;
                width: 70%;
                white-space: nowrap;
                text-overflow: ellipsis;
                overflow: hidden;
            }
            .posts-item > small {
                flex: 1;
                text-align: right;
            }
            article{
                letter-spacing: -0.003em;
                line-height: 28px;
                font-size: 18px;
                word-wrap: break-word;
            }
        }
        /* index style end */
        .meter { 
            height: 20px;
            position: relative;
            background: #555;
            border-radius: 25px;
            padding: 10px;
            box-shadow: inset 0 -1px 1px rgba(255, 255, 255, 0.3);
        }
        .meter > span {
            display: block;
            height: 100%;
            border-top-right-radius: 8px;
            border-bottom-right-radius: 8px;
            border-top-left-radius: 20px;
            border-bottom-left-radius: 20px;
            background-color: rgb(43,194,83);
            background-image: linear-gradient(
                center bottom,
                rgb(43,194,83) 37%,
                rgb(84,240,84) 69%
            );
            box-shadow: 
                inset 0 2px 9px  rgba(255,255,255,0.3),
                inset 0 -2px 6px rgba(0,0,0,0.4);
            position: relative;
            overflow: hidden;
        }

        .red > span {
            background-color: #f0a3a3;
            background-image: linear-gradient(to bottom, #f0a3a3, #f42323);
        }

        .meter > span:after {
            content: "";
            position: absolute;
            top: 0; left: 0; bottom: 0; right: 0;
            background-image: linear-gradient(
                -45deg, 
                rgba(255, 255, 255, .2) 25%, 
                transparent 25%, 
                transparent 50%, 
                rgba(255, 255, 255, .2) 50%, 
                rgba(255, 255, 255, .2) 75%, 
                transparent 75%, 
                transparent
            );
            z-index: 1;
            background-size: 50px 50px;
            animation: move 2s linear infinite;
            border-top-right-radius: 8px;
            border-bottom-right-radius: 8px;
            border-top-left-radius: 20px;
            border-bottom-left-radius: 20px;
            overflow: hidden;
        }
</style>
{{end}}
