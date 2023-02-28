boolean isMousePressed = false;

boolean isMouseOver(PVector leftTop, PVector rightBottom){
    return ((mouseX > leftTop.x)&&(mouseX < rightBottom.x)&&(mouseY > leftTop.y)&&(mouseY < rightBottom.y));
}
void mouseClicked() {
    buttons.clicked();
}
void mousePressed(){
  
}
void mouseMoved(){
    buttons.hover();
}
void mouseDragged(){

}
void mouseReleased(){

}
