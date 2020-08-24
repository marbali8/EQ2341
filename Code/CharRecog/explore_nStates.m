% compares ergodic vs leftright
% with different # of states

addpath('../');
load('tdarr_a2h.mat');
load('test_data.mat');

x1 = 1:1:7;
y1 = zeros(size(x1));
idx = 1;

for s = 1:1:7

a_nStates = ceil(mean(tdlen_a)/s);
b_nStates = ceil(mean(tdlen_b)/s);
c_nStates = ceil(mean(tdlen_c)/s);
d_nStates = ceil(mean(tdlen_d)/s);
e_nStates = ceil(mean(tdlen_e)/s);
f_nStates = ceil(mean(tdlen_f)/s);
g_nStates = ceil(mean(tdlen_g)/s);
h_nStates = ceil(mean(tdlen_h)/s);
i_nStates = ceil(mean(tdlen_i)/s);
j_nStates = ceil(mean(tdlen_j)/s);
k_nStates = ceil(mean(tdlen_k)/s);
l_nStates = ceil(mean(tdlen_l)/s);
m_nStates = ceil(mean(tdlen_m)/s);
n_nStates = ceil(mean(tdlen_n)/s);
o_nStates = ceil(mean(tdlen_o)/s);
p_nStates = ceil(mean(tdlen_p)/s);
q_nStates = ceil(mean(tdlen_q)/s);
r_nStates = ceil(mean(tdlen_r)/s);
s_nStates = ceil(mean(tdlen_s)/s);
t_nStates = ceil(mean(tdlen_t)/s);
u_nStates = ceil(mean(tdlen_u)/s);
v_nStates = ceil(mean(tdlen_v)/s);
w_nStates = ceil(mean(tdlen_w)/s);
x_nStates = ceil(mean(tdlen_x)/s);
y_curly_nStates = ceil(mean(tdlen_y_curly)/s);
z_nStates = ceil(mean(tdlen_z)/s);

h_a = LeftRightHMM(a_nStates);
h_b = LeftRightHMM(b_nStates);
h_c = LeftRightHMM(c_nStates);
h_d = LeftRightHMM(d_nStates);
h_e = LeftRightHMM(e_nStates);
h_f = LeftRightHMM(f_nStates);
h_g = LeftRightHMM(g_nStates);
h_h = LeftRightHMM(h_nStates);
h_i = LeftRightHMM(i_nStates);
h_j = LeftRightHMM(j_nStates);
h_k = LeftRightHMM(k_nStates);
h_l = LeftRightHMM(l_nStates);
h_m = LeftRightHMM(m_nStates);
h_n = LeftRightHMM(n_nStates);
h_o = LeftRightHMM(o_nStates);
h_p = LeftRightHMM(p_nStates);
h_q = LeftRightHMM(q_nStates);
h_r = LeftRightHMM(r_nStates);
h_s = LeftRightHMM(s_nStates);
h_t = LeftRightHMM(t_nStates);
h_u = LeftRightHMM(u_nStates);
h_v = LeftRightHMM(v_nStates);
h_w = LeftRightHMM(w_nStates);
h_x = LeftRightHMM(x_nStates);
h_y_curly = LeftRightHMM(y_curly_nStates);
h_z = LeftRightHMM(z_nStates);

