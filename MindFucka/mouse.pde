PVector mousePressedPosition = new PVector(0,0);
boolean isMouseOver(PVector leftTop, PVector rightBottom){
    return ((mouseX > leftTop.x)&&(mouseX < rightBottom.x)&&(mouseY > leftTop.y)&&(mouseY < rightBottom.y));
}
void mouseClicked() {
    buttons.clicked();
}
void mousePressed(){
  mousePressedPosition.x = mouseX;
  mousePressedPosition.y = mouseY;
}
void mouseMoved(){
    buttons.hover();
}
void mouseDragged(){

}
void mouseReleased(){

}
