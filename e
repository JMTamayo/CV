[33mcommit d725f27a3257af1561429f1970889a06aedb0580[m[33m ([m[1;36mHEAD -> [m[1;32mdev[m[33m)[m
Author: JMTamayo <jmtamayog23@gmail.com>
Date:   Sat Sep 17 12:27:32 2022 -0500

    Updatin Courses section: structure and styles. Mobile version (375px) finished

[1mdiff --git a/css/styles.css b/css/styles.css[m
[1mindex d483542..5450a4c 100644[m
[1m--- a/css/styles.css[m
[1m+++ b/css/styles.css[m
[36m@@ -21,6 +21,8 @@[m [mhtml {[m
     --gcl1:             #ececec;[m
     --gcl2:             #adadad;[m
     --gcl3:             #808080;[m
[32m+[m[32m    --grcl0:            #00ff001a;[m
[32m+[m[32m    --ycl0:             #FFD6001a;[m
     [m
     /*Font properties and Font sizes*/[m
     font-family:        'Ubuntu', sans-serif;[m
[36m@@ -205,6 +207,59 @@[m [mhtml {[m
         align-items:            flex-start;[m
     }[m
 [m
[32m+[m[32m    .term_bkg {[m
[32m+[m[32m        /*Box Model:*/[m
[32m+[m[32m        margin:                 var(--ps1);[m
[32m+[m[32m        height:                 calc((394/360)*12rem);[m
[32m+[m[32m        width:                  12rem;[m
[32m+[m
[32m+[m[32m        /*Background:*/[m
[32m+[m[32m        background-repeat:      no-repeat;[m
[32m+[m[32m        background-size:        contain;[m
[32m+[m
[32m+[m[32m        /*Display:*/[m
[32m+[m[32m        display:                flex;[m
[32m+[m[32m        flex-direction:         column;[m
[32m+[m[32m        justify-content:        space-between;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m        .yterm {[m
[32m+[m[32m            /*Background:*/[m
[32m+[m[32m            background-image:   url("../img/terminal_card/terminal-yellow.png");[m
[32m+[m[32m            box-shadow:         var(--ps0) var(--ps0) var(--ps0) var(--ycl0);[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        .gterm {[m
[32m+[m[32m            /*Background:*/[m
[32m+[m[32m            background-image:   url("../img/terminal_card/terminal-green.png");[m
[32m+[m[32m            box-shadow:         var(--ps0) var(--ps0) var(--ps0) var(--grcl0);[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        .term_bkg2 {[m
[32m+[m[32m            /*Box Model:*/[m
[32m+[m[32m            padding:            0 var(--ps1);[m
[32m+[m[32m            height:             calc((80/360)*12rem);[m
[32m+[m[32m            width:              100%;[m
[32m+[m
[32m+[m[32m            /*Display:*/[m
[32m+[m[32m            display:            flex;[m
[32m+[m[32m            align-items:        flex-end;[m
[32m+[m[32m            flex-direction:     column;[m
[32m+[m[32m            justify-content:    center;[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        .term_bkg3 {[m
[32m+[m[32m            /*Box Model:*/[m
[32m+[m[32m            padding:            0 var(--ps1);[m
[32m+[m[32m            height:             calc((297/360)*12rem);[m
[32m+[m[32m            width:              100%;[m
[32m+[m
[32m+[m[32m            /*Display:*/[m
[32m+[m[32m            display:            flex;[m
[32m+[m[32m            flex-direction:     column;[m
[32m+[m[32m            justify-content:    center;[m
[32m+[m[32m        }[m
[32m+[m
 /*Text labels:*/[m
 [m
     h1#name {[m
[36m@@ -255,6 +310,15 @@[m [mhtml {[m
         color:                  var(--bcl0);[m
     }[m
 [m
[32m+[m[32m    .sm_txt {[m
[32m+[m[32m        /*Font:*/[m
[32m+[m[32m        font-size:              var(--fs0);[m
[32m+[m[32m        font-weight:            normal;[m
[32m+[m[32m        line-height:            var(--fs1);[m
[32m+[m[32m        text-align:             center;[m
[32m+[m[32m        color:                  var(--bcl0);[m
[32m+[m[32m    }[m
[32m+[m
     a {[m
         /*Font:*/[m
         text-decoration:        none;[m
[36m@@ -308,4 +372,9 @@[m [mhtml {[m
         /*Box model:*/[m
         height:                 fit-content;[m
         width:                  calc(2*var(--ps2));    [m
[31m-    }[m
\ No newline at end of file[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m
[32m+[m[32m.check {[m
[32m+[m[32m    border: solid 1px red;[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/index.html b/index.html[m
[1mindex 5cc19d4..a164789 100644[m
[1m--- a/index.html[m
[1m+++ b/index.html[m
[36m@@ -14,12 +14,18 @@[m
 <body>[m
     <main class="fr">[m
             <section class="left_fr">[m
[32m+[m[41m                [m
[32m+[m[32m                <!--Name Section-->[m
                 <article class="cont1">[m
                     <h1 id="name">juan manuel <b>tamayo gutiérrez</b></h1>[m
                 </article>[m
[32m+[m
[32m+[m[32m                <!--Profile Photo Section-->[m
                 <article class="cont1">[m
                     <img id="profile_ph" src="./img/profile/new2.png" alt="_">[m
                 </article>[m
[32m+[m
[32m+[m[32m                <!--Profile Description Section-->[m
                 <article class="cont1">[m
                     <div class="cont2">[m
                         <img class="sec_img" src="./img/sections/user.png" alt="_">[m
[36m@@ -27,6 +33,8 @@[m
                     </div>[m
                     <p class="gen_txt cont2">Chemical engineer with 5+ years of experience leading production processes and operational resources. With a wide range of scope, from plant manpower management to production planning design, follow up and reporting. My latest experience involves working towards the compliance of the production strategic initiatives, by leaning on data analysis skills and by using technical tools for decision making.</p>[m
                 </article>[m
[32m+[m
[32m+[m[32m                <!--Skills Section-->[m
                 <article class="cont1">[m
                     <div class="cont2">[m
                         <img class="sec_img" src="./img/sections/skills.png" alt="_">[m
[36m@@ -47,6 +55,8 @@[m
                         <h3 class="subt2_txt skill_cont">Figma</h3>[m
                     </div>[m
                 </article>[m
[32m+[m
[32m+[m[32m                <!--Interests Section-->[m
                 <article class="cont1">[m
                     <div class="cont2">[m
                         <img class="sec_img" src="./img/sections/idea.png" alt="_">[m
[36m@@ -82,7 +92,9 @@[m
                             <h3 class="subt2_txt">Keep Learning</h3>[m
                         </div>[m
                     </div>[m
[31m-                </article>                [m
[32m+[m[32m                </article>[m[41m  [m
[32m+[m[41m                [m
[32m+[m[32m                <!--Languages Section-->[m
                 <article class="cont1">[m
                     <div class="cont2">[m
                         <img class="sec_img" src="./img/sections/languages.png" alt="_">[m
[36m@@ -109,6 +121,8 @@[m
                         </div>[m
                     </div>[m
                 </article>[m
[32m+[m
[32m+[m[32m                <!--Contact Information Section-->[m
                 <article class="cont1" id="contact_inf">[m
                     <div class="cont2">[m
                         <img class="sec_img" src="./img/contact_info/home-location.png" alt="_">[m
[36m@@ -132,186 +146,207 @@[m
                     </div>                  [m
                 </article>[m
             </section>[m
[32m+[m
[32m+[m[32m            <!--Work Experience Section-->[m
             <section class="right_fr">[m
                 <article class="cont1">[m
                     <div class="cont2">[m
                         <img class="sec_img" src="./img/sections/suitcase.png" alt="_">[m
                         <h2 class="subt_txt indent1">work experience</h2>[m
                     </div>[m
[31m-                    <div class="cont4">[m
[31m-                        <h3 class="subt3_txt">@ sanimax</h3>[m
[31m-                        <div class="locat_cont indent3">[m
[31m-                            <img class="loc