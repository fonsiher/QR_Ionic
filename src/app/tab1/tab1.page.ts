import { Component } from '@angular/core';
import { BarcodeScanner } from '@awesome-cordova-plugins/barcode-scanner/ngx';
import { DatalocalService } from '../services/datalocal.service';
import{Storage} from '@ionic/storage-angular';

@Component({
  selector: 'app-tab1',
  templateUrl: 'tab1.page.html',
  styleUrls: ['tab1.page.scss']
})
export class Tab1Page {

  constructor(private barcodeScanner: BarcodeScanner,private dataLocal:DatalocalService, private storage: Storage) {

  }

  async ngOnInit(){
    this.storage.create();
  }

  ionViewWillEnter(){
    this.scan();
  }

scan(){
  this.barcodeScanner.scan().then(barcodeData => {
    console.log('Barcode data', barcodeData.text);
    if(!barcodeData.cancelled){
      this.dataLocal.saveRegistro(barcodeData.format,barcodeData.text);
    }
   }).catch(err => {
       console.log('Error', err);
       this.dataLocal.saveRegistro('http','https\\:www.ups.edu.ec');
       console.log('Dato no Registrado')
   });
}

}
