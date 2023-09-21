"use strict";var g=Object.defineProperty;var v=Object.getOwnPropertyDescriptor;var x=Object.getOwnPropertyNames;var L=Object.prototype.hasOwnProperty;var b=(t,e)=>{for(var a in e)g(t,a,{get:e[a],enumerable:!0})},k=(t,e,a,s)=>{if(e&&typeof e=="object"||typeof e=="function")for(let o of x(e))!L.call(t,o)&&o!==a&&g(t,o,{get:()=>e[o],enumerable:!(s=v(e,o))||s.enumerable});return t};var A=t=>k(g({},"__esModule",{value:!0}),t);var R={};b(R,{default:()=>U});module.exports=A(R);var i=require("@raycast/api"),B=require("react");var f=require("@raycast/api"),D=require("react");var h=t=>{let e=Math.floor(t/3600),a=String(Math.floor(t%3600/60)).padStart(2,"0"),s=String(Math.floor(t%60)).padStart(2,"0");return`${e}:${a}:${s}`};var u=t=>(t.d1=t.d1=="----"?void 0:t.d1,t.d2=t.d2=="----"?void 0:t.d2,Math.round((t.d1?new Date(t.d1):new Date).getTime()-(t.d2?new Date(t.d2):new Date).getTime())/1e3);var c=require("@raycast/api"),I=require("child_process"),P=require("crypto"),n=require("fs"),W=require("path");var p=c.environment.supportPath+"/raycast-stopwatches.json",l=()=>{(!(0,n.existsSync)(p)||(0,n.readFileSync)(p).toString()=="")&&(0,n.writeFileSync)(p,"[]")},M=(t="")=>({name:t,swID:(0,P.randomUUID)(),timeStarted:new Date,timeElapsed:-99,lastPaused:"----",pauseElapsed:0}),C=t=>(t.map(e=>{if(e.lastPaused!="----")e.timeElapsed=Math.max(0,u({d1:e.lastPaused,d2:e.timeStarted})-e.pauseElapsed);else{let a=Math.max(0,u({d2:e.timeStarted}));e.timeElapsed=a-e.pauseElapsed}}),t),O=()=>{l();let t=JSON.parse((0,n.readFileSync)(p).toString()),e=H(t),a=C(e);return a.sort((s,o)=>s.timeElapsed-o.timeElapsed),a},J=async(t="Untitled")=>{l();let e=JSON.parse((0,n.readFileSync)(p).toString()),a=M(t);e.push(a),(0,n.writeFileSync)(p,JSON.stringify(e)),(0,c.popToRoot)(),await(0,c.showHUD)(`Stopwatch "${t}" started! \u{1F389}`)},T=t=>{l();let e=JSON.parse((0,n.readFileSync)(p).toString());e=e.map(a=>a.swID==t?{...a,lastPaused:new Date}:a),(0,n.writeFileSync)(p,JSON.stringify(e))},N=t=>{l();let e=JSON.parse((0,n.readFileSync)(p).toString());e=e.map(a=>a.swID==t?{...a,pauseElapsed:a.pauseElapsed+u({d2:a.lastPaused}),lastPaused:"----"}:a),(0,n.writeFileSync)(p,JSON.stringify(e))},$=t=>{l();let e=JSON.parse((0,n.readFileSync)(p).toString());e=e.filter(a=>a.swID!==t),(0,n.writeFileSync)(p,JSON.stringify(e))},H=t=>((0,n.readdirSync)(c.environment.supportPath).forEach(a=>{if((0,W.extname)(a)==".stopwatch"){let s=M((0,n.readFileSync)(c.environment.supportPath+"/"+a).toString()),o=a.replace(/__/g,":").replace(".stopwatch","");s.timeStarted=new Date(o),s.timeElapsed=Math.max(0,u({})),(0,I.execSync)(`rm "${c.environment.supportPath}/${a}"`),t.push(s)}}),(0,n.writeFileSync)(p,JSON.stringify(t)),t);function E(){let[t,e]=(0,D.useState)(void 0),[a,s]=(0,D.useState)(t===void 0),o=()=>{let r=O();e(r),s(!1)},d=(r="Untitled")=>{J(r),o()},w=r=>{T(r),o()},m=r=>{N(r),o()},y=r=>{(0,f.getPreferenceValues)().copyOnSwStop&&f.Clipboard.copy(h(r.timeElapsed)),$(r.swID),o()};return{stopwatches:t,isLoading:a,refreshSWes:o,handleRestartSW:r=>{y(r),d(r.name),o()},handleStartSW:d,handleStopSW:y,handlePauseSW:w,handleUnpauseSW:m}}var S=require("react/jsx-runtime");function U(){let{stopwatches:t,isLoading:e,refreshSWes:a,handlePauseSW:s,handleStartSW:o}=E();(0,B.useEffect)(()=>{a(),setInterval(()=>{a()},1e3)},[]),e&&a();let d=(0,i.getPreferenceValues)();if((t==null||t.length==0||t.length==null)&&d.showMenuBarItemWhen!=="always")return null;let w=()=>{if(!(t===void 0||t?.length===0||t.length==null))return d.showTitleInMenuBar?`${t[0].name}: ~${h(t[0].timeElapsed)}`:`~${h(t[0].timeElapsed)}`};return(0,S.jsxs)(i.MenuBarExtra,{icon:d.showMenuBarItemWhen!=="never"?i.Icon.Stopwatch:void 0,isLoading:e,title:w(),children:[(0,S.jsx)(i.MenuBarExtra.Item,{title:"Click running stopwatch to pause"}),t?.map(m=>(0,S.jsx)(i.MenuBarExtra.Item,{title:m.name+": "+h(m.timeElapsed)+" elapsed",onAction:()=>s(m.swID)},m.swID)),(0,S.jsx)(i.MenuBarExtra.Section,{children:(0,S.jsx)(i.MenuBarExtra.Item,{title:"Start Stopwatch",onAction:()=>o()},"startSW")})]})}