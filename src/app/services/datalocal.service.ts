import { Injectable } from '@angular/core';
import { Registro } from '../modelos/registro';
import{Storage} from '@ionic/storage-angular';
import { NavController } from '@ionic/angular';
import { InAppBrowser } from '@ionic-native/in-app-browser/ngx';
@Injectable({
  providedIn: 'root'
})
export class DatalocalService {

  datos_guardados: Registro[]=[]

  constructor(private storage: Storage, private navctrl: NavController,private inAppB: InAppBrowser) {
    this.cargarStorage();
   }

  async cargarStorage(){
    this.datos_guardados = await this.storage.get('registros')||[];
  }



  async saveRegistro(format:string, text:string){
    await this.cargarStorage();
    const newRegistro = new Registro(format,text);
    this.datos_guardados.unshift(newRegistro);
    this.storage.set('registros',this.datos_guardados);
    this.openRegistro(newRegistro);
  }

  openRegistro(registro:Registro){

    this.navctrl.navigateForward('/tabs/tab2');
    switch(registro.type){

      case'http':
        this.inAppB.create(registro.text,'_system');
        break;
      case 'geo':
        //Abrir mapas
        break;

    }

  }



}