[h_a,logprobs_a] = train(h_a,td_a,tdlen_a,10,log(1.01));
[h_b,logprobs_b] = train(h_b,td_b,tdlen_b,10,log(1.01));
[h_c,logprobs_c] = train(h_c,td_c,tdlen_c,10,log(1.01));
[h_d,logprobs_d] = train(h_d,td_d,tdlen_d,10,log(1.01));
[h_e,logprobs_e] = train(h_e,td_e,tdlen_e,10,log(1.01));
[h_f,logprobs_f] = train(h_f,td_f,tdlen_f,10,log(1.01));
[h_g,logprobs_g] = train(h_g,td_g,tdlen_g,10,log(1.01));
[h_h,logprobs_h] = train(h_h,td_h,tdlen_h,10,log(1.01));
[h_i,logprobs_i] = train(h_i,td_i,tdlen_i,10,log(1.01));
[h_j,logprobs_j] = train(h_j,td_j,tdlen_j,10,log(1.01));
[h_k,logprobs_k] = train(h_k,td_k,tdlen_k,10,log(1.01));
[h_l,logprobs_l] = train(h_l,td_l,tdlen_l,10,log(1.01));
[h_m,logprobs_m] = train(h_m,td_m,tdlen_m,10,log(1.01));
[h_n,logprobs_n] = train(h_n,td_n,tdlen_n,10,log(1.01));
[h_o,logprobs_o] = train(h_o,td_o,tdlen_o,10,log(1.01));
[h_p,logprobs_p] = train(h_p,td_p,tdlen_p,10,log(1.01));
[h_q,logprobs_q] = train(h_q,td_q,tdlen_q,10,log(1.01));
[h_r,logprobs_r] = train(h_r,td_r,tdlen_r,10,log(1.01));
[h_s,logprobs_s] = train(h_s,td_s,tdlen_s,10,log(1.01));
[h_t,logprobs_t] = train(h_t,td_t,tdlen_t,10,log(1.01));
[h_u,logprobs_u] = train(h_u,td_u,tdlen_u,10,log(1.01));
[h_v,logprobs_v] = train(h_v,td_v,tdlen_v,10,log(1.01));
[h_w,logprobs_w] = train(h_w,td_w,tdlen_w,10,log(1.01));
[h_x,logprobs_x] = train(h_x,td_x,tdlen_x,10,log(1.01));
[h_y_curly,logprobs_y_curly] = train(h_y_curly,td_y_curly,tdlen_y_curly,10,log(1.01));
[h_z,logprobs_z] = train(h_z,td_z,tdlen_z,10,log(1.01));

hmmlist = [h_a,h_b,h_c,h_d,h_e,h_f,h_g,h_h,...
    h_i,h_j,h_k,h_l,h_m,h_n,h_o,h_p,h_q,...
    h_r,h_s,h_t,h_u,h_v,h_w,h_x,h_y_curly,h_z];

y1(idx) = test2(hmmlist,te_data);
idx = idx + 1;

end

x2 = 1:1:7;
y2 = zeros(size(x2));
idx = 1;

for s = 1:1:7

a_nStates = ceil(mean(tdlen_a)/s);
b_nStates = ceil(mean(tdlen_b)/s);
c_nStates = ceil(mean(tdlen_c)/s);
d_nStates = ceil(mean(tdlen_d)/s);
e_nStates = ceil(mean(tdlen_e)/s);
f_nStates = ceil(mean(tdlen_f)/s);
g_nStates = ceil(mean(tdlen_g)/s);
h_nStates = ceil(mean(tdlen_h)/s);
i_nStates = ceil(mean(tdlen_i)/s);
j_nStates = ceil(mean(tdlen_j)/s);
k_nStates = ceil(mean(tdlen_k)/s);
l_nStates = ceil(mean(tdlen_l)/s);
m_nStates = ceil(mean(tdlen_m)/s);
n_nStates = ceil(mean(tdlen_n)/s);
o_nStates = ceil(mean(tdlen_o)/s);
p_nStates = ceil(mean(tdlen_p)/s);
q_nStates = ceil(mean(tdlen_q)/s);
r_nStates = ceil(mean(tdlen_r)/s);
s_nStates = ceil(mean(tdlen_s)/s);
t_nStates = ceil(mean(tdlen_t)/s);
u_nStates = ceil(mean(tdlen_u)/s);
v_nStates = ceil(mean(tdlen_v)/s);
w_nStates = ceil(mean(tdlen_w)/s);
x_nStates = ceil(mean(tdlen_x)/s);
y_curly_nStates = ceil(mean(tdlen_y_curly)/s);
z_nStates = ceil(mean(tdlen_z)/s);

