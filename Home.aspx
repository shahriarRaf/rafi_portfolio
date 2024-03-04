<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="rafi_portfolio.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTP-8">
        <meta http-equiv="X-UA-compatible"content="IE=edge">
        <meta name="viewpoint" content="width=device-width,initial-scale=1.0">
        <title>Personal Portfolio</title>
        <link rel="stylesheet" href="style.css">
        
        <script src="https://kit.fontawesome.com/8bb94c46f7.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
        <div id="header">
            <div class="container">
                <nav>
                    <img src="additional/RAFI_transparent.png" class="logo">
                    <ul id="sidemenu">
                        <li><a href="#header">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#services">Services</a></li>
                        <li><a href="#portfolio">Portfolio</a></li>
                        <li><a href="#contact">Contact</a></li>
                        <i class="fas fa-times" onclick="closemenu()"></i>
                    </ul>
                    <i class="fas fa-bars" onclick="openmenu()"></i>
                </nav>
                <div class="header-text">
                    <p>UI/UX Designer</p>
                    <h1>Hi,I am Shahriar Al <span>Rafi</span> <br> from Bangladesh</h1>
                </div>
            </div>
        </div>
         <!-----about----->
    <div id="about">
        <div class="container">
            <div class="row">
                <div class="about-col-1">
                    <img src="additional/MVIMG_20220513_134610-removebg-preview.jpg">
                </div>
                <div class="about-col-2">
                    <h1 class="sub-title">About Me</h1>
                    <p>
                        As a dedicated UI/UX designer based in Bangladesh, I specialize in crafting intuitive digital experiences that prioritize user needs and enhance engagement. With a keen eye for aesthetics and a passion for problem-solving, I strive to create meaningful designs that leave a lasting impact. Collaborative, forward-thinking, and always eager to push the boundaries of innovation, I'm committed to delivering exceptional results and fostering connections within the design community</p>
                     <div class="tab-titles">
                        <p class="tab-links active-link" onclick="opentab('skills')">Skills</p>
                        <p class="tab-links" onclick="opentab('experience')">Experience</p>
                        <p class="tab-links" onclick="opentab('education')">Education</p>
                     </div>
                    <div class="tab-contents active-tab" id="skills">
                        <ul>
                            <li><span>UI/UX</span><br>Design web/App interfaces</li>
                            <li><span>Web Development</span><br>web page</li>
                            <li><span>App Development</span><br>Building Android/iOS</li>
                        </ul>
                    </div>
                    <div class="tab-contents" id="experience">
                        <ul>
                            <li><span>2021-current</span><br>UI/UX designer at IT Institute</li>
                            <li><span>2019-2021</span><br>Team Lead at StarApp</li>
                            <li><span>2016-2017</span><br>Internship at eKart</li>
                        </ul>
                    </div>
                    <div class="tab-contents" id="education">
                        <ul>
                            <li><span>2016</span><br>UI/UX Design at ET Institute</li>
                            <li><span>2018</span><br>MBA from MIT</li>
                            <li><span>2021</span><br>BBA from Jajhas</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-----servicess-------->
     <div id="services">
       <div class="container">
        <h1 class="sub-title">My Services</h1>
        <div class="services-list">

            <asp:Repeater ID="servicesrepeater" runat="server">
                <ItemTemplate>
                    <div>
                        
                        <h2>
                            <asp:Label ID="servicename" runat="server" Text='<%# Eval("service_name") %>'></asp:Label>
                        </h2>
                        <p>
                            <asp:Label ID="servicedescription" runat="server" Text='<%# Eval("service_description") %>'></asp:Label>
                            
                        </p>
                        
                        <a href= "https://github.com/shahriarRaf/html-css/tree/develop">Learn more</a>
                      </div>
                </ItemTemplate>


            </asp:Repeater>
            
            
            

        </div>
       </div>
        
     </div>

     <!-----portfilio------>
     <div id="portfolio">
        <div class="container">
            <h1 class="sub-title">My Work</h1>
            <div class="work-list">
                <div class="work">
                     <img src="additional/work-1.png">
                     <div class="layer">
                        <h3>Social Media App</h3>
                        <p>The App connects you the talentted peaple around the word</p>
                        <a href="https://en.softonic.com/"><i class="fa-solid fa-link"></i></a>
                     </div>
                </div>
                <div class="work">
                    <img src="additional/work-2.png">
                    <div class="layer">
                        <h3>Music App</h3>
                        <p>The App connects you to talented people around the world.</p>
                        <a href="https://play.google.com/store/apps/details?id=com.player.musica&hl=en&gl=US&pli=1"><i class="fa-solid fa-link"></i></a>
                    </div>
                </div>
                
                <div class="work">
                    <img src="additional/work-3.png">
                    <div class="layer">
                        <h3>Music App</h3>
                        <p>The App connects you to talented people around the world.</p>
                        <a href="https://apps.apple.com/us/app/apple-music/id1108187390"><i class="fa-solid fa-link"></i></a>
                    </div>
                </div>
            </div>
           
        </div>
     </div>


     <!------contact------>
     <div id="contact">
        <div class="container">
            <div class="row">
                <div class="contact-left">
                    <h1 class="sub-title">Contact Me</h1>
                    <p><i class="fa-regular fa-envelope"></i> contact@emaple.com</p>
                    <p><i class="fa-solid fa-mobile-retro"></i> 0124456778</p>
                    <div class='social-icon'>
                        <a href="https://www.facebook.com/shahriaral.rafi.50/"><i class="fa-brands fa-facebook"></i></a>
                        <a href=""><i class="fa-brands fa-square-twitter"></i></a>
                        <a href=""><i class="fa-brands fa-linkedin"></i></a>
                        <a href=""><i class="fa-brands fa-instagram"></i></a>
                    </div>
                    <a href="additional//my-cv.pdf" download class="btn btn2">Download CV</a>
                </div>
                <div class="contact-right">
                    <form name="submit-to-google-sheet">
                        <input type="text"  name="Name" placeholder="Your Name" required>
                        <input type="email" name="email" placeholder="Your Email" required>
                        <textarea name="Messege" rows="6" placeholder="Your Messege"></textarea>
                        <button type="submit" class="btn btn2">Submit</button>
                    </form>
                    <span id="msg"></span>
                </div>
            </div>
        </div>
        <div class="copyright">
            <p>Copyright @ Shahriar Al Rafi</p>
        </div>
     </div>
               
    <script>
        var tablinks = document.getElementsByClassName("tab-links");
        var tabcontents = document.getElementsByClassName("tab-contents");
        function opentab(tabname) {
            for (tablink of tablinks) {
                tablink.classList.remove("active-link");
            }
            for (tabcontent of tabcontents) {
                tabcontent.classList.remove("active-tab");
            }
            event.currentTarget.classList.add("active-link");
            document.getElementById(tabname).classList.add("active-tab");
        }
    </script>
    <script>
        var sidemenu=document.getElementById("sidemenu");
        function openmenu(){
            sidemenu.style.right="0";
        }
        function closemenu(){
            sidemenu.style.right="-200px";
        }
    </script>
      <script>
           const scriptURL = 'https://script.google.com/macros/s/AKfycbz7n0kccUTzDWbqYkWRL1-GOqByzaDnfQl0Zy6hMiS5m3Wt6bJqjaoK2JdzFjnCpJ2V7Q/exec'
           const form = document.forms['submit-to-google-sheet']
            const msg = document.getElementById("msg")
            form.addEventListener('submit', e => {
             e.preventDefault()
                 fetch(scriptURL, { method: 'POST', body: new FormData(form) })
                      .then(response => {
                      msg.innerHTML = "Messege sent successfully"
                        setTimeout(function () {
                          msg.innerHTML = ""
                         }, 5000)
                      form.reset()
                   })
                 .catch(error => console.error('Error!', error.message))
             })
          </script>


   
        </div>
    </form>
</body>
</html>
