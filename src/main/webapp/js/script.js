/*================= Menu Toggle =================*/
const nav_menu = document.getElementById('nav-menu')
const nav_toggle = document.getElementById('nav-toggle')
const nav_close = document.getElementById('nav-close')
if (nav_toggle) {
  nav_toggle.addEventListener('click', () => {
    nav_menu.classList.add('show-menu')
  })
}
if (nav_close) {
  nav_close.addEventListener('click', () => {
    nav_menu.classList.remove('show-menu')
  })
}

/*================= Shadow Header =================*/
const ShadowHeader = () => {
  const header = document.getElementById('header')
  window.scrollY >= 50 ? header.classList.add('shadow-header') : header.classList.remove('shadow-header')
}
window.addEventListener('scroll', ShadowHeader)

/*================= Active link =================*/
const section_id = ["home", "about", "projects", "contact"]
const cur_section_id = document.querySelector('section').getAttribute('id')
section_id.forEach(id => {
  const section_class = document.getElementById(id + '_link')
  if (id === cur_section_id) {
    section_class.classList.add('active-link')
  } else {
    section_class.classList.remove('active-link')
  }
})

/*================= Dark Theme =================*/
const theme_button = document.getElementById('theme-button')
const dark_theme = 'dark-theme'
const icon_theme = 'ri-sun-line'
const selected_theme = localStorage.getItem('selected-theme')
const selected_icon = localStorage.getItem('selected-icon')

const GetCurrentTheme = () => document.body.classList.contains(dark_theme) ? 'dark' : 'light'
const GetCurrentIcon = () => theme_button.classList.contains(icon_theme) ? 'ri-moon-line' : 'ri-sun-line'

if (selected_theme) {
  document.body.classList[selected_theme === 'dark' ? 'add' : 'remove'](dark_theme)
  theme_button.classList[selected_icon === 'ri-moon-line' ? 'add' : 'remove'](icon_theme)
}

theme_button.addEventListener('click', () => {
  document.body.classList.toggle(dark_theme)
  theme_button.classList.toggle(icon_theme)
  localStorage.setItem('selected-theme', GetCurrentTheme())
  localStorage.setItem('selected-icon', GetCurrentIcon())
})

/*================= Form Validation =================*/
const contact_form = document.getElementById('contact-form')
const contact_prompt = document.getElementById('contact-prompt')

const ValidateForm = (e) => {
  const fail = () => {
    contact_prompt.textContent = 'Form input invalid ❌'
    setTimeout(() => {
      contact_prompt.textContent = ''
    }, 3000)
    contact_form.reset()
    e.preventDefault()
  }
  const success = () => {
    contact_prompt.textContent = 'Form submit successfully ✔️'
    setTimeout(() => {
      contact_prompt.textContent = ''
      contact_form.reset()
    }, 1000)

  }
  const form = e.target
  const name = form.name.value
  if (name == null || name == '') {
    alert("Name must be filled out");
    return fail()
  }
  const email = form.email.value
  const at_pos = email.indexOf('@')
  const dot_pos = email.lastIndexOf('.')
  if (at_pos < 1 || dot_pos < at_pos + 2 || email.length < dot_pos + 2) {
    alert("Email address invalid");
    return fail()
  }
  const message = form.message.value;
  if (message == null || message == '') {
    alert("Message cannot be blank")
    return fail()
  }

  success();
}

if (contact_form) {
  contact_form.addEventListener('submit', ValidateForm)
}

/*================= Scroll Reveal Animation =================*/
const sr = ScrollReveal({
  distance: '60px',
  duration: 1700,
  delay: 370
})

sr.reveal(`.home_profile`, {origin: 'right'})
sr.reveal(`.home_name, .home_info`, {origin: 'left'})

sr.reveal(`.about_profile`, {origin: 'right'})
sr.reveal(`.about_container .section_title-1, .about_info`, {origin: 'left'})
sr.reveal(`.resume_card`, {origin: 'top', interval: 100})

sr.reveal(`.projects_card`, {origin: 'top', interval: 100})

sr.reveal(`.contact_form_block`, {origin: 'right'})
sr.reveal(`.contact_card, .contact_social`, {origin: 'left'})