import{bh as ge,r as k,a$ as ve,aY as F,S as pe,bi as A,w as W,o as be,n as q,g as ie,bj as O,aD as N,bk as U,bl as xe,bf as ye,l as we,t as Te,au as B,aC as He,x as Ee,c as P,aL as Se,O as We,aM as Ce,A as Me,aN as Le,X as Pe,h as G,p as ke,E as Ae,H as qe}from"./index-DcSSbfia.js";function Q(){if(window.getSelection!==void 0){const e=window.getSelection();e.empty!==void 0?e.empty():e.removeAllRanges!==void 0&&(e.removeAllRanges(),ge.is.mobile!==!0&&e.addRange(document.createRange()))}else document.selection!==void 0&&document.selection.empty()}const oe={target:{type:[Boolean,String,Element],default:!0},noParentEvent:Boolean},Qe={...oe,contextMenu:Boolean};function ze({showing:e,avoidEmit:n,configureAnchorEl:l}){const{props:t,proxy:o,emit:c}=ie(),a=k(null);let r=null;function f(i){return a.value===null?!1:i===void 0||i.touches===void 0||i.touches.length<=1}const u={};l===void 0&&(Object.assign(u,{hide(i){o.hide(i)},toggle(i){o.toggle(i),i.qAnchorHandled=!0},toggleKey(i){ve(i,13)===!0&&u.toggle(i)},contextClick(i){o.hide(i),F(i),pe(()=>{o.show(i),i.qAnchorHandled=!0})},prevent:F,mobileTouch(i){if(u.mobileCleanup(i),f(i)!==!0)return;o.hide(i),a.value.classList.add("non-selectable");const s=i.target;A(u,"anchor",[[s,"touchmove","mobileCleanup","passive"],[s,"touchend","mobileCleanup","passive"],[s,"touchcancel","mobileCleanup","passive"],[a.value,"contextmenu","prevent","notPassive"]]),r=setTimeout(()=>{r=null,o.show(i),i.qAnchorHandled=!0},300)},mobileCleanup(i){a.value.classList.remove("non-selectable"),r!==null&&(clearTimeout(r),r=null),e.value===!0&&i!==void 0&&Q()}}),l=function(i=t.contextMenu){if(t.noParentEvent===!0||a.value===null)return;let s;i===!0?o.$q.platform.is.mobile===!0?s=[[a.value,"touchstart","mobileTouch","passive"]]:s=[[a.value,"mousedown","hide","passive"],[a.value,"contextmenu","contextClick","notPassive"]]:s=[[a.value,"click","toggle","passive"],[a.value,"keyup","toggleKey","passive"]],A(u,"anchor",s)});function h(){O(u,"anchor")}function E(i){for(a.value=i;a.value.classList.contains("q-anchor--skip");)a.value=a.value.parentNode;l()}function x(){if(t.target===!1||t.target===""||o.$el.parentNode===null)a.value=null;else if(t.target===!0)E(o.$el.parentNode);else{let i=t.target;if(typeof t.target=="string")try{i=document.querySelector(t.target)}catch{i=void 0}i!=null?(a.value=i.$el||i,l()):(a.value=null,console.error(`Anchor: target "${t.target}" not found`))}}return W(()=>t.contextMenu,i=>{a.value!==null&&(h(),l(i))}),W(()=>t.target,()=>{a.value!==null&&h(),x()}),W(()=>t.noParentEvent,i=>{a.value!==null&&(i===!0?h():l())}),be(()=>{x(),n!==!0&&t.modelValue===!0&&a.value===null&&c("update:modelValue",!1)}),q(()=>{r!==null&&clearTimeout(r),h()}),{anchorEl:a,canShow:f,anchorEvents:u}}function $e(e,n){const l=k(null);let t;function o(r,f){const u=`${f!==void 0?"add":"remove"}EventListener`,h=f!==void 0?f:t;r!==window&&r[u]("scroll",h,N.passive),window[u]("scroll",h,N.passive),t=f}function c(){l.value!==null&&(o(l.value),l.value=null)}const a=W(()=>e.noParentEvent,()=>{l.value!==null&&(c(),n())});return q(a),{localScrollTarget:l,unconfigureScrollTarget:c,changeScrollEvent:o}}const{notPassiveCapture:z}=N,H=[];function $(e){const n=e.target;if(n===void 0||n.nodeType===8||n.classList.contains("no-pointer-events")===!0)return;let l=U.length-1;for(;l>=0;){const t=U[l].$;if(t.type.name==="QTooltip"){l--;continue}if(t.type.name!=="QDialog")break;if(t.props.seamless!==!0)return;l--}for(let t=H.length-1;t>=0;t--){const o=H[t];if((o.anchorEl.value===null||o.anchorEl.value.contains(n)===!1)&&(n===document.body||o.innerRef.value!==null&&o.innerRef.value.contains(n)===!1))e.qClickOutside=!0,o.onClickOutside(e);else return}}function Re(e){H.push(e),H.length===1&&(document.addEventListener("mousedown",$,z),document.addEventListener("touchstart",$,z))}function J(e){const n=H.findIndex(l=>l===e);n!==-1&&(H.splice(n,1),H.length===0&&(document.removeEventListener("mousedown",$,z),document.removeEventListener("touchstart",$,z)))}let Z,ee;function te(e){const n=e.split(" ");return n.length!==2?!1:["top","center","bottom"].includes(n[0])!==!0?(console.error("Anchor/Self position must start with one of top/center/bottom"),!1):["left","middle","right","start","end"].includes(n[1])!==!0?(console.error("Anchor/Self position must end with one of left/middle/right/start/end"),!1):!0}function je(e){return e?!(e.length!==2||typeof e[0]!="number"||typeof e[1]!="number"):!0}const V={"start#ltr":"left","start#rtl":"right","end#ltr":"right","end#rtl":"left"};["left","middle","right"].forEach(e=>{V[`${e}#ltr`]=e,V[`${e}#rtl`]=e});function ne(e,n){const l=e.split(" ");return{vertical:l[0],horizontal:V[`${l[1]}#${n===!0?"rtl":"ltr"}`]}}function Be(e,n){let{top:l,left:t,right:o,bottom:c,width:a,height:r}=e.getBoundingClientRect();return n!==void 0&&(l-=n[1],t-=n[0],c+=n[1],o+=n[0],a+=n[0],r+=n[1]),{top:l,bottom:c,height:r,left:t,right:o,width:a,middle:t+(o-t)/2,center:l+(c-l)/2}}function De(e,n,l){let{top:t,left:o}=e.getBoundingClientRect();return t+=n.top,o+=n.left,l!==void 0&&(t+=l[1],o+=l[0]),{top:t,bottom:t+1,height:1,left:o,right:o+1,width:1,middle:o,center:t}}function Oe(e,n){return{top:0,center:n/2,bottom:n,left:0,middle:e/2,right:e}}function le(e,n,l,t){return{top:e[l.vertical]-n[t.vertical],left:e[l.horizontal]-n[t.horizontal]}}function ae(e,n=0){if(e.targetEl===null||e.anchorEl===null||n>5)return;if(e.targetEl.offsetHeight===0||e.targetEl.offsetWidth===0){setTimeout(()=>{ae(e,n+1)},10);return}const{targetEl:l,offset:t,anchorEl:o,anchorOrigin:c,selfOrigin:a,absoluteOffset:r,fit:f,cover:u,maxHeight:h,maxWidth:E}=e;if(xe.is.ios===!0&&window.visualViewport!==void 0){const S=document.body.style,{offsetLeft:v,offsetTop:p}=window.visualViewport;v!==Z&&(S.setProperty("--q-pe-left",v+"px"),Z=v),p!==ee&&(S.setProperty("--q-pe-top",p+"px"),ee=p)}const{scrollLeft:x,scrollTop:i}=l,s=r===void 0?Be(o,u===!0?[0,0]:t):De(o,r,t);Object.assign(l.style,{top:0,left:0,minWidth:null,minHeight:null,maxWidth:E,maxHeight:h,visibility:"visible"});const{offsetWidth:y,offsetHeight:C}=l,{elWidth:R,elHeight:L}=f===!0||u===!0?{elWidth:Math.max(s.width,y),elHeight:u===!0?Math.max(s.height,C):C}:{elWidth:y,elHeight:C};let g={maxWidth:E,maxHeight:h};(f===!0||u===!0)&&(g.minWidth=s.width+"px",u===!0&&(g.minHeight=s.height+"px")),Object.assign(l.style,g);const w=Oe(R,L);let d=le(s,w,c,a);if(r===void 0||t===void 0)D(d,s,w,c,a);else{const{top:S,left:v}=d;D(d,s,w,c,a);let p=!1;if(d.top!==S){p=!0;const b=2*t[1];s.center=s.top-=b,s.bottom-=b+2}if(d.left!==v){p=!0;const b=2*t[0];s.middle=s.left-=b,s.right-=b+2}p===!0&&(d=le(s,w,c,a),D(d,s,w,c,a))}g={top:d.top+"px",left:d.left+"px"},d.maxHeight!==void 0&&(g.maxHeight=d.maxHeight+"px",s.height>d.maxHeight&&(g.minHeight=g.maxHeight)),d.maxWidth!==void 0&&(g.maxWidth=d.maxWidth+"px",s.width>d.maxWidth&&(g.minWidth=g.maxWidth)),Object.assign(l.style,g),l.scrollTop!==i&&(l.scrollTop=i),l.scrollLeft!==x&&(l.scrollLeft=x)}function D(e,n,l,t,o){const c=l.bottom,a=l.right,r=ye(),f=window.innerHeight-r,u=document.body.clientWidth;if(e.top<0||e.top+c>f)if(o.vertical==="center")e.top=n[t.vertical]>f/2?Math.max(0,f-c):0,e.maxHeight=Math.min(c,f);else if(n[t.vertical]>f/2){const h=Math.min(f,t.vertical==="center"?n.center:t.vertical===o.vertical?n.bottom:n.top);e.maxHeight=Math.min(c,h),e.top=Math.max(0,h-c)}else e.top=Math.max(0,t.vertical==="center"?n.center:t.vertical===o.vertical?n.top:n.bottom),e.maxHeight=Math.min(c,f-e.top);if(e.left<0||e.left+a>u)if(e.maxWidth=Math.min(a,u),o.horizontal==="middle")e.left=n[t.horizontal]>u/2?Math.max(0,u-a):0;else if(n[t.horizontal]>u/2){const h=Math.min(u,t.horizontal==="middle"?n.middle:t.horizontal===o.horizontal?n.right:n.left);e.maxWidth=Math.min(a,h),e.left=Math.max(0,h-e.maxWidth)}else e.left=Math.max(0,t.horizontal==="middle"?n.middle:t.horizontal===o.horizontal?n.left:n.right),e.maxWidth=Math.min(a,u-e.left)}const Ve=we({name:"QTooltip",inheritAttrs:!1,props:{...oe,...Te,...B,maxHeight:{type:String,default:null},maxWidth:{type:String,default:null},transitionShow:{...B.transitionShow,default:"jump-down"},transitionHide:{...B.transitionHide,default:"jump-up"},anchor:{type:String,default:"bottom middle",validator:te},self:{type:String,default:"top middle",validator:te},offset:{type:Array,default:()=>[14,14],validator:je},scrollTarget:He,delay:{type:Number,default:0},hideDelay:{type:Number,default:0},persistent:Boolean},emits:[...Ee],setup(e,{slots:n,emit:l,attrs:t}){let o,c;const a=ie(),{proxy:{$q:r}}=a,f=k(null),u=k(!1),h=P(()=>ne(e.anchor,r.lang.rtl)),E=P(()=>ne(e.self,r.lang.rtl)),x=P(()=>e.persistent!==!0),{registerTick:i,removeTick:s}=Se(),{registerTimeout:y}=We(),{transitionProps:C,transitionStyle:R}=Ce(e),{localScrollTarget:L,changeScrollEvent:g,unconfigureScrollTarget:w}=$e(e,Y),{anchorEl:d,canShow:S,anchorEvents:v}=ze({showing:u,configureAnchorEl:fe}),{show:p,hide:b}=Me({showing:u,canShow:S,handleShow:ue,handleHide:se,hideOnRouteChange:x,processOnMount:!0});Object.assign(v,{delayShow:ce,delayHide:de});const{showPortal:I,hidePortal:K,renderPortal:re}=Le(a,f,me,"tooltip");if(r.platform.is.mobile===!0){const m={anchorEl:d,innerRef:f,onClickOutside(T){return b(T),T.target.classList.contains("q-dialog__backdrop")&&qe(T),!0}},j=P(()=>e.modelValue===null&&e.persistent!==!0&&u.value===!0);W(j,T=>{(T===!0?Re:J)(m)}),q(()=>{J(m)})}function ue(m){I(),i(()=>{c=new MutationObserver(()=>M()),c.observe(f.value,{attributes:!1,childList:!0,characterData:!0,subtree:!0}),M(),Y()}),o===void 0&&(o=W(()=>r.screen.width+"|"+r.screen.height+"|"+e.self+"|"+e.anchor+"|"+r.lang.rtl,M)),y(()=>{I(!0),l("show",m)},e.transitionDuration)}function se(m){s(),K(),X(),y(()=>{K(!0),l("hide",m)},e.transitionDuration)}function X(){c!==void 0&&(c.disconnect(),c=void 0),o!==void 0&&(o(),o=void 0),w(),O(v,"tooltipTemp")}function M(){ae({targetEl:f.value,offset:e.offset,anchorEl:d.value,anchorOrigin:h.value,selfOrigin:E.value,maxHeight:e.maxHeight,maxWidth:e.maxWidth})}function ce(m){if(r.platform.is.mobile===!0){Q(),document.body.classList.add("non-selectable");const j=d.value,T=["touchmove","touchcancel","touchend","click"].map(_=>[j,_,"delayHide","passiveCapture"]);A(v,"tooltipTemp",T)}y(()=>{p(m)},e.delay)}function de(m){r.platform.is.mobile===!0&&(O(v,"tooltipTemp"),Q(),setTimeout(()=>{document.body.classList.remove("non-selectable")},10)),y(()=>{b(m)},e.hideDelay)}function fe(){if(e.noParentEvent===!0||d.value===null)return;const m=r.platform.is.mobile===!0?[[d.value,"touchstart","delayShow","passive"]]:[[d.value,"mouseenter","delayShow","passive"],[d.value,"mouseleave","delayHide","passive"]];A(v,"anchor",m)}function Y(){if(d.value!==null||e.scrollTarget!==void 0){L.value=Pe(d.value,e.scrollTarget);const m=e.noParentEvent===!0?M:b;g(L.value,m)}}function he(){return u.value===!0?G("div",{...t,ref:f,class:["q-tooltip q-tooltip--style q-position-engine no-pointer-events",t.class],style:[t.style,R.value],role:"tooltip"},Ae(n.default)):null}function me(){return G(ke,C.value,he)}return q(X),Object.assign(a.proxy,{updatePosition:M}),re}});export{Ve as Q,je as a,$e as b,ze as c,Re as d,Q as e,ne as p,J as r,ae as s,Qe as u,te as v};
