const tieude1 = document.getElementById('tieude1');
const tieude2 = document.getElementById('tieude2');
const tieude3 = document.getElementById('tieude3');
tieude2.addEventListener('click', ()=>{
    if (tieude2.classList.contains('active')) {
        tieude2.classList.remove('active');
    }else{
        tieude2.classList.add('active');
    }
})
tieude1.addEventListener('click', ()=>{
    if (tieude1.classList.contains('active')) {
        tieude1.classList.remove('active');
    }else{
        tieude1.classList.add('active');
    }
})
tieude3.addEventListener('click', ()=>{
    if (tieude3.classList.contains('active')) {
        tieude3.classList.remove('active');
    }else{
        tieude3.classList.add('active');
    }
})