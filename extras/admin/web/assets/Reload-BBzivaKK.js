import{l as v,ar as y,as as k,h as _,_ as w,Z as u,r as x,$ as d,a0 as m,ac as l,a2 as S,a5 as s,ai as H,aa as N,a4 as i,f as r,F as T,ad as z,a6 as b,ae as p,a8 as h,a9 as f,G as q,aj as B}from"./index-DcSSbfia.js";const M='<g><path fill="none" stroke="currentColor" stroke-width="5" stroke-miterlimit="10" d="M58.4,51.7c-0.9-0.9-1.4-2-1.4-2.3s0.5-0.4,1.4-1.4 C70.8,43.8,79.8,30.5,80,15.5H70H30H20c0.2,15,9.2,28.1,21.6,32.3c0.9,0.9,1.4,1.2,1.4,1.5s-0.5,1.6-1.4,2.5 C29.2,56.1,20.2,69.5,20,85.5h10h40h10C79.8,69.5,70.8,55.9,58.4,51.7z"></path><clipPath id="uil-hourglass-clip1"><rect x="15" y="20" width="70" height="25"><animate attributeName="height" from="25" to="0" dur="1s" repeatCount="indefinite" values="25;0;0" keyTimes="0;0.5;1"></animate><animate attributeName="y" from="20" to="45" dur="1s" repeatCount="indefinite" values="20;45;45" keyTimes="0;0.5;1"></animate></rect></clipPath><clipPath id="uil-hourglass-clip2"><rect x="15" y="55" width="70" height="25"><animate attributeName="height" from="0" to="25" dur="1s" repeatCount="indefinite" values="0;25;25" keyTimes="0;0.5;1"></animate><animate attributeName="y" from="80" to="55" dur="1s" repeatCount="indefinite" values="80;55;55" keyTimes="0;0.5;1"></animate></rect></clipPath><path d="M29,23c3.1,11.4,11.3,19.5,21,19.5S67.9,34.4,71,23H29z" clip-path="url(#uil-hourglass-clip1)" fill="currentColor"></path><path d="M71.6,78c-3-11.6-11.5-20-21.5-20s-18.5,8.4-21.5,20H71.6z" clip-path="url(#uil-hourglass-clip2)" fill="currentColor"></path><animateTransform attributeName="transform" type="rotate" from="0 50 50" to="180 50 50" repeatCount="indefinite" dur="1s" values="0 50 50;0 50 50;180 50 50" keyTimes="0;0.7;1"></animateTransform></g>',Q=v({name:"QSpinnerHourglass",props:y,setup(e){const{cSize:a,classes:o}=k(e);return()=>_("svg",{class:o.value,width:a.value,height:a.value,viewBox:"0 0 100 100",preserveAspectRatio:"xMidYMid",xmlns:"http://www.w3.org/2000/svg",innerHTML:M})}});let n;const $={setup(){return{util:u,beans:x([])}},created(){n=this,d.call({path:"/reload",onSuccess(e){if(u.isArray(e)){n.beans=[];for(const a of e)n.beans.push({title:a.substring(0,1).toUpperCase()+a.substring(1),value:a,loading:!1})}}})},methods:{on_reload_click:function(e){m.confirm(function(){e.loading=!0,d.call({path:"/reload",params:{name:e.value},method:"post",onFinish(){e.loading=!1},onSuccess(a){a===!1&&m.alert("info.being_processed",e.title)}})},"confirm.reload",e.title)}}},P={class:"q-ma-sm"};function F(e,a,o,c,V,g){return i(),l("div",P,[c.beans?.length?(i(),S(H,{key:0},{default:s(()=>[r(B,{class:"q-pa-sm row"},{default:s(()=>[(i(!0),l(T,null,z(c.beans,(t,C)=>(i(),l("div",{key:C,class:"col-lg-3 col-md-4 col-sm-6 col-xs-12 text-center q-pa-sm"},[r(b,{glossy:"","no-caps":"",rounded:"",ripple:"",stack:"",style:{width:"100%"},onClick:A=>g.on_reload_click(t),loading:t.loading},{loading:s(()=>[r(Q,{class:"on-left"}),p("div",{class:f(e.$q.screen.lt.md?"text-h6":"text-h5")},h(t.title),3)]),default:s(()=>[r(q,{name:"memory",size:e.$q.screen.lt.md?"6em":"10em",center:""},null,8,["size"]),p("span",{class:f(e.$q.screen.lt.md?"text-h6":"text-h5"),style:{"overflow-wrap":"anywhere"}},h(t.title),3)]),_:2},1032,["onClick","loading"])]))),128))]),_:1})]),_:1})):N("",!0)])}const R=w($,[["render",F]]);export{R as default};