h_a = ErgodicHMM(a_nStates);
h_b = ErgodicHMM(b_nStates);
h_c = ErgodicHMM(c_nStates);
h_d = ErgodicHMM(d_nStates);
h_e = ErgodicHMM(e_nStates);
h_f = ErgodicHMM(f_nStates);
h_g = ErgodicHMM(g_nStates);
h_h = ErgodicHMM(h_nStates);
h_i = ErgodicHMM(i_nStates);
h_j = ErgodicHMM(j_nStates);
h_k = ErgodicHMM(k_nStates);
h_l = ErgodicHMM(l_nStates);
h_m = ErgodicHMM(m_nStates);
h_n = ErgodicHMM(n_nStates);
h_o = ErgodicHMM(o_nStates);
h_p = ErgodicHMM(p_nStates);
h_q = ErgodicHMM(q_nStates);
h_r = ErgodicHMM(r_nStates);
h_s = ErgodicHMM(s_nStates);
h_t = ErgodicHMM(t_nStates);
h_u = ErgodicHMM(u_nStates);
h_v = ErgodicHMM(v_nStates);
h_w = ErgodicHMM(w_nStates);
h_x = ErgodicHMM(x_nStates);
h_y_curly = ErgodicHMM(y_curly_nStates);
h_z = ErgodicHMM(z_nStates);

[h_a,logprobs_a] = train(h_a,td_a,tdlen_a,10,log(1.01));
[h_b,logprobs_b] = train(h_b,td_b,tdlen_b,10,log(1.01));
[h_c,logprobs_c] = train(h_c,td_c,tdlen_c,10,log(1.01));
[h_d,logprobs_d] = train(h_d,td_d,tdlen_d,10,log(1.01));
[h_e,logprobs_e] = train(h_e,td_e,tdlen_e,10,log(1.01));
[h_f,logprobs_f] = train(h_f,td_f,tdlen_f,10,log(1.01));
[h_g,logprobs_g] = train(h_g,td_g,tdlen_g,10,log(1.01));
[h_h,logprobs_h] = train(h_h,td_h,tdlen_h,10,log(1.01));
[h_i,logprobs_i] = train(h_i,td_i,tdlen_i,10,log(1.01));
[h_j,logprobs_j] = train(h_j,td_j,tdlen_j,10,log(1.01));
[h_k,logprobs_k] = train(h_k,td_k,tdlen_k,10,log(1.01));
[h_l,logprobs_l] = train(h_l,td_l,tdlen_l,10,log(1.01));
[h_m,logprobs_m] = train(h_m,td_m,tdlen_m,10,log(1.01));
[h_n,logprobs_n] = train(h_n,td_n,tdlen_n,10,log(1.01));
[h_o,logprobs_o] = train(h_o,td_o,tdlen_o,10,log(1.01));
[h_p,logprobs_p] = train(h_p,td_p,tdlen_p,10,log(1.01));
[h_q,logprobs_q] = train(h_q,td_q,tdlen_q,10,log(1.01));
[h_r,logprobs_r] = train(h_r,td_r,tdlen_r,10,log(1.01));
[h_s,logprobs_s] = train(h_s,td_s,tdlen_s,10,log(1.01));
[h_t,logprobs_t] = train(h_t,td_t,tdlen_t,10,log(1.01));
[h_u,logprobs_u] = train(h_u,td_u,tdlen_u,10,log(1.01));
[h_v,logprobs_v] = train(h_v,td_v,tdlen_v,10,log(1.01));
[h_w,logprobs_w] = train(h_w,td_w,tdlen_w,10,log(1.01));
[h_x,logprobs_x] = train(h_x,td_x,tdlen_x,10,log(1.01));
[h_y_curly,logprobs_y_curly] = train(h_y_curly,td_y_curly,tdlen_y_curly,10,log(1.01));
[h_z,logprobs_z] = train(h_z,td_z,tdlen_z,10,log(1.01));

hmmlist = [h_a,h_b,h_c,h_d,h_e,h_f,h_g,h_h,...
    h_i,h_j,h_k,h_l,h_m,h_n,h_o,h_p,h_q,...
    h_r,h_s,h_t,h_u,h_v,h_w,h_x,h_y_curly,h_z];

y2(idx) = test2(hmmlist,te_data);
idx = idx + 1;

end

figure(1)
plot(x1,y1);
hold on
plot(x2,y2);
title('Performance of HMM with Different # of States');
xlabel('Average Duration of Each State');
ylabel('Accuracy on Test Data');
legend('Left-Right','Ergodic')
beautify
