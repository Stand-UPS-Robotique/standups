import VueFeather from "vue-feather";

declare module "vue" {
  export interface GlobalComponents {
    VueFeather: typeof VueFeather;
  }
}
