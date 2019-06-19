%sta : 制御対象の状態，u : 入力，sta_eq : 制御対象の状態方程式，Ts : サンプリング周期

%sta_eqは状態方程式を関数として設定し，@fのように関数を渡す

function sta = runge(sta,u,sta_eq,Ts)

    sta = sta + (k1(sta,u,sta_eq,Ts) + 2 * k2(sta,u,sta_eq,Ts) + 2 * k3(sta,u,sta_eq,Ts) + k4(sta,u,sta_eq,Ts))/6;

end

function k_1 = k1(sta,u,sta_eq,Ts)

    k_1 = Ts * sta_eq(sta,u);

end

function k_2 = k2(sta,u,sta_eq,Ts)

    sta = sta + k1(sta,u,sta_eq,Ts)/2;
    k_2 = Ts * sta_eq(sta,u);

end

function k_3 = k3(sta,u,sta_eq,Ts) 

    sta = sta + k2(sta,u,sta_eq,Ts)/2;
    k_3 = Ts * sta_eq(sta,u);

end

function k_4 = k4(sta,u,sta_eq,Ts)

    sta = sta + k3(sta,u,sta_eq,Ts);
    k_4 = Ts * sta_eq(sta,u);

end