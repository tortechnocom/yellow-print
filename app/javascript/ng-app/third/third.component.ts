import { Component } from '@angular/core';
import templateString from './third.html';
import { HttpClient } from '@angular/common/http';

@Component({
  template: templateString
})
export class ThirdComponent {
  data: any;
  constructor(private http: HttpClient) {
    console.log("===> start");
    this.http.get('/third').subscribe((res: any[]) => {
      this.data = res;
    });
    console.log("===> end");
  }
}
