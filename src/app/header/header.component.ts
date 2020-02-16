import { Component } from '@angular/core';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent {
  websiteName: string = 'FOURTIMES';
  websiteStage: string = 'OnBuild';


  buildStatus() {  //call by method
    return this.websiteStage; 
  }


}
