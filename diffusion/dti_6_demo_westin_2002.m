function r = dti_6_demo_westin_2002(DTI, sliceno)
% dti_6_demo_westin_2002.m
% Arvid Lundervold, 31-MAR-2005,1-APR-2007, 20-OCT-2010, 06-APR-2016, 29-APR-2020
% cf. BMED 360 Lab3 - Processing of MR-DTI Part 1
% http://sites.google.com/site/bmed360
%
% Implementation based on the paper by CF Westin et al.
% Processing and visualization for diffusion tensor MRI
% Medical Image Analysis 2002;6:93-108
%
% Providing a GUI for slice number:    r = dti_6_demo_westin_2002;
% Without GUI:                         r = dti_6_demo_westin_2002(DTI, sliceno);
% INPUT:
%   DTI  either a struct containg    DTI.D=D_6  and  DTI.enc=diff_enc_dirs_6
%        or a number, e.g. 0 (in case the default data D6.mat is loaded)
%   sliceno - slice number to be processed
% OUTPUT:
%   r.D -
%   r.D_trace -
%   r.EIGval -
%   r.EIGvec -
%   r.FA -
%   r.RGB -

global SMALL_SCREEN

if nargin == 0
    GUI = 1;
    DISP = 1;
    DTI = 0;
elseif nargin == 2
    GUI = 0;
    DISP = 0;
    s_disp = sliceno;
else
    fprintf('\nERROR: Invalid number of arguments (%d)\n', nargin);
    return
end

SMALL_SCREEN = 1;
TEST = 0;  % No testing

if isstruct(DTI)
    D_6 = DTI.D;
    diff_enc_dirs_6 = DTI.enc;
else
    load './data/westin_2002/D6.mat'
end


[ns, nd, nr, nc] = size(D_6);
if GUI == 0
    if s_disp < 1 | s_disp > ns
        fprintf('ERROR: Invalid slice number (%d) . must be in 1,...,%s\n', s_disp, ns);
        return
    end
end

if GUI == 1
    txt = sprintf('DTI-volume consists of %d slices (%d x %d matrix) \nwith %d diffusion sensitizing directions\n\n Continue?', ...
        ns, nr, nc, nd-1);
    quest_ans = questdlg(txt, 'DTI info', 'Yes', 'No', 'Yes');
    if strcmp(quest_ans, 'No')
        return
    end

    s_disp = 0;
    while s_disp < 1 | s_disp > ns
        txt = sprintf('Select slice  1 <= s <= %d :', ns);
        answ = inputdlg({txt,}, 'SELECT SLICE', 1, {'4'});
        s_disp = str2num(answ{1});
    end

end % GUI


if DISP == 1
    nrow=3;
    ncol=3;
    for s=s_disp:s_disp
        im = reshape(D_6(s,1,:,:), nr, nc);

        mn=min(min(im)); mx=max(max(im));
        figure(s)
        imagesc(im, [mn mx]), axis image, axis off, colormap(gray);
        txt = sprintf('Slice #%d/%d: b=0', s, ns);
        title(txt, 'FontSize', 14);
        if SMALL_SCREEN == 1
            set(gcf, 'Position',  [61 42 754 644]);
        else
            set(gcf, 'Position',  [55 705 473 353]);
        end
    end
    for d=2:nd
        im = reshape(D_6(s,d,:,:), nr, nc);
        fno = ns+s;
        switch d
            case 2
                lcl_plot_subimage(fno, nrow, ncol, 1, im, diff_enc_dirs_6{1}, 1);
            case 3
                lcl_plot_subimage(fno, nrow, ncol, 2, im, diff_enc_dirs_6{2}, 1);
            case 4
                lcl_plot_subimage(fno, nrow, ncol, 3, im, diff_enc_dirs_6{3}, 1);
            case 5
                lcl_plot_subimage(fno, nrow, ncol, 5, im, diff_enc_dirs_6{4}, 1);
            case 6
                lcl_plot_subimage(fno, nrow, ncol, 6, im, diff_enc_dirs_6{5}, 1);
            case 7
                lcl_plot_subimage(fno, nrow, ncol, 9, im, diff_enc_dirs_6{6}, 1);
            otherwise
                disp('Unknown direction.')
        end
        lcl_plot_diffdir(fno, nrow, ncol, 7, nd-1, diff_enc_dirs_6);
    end
    %pause(3.0)
end  % DISP


% Make a (AD HOC) mask with brain only
L_THR = 300;  % By inspection of histograms ...
D_6_slice = reshape(D_6(s_disp,:,:,:), nd, nr, nc);
M = lcl_make_brain_mask(D_6_slice, L_THR, DISP);
%r = 1;
%return


if TEST == 1
    ghat = lcl_normalized_dirvec(nd-1, diff_enc_dirs_6);
    G_k = lcl_tensor_basis_element(1, diff_enc_dirs_6);
    G = lcl_stacked_tensor_basis(nd-1, diff_enc_dirs_6);
    G_tilde = lcl_stacked_dual_tensor_basis(nd-1, diff_enc_dirs_6);
    %G_tilde * G
    x = zeros(3,3);
    for k=1:nd-1;
        %fprintf('k=%d:\n', k);
        G_tilde_k = lcl_dual_tensor_basis_element(k, nd-1, diff_enc_dirs_6);
        x = x + k*G_tilde_k;
    end
    %x
end % TEST




D_6_slice = reshape(D_6(s_disp,:,:,:), nd, nr*nc);
D = zeros(9,nr*nc);
D_6_0 = D_6_slice(1,:)+1;
D_6_k = zeros(nd-1,nr*nc);
beta_k = zeros(nd-1,nr*nc);
for k=1:nd-1
    D_6_k(k,:) = D_6_slice(k+1,:)+1;
    beta_k(k,:) = (1/1000) * (log( D_6_0 ) - log( D_6_k(k,:) ));
end

x=zeros(9,nr*nc);
for k=1:nd-1
    G_tilde_k = lcl_dual_tensor_basis_element(k, nd-1, diff_enc_dirs_6);
    x = x + ( ones(9,1)*reshape(beta_k(k,:),1,nr*nc) ) .* ( reshape(G_tilde_k, 9, 1)*ones(1,nr*nc) );
end
D = x;
EIGval = zeros(3,nr*nc);
EIGvec = zeros(3,3,nr*nc);  % zeros(9,nr*nc);
for i=1:nr*nc;
    Di = reshape(D(:,i), 3,3);
    [eigenvec, eigenval] = eig(Di);  % eigs(Di) is much slower
    [val, I] = sort(-diag(eigenval));
    for j=1:3;
      vec(1:3,j) = eigenvec(1:3,I(j));
    end
    EIGval(:,i) = -val;
    EIGvec(:,:,i) = reshape(vec,3,3,1);
end

if DISP == 1
    lcl_display_diff_tensor(D, nr, nc, diff_enc_dirs_6, 0);
end

txt = sprintf('Slice #%d/%d: DTI trace', s_disp, ns);
D_trace = lcl_display_diff_trace(D, nr, nc, M, txt, DISP);

txt = sprintf('Slice #%d/%d: FA', s_disp, ns);
FA = lcl_display_fractional_anisotropy(EIGval, nr, nc, M, txt, DISP);

txt = sprintf('Slice #%d/%d: ', s_disp, ns);
RGB = lcl_display_diff_rgb(EIGval, EIGvec, FA, nr, nc, M, txt, DISP);


r.D = D;
r.D_trace = D_trace;
r.EIGval = EIGval;
r.EIGvec = EIGvec;
r.FA = FA;
r.RGB = RGB;
r.M = M;

return
%==========================================================================
% Local functions


function [] = lcl_plot_subimage(fno, nrow, ncol, no, im, diffdir, tit)

global SMALL_SCREEN
mn = min(min(im)); mx = max(max(im));
figure(fno)
if SMALL_SCREEN == 1
    set(gcf, 'Position', [15 36 687 660]);
else
    set(gcf, 'Position', [485 265 840 687]);
end
subplot(nrow, ncol, no)
imagesc(im, [mn mx]), axis image, axis off, colormap(gray);
if tit == 1
    txt = sprintf('(%.0f, %.0f, %.0f)', ...
        diffdir(1), diffdir(2), diffdir(3));
    title(txt, 'FontSize', 14)
end
pause(0.05)
return


%--------------------------------------------------------------------------
function [] = lcl_plot_diffdir(fno, nrow, ncol, no, nofdir, diffdirs)

global SMALL_SCREEN

X = zeros(1,nofdir);
Y = zeros(1,nofdir);
Z = zeros(1,nofdir);
for n = 1:nofdir
  X(n) = diffdirs{n}(1);
  Y(n) = diffdirs{n}(2);
  Z(n) = diffdirs{n}(3);
end

figure(fno)
if SMALL_SCREEN == 1
    set(gcf, 'Position', [26 37 741 650]);
else
    set(gcf, 'Position', [485 265 840 687]);
end
subplot(nrow, ncol, no)
for n=1:nofdir
    plot3([0, X(n)], [0,  Y(n)], [0, Z(n)], 'LineWidth', 1.5);
    txt=sprintf(' ''%d'' ', n);
    text(X(n), Y(n), Z(n), txt);
    axis([-1 1 -1 1 -1 1]);
    xlabel('x-dir'), ylabel('y-dir'), zlabel('z-dir');
    grid on,
    hold on,
end
hold off
txt = sprintf('The %d directions (b=1000)', nofdir);
title(txt, 'FontSize', 14);

pause(0.05)
return


%--------------------------------------------------------------------------
function ghat = lcl_normalized_dirvec(nofdir, diffdirs)

ghat = zeros(3, nofdir+1);
g = ghat;
X = zeros(1,nofdir);
Y = zeros(1,nofdir);
Z = zeros(1,nofdir);
for n = 1:nofdir
  X(n) = diffdirs{n}(1);
  Y(n) = diffdirs{n}(2);
  Z(n) = diffdirs{n}(3);
  g(:,n+1) = [X(n); Y(n); Z(n)];
  ghat(:,n+1)= g(:,n+1) ./ sqrt(g(:,n+1)'*g(:,n+1));
end
return


%--------------------------------------------------------------------------
function G_k = lcl_tensor_basis_element(k, diffdirs)

g_k = [diffdirs{k}(1); diffdirs{k}(2); diffdirs{k}(3)];
ghat_k = g_k ./ sqrt(g_k'*g_k);
G_k = ghat_k * ghat_k';
return


%--------------------------------------------------------------------------
function G = lcl_stacked_tensor_basis(nofdir, diffdirs)

G = zeros(9,nofdir);
for k=1:nofdir
    G_k = lcl_tensor_basis_element(k, diffdirs);
    G(:,k) = reshape(G_k, 9,1);
end
return


%--------------------------------------------------------------------------
function G_tilde = lcl_stacked_dual_tensor_basis(nofdir, diffdirs)

G_tilde = zeros(9,nofdir);
G = lcl_stacked_tensor_basis(nofdir, diffdirs);
% The rows of the pseudoinverse contain the dual basis elements
G_tilde = pinv(G);
return


%--------------------------------------------------------------------------
function G_tilde_k = lcl_dual_tensor_basis_element(k, nofdir, diffdirs)

G_tilde_k = zeros(3,3);
G_tilde = lcl_stacked_dual_tensor_basis(nofdir, diffdirs);
G_tilde_k = reshape(G_tilde(k,:), 3, 3);
return


%--------------------------------------------------------------------------
function [] = lcl_display_diff_tensor(D, nr, nc, diffdirs, tit)

fno = 100;
nrow = 3;
ncol = 3;
nd=7;

for d=1:9   % [1,2,3,5,6,9]
    im = reshape(D(d,:), nr, nc);
    lcl_plot_subimage(fno, nrow, ncol, d, im, diffdirs{1}, tit);
end
%lcl_plot_diffdir(fno, nrow, ncol, 7, nd-1, diffdirs);
return


%--------------------------------------------------------------------------
function [tr] = lcl_display_diff_trace(D, nr, nc, M, txt, DISP)

global SMALL_SCREEN

fno = 110;

tr=zeros(nr,nc);
for d = [1,5,9]
    im = reshape(D(d,:), nr, nc);
    tr = tr + im;
end
tr = tr / 3;
tr_M = tr .* M;

if DISP == 1
    mn = min(min(tr_M)); mx = max(max(tr_M));
    figure(fno)
    if SMALL_SCREEN == 1
        set(gcf, 'Position', [5 33 712 656]);
    else
        set(gcf, 'Position', [485 265 840 687]);
    end
    imagesc(tr_M, [mn mx]), axis image, axis off, colormap(gray);
    title(txt, 'FontSize', 14)
    pause(0.05)
end  % DISP

return


%--------------------------------------------------------------------------
function [FA] = lcl_display_fractional_anisotropy(EIGval, nr, nc, M, txt, DISP)

global SMALL_SCREEN

fno = 120;

WIENER = 0;
c = 1/sqrt(2);
FA_vec=zeros(1,nr*nc);
epsi = 1e-100;
for i=1:nr*nc;
    l1 = EIGval(1,i);
    l2 = EIGval(2,i);
    l3 = EIGval(3,i);
    numer = sqrt((l1-l2)*(l1-l2) + (l2-l3)*(l2-l3) + (l1-l3)*(l1-l3));
    denumer = max(sqrt(l1*l1+l2*l2+l3*l3), epsi);
    %denumer = sqrt(l1*l1+l2*l2+l3*l3);
    FA_vec(i) = c*numer/denumer; % min(c*numer/denumer, 1.0);
    %if FA_vec(i) > 1.0001
    %    FA_vec(i) = NaN;
    %end
end
FA = reshape(FA_vec,nr,nc);

FA_M = FA .* M;

if DISP == 1
    mn = min(min(FA_M)); mx = max(max(FA_M));
    figure(fno)
    if SMALL_SCREEN == 1
        set(gcf, 'Position', [40 32 733 660]);
    else
        set(gcf, 'Position', [485 265 840 687]);
    end

    if WIENER == 1
        [FA_wiener,NOISE] = wiener2(FA_M,[3 3]);
        imagesc(FA_wiener, [mn mx]), axis image, axis off, colormap(gray);
    else
        imagesc(FA_M, [mn mx]), axis image, axis off, colormap(gray);
    end
    txt2 = sprintf('%s  min=%.2f, max=%.2f', txt, mn, mx);
    title(txt2, 'FontSize', 14)
    pause(0.05)
end % DISP

return


%--------------------------------------------------------------------------
function [RGB] = lcl_display_diff_rgb(EIGval, EIGvec, FA, nr, nc, M, txt, DISP)

global SMALL_SCREEN

fno = 130;

WIENER = 0;
FA_vec = reshape(FA, 1, nr*nc);
RGB=zeros(nr,nc,3);
lambda1 = zeros(1,nr*nc);
v1x = zeros(1,nr*nc);
v1y = zeros(1,nr*nc);
v1z = zeros(1,nr*nc);
for i=1:nr*nc;
    lambda1(i) = EIGval(1,i);
    x = EIGvec(1,1,i); % x-component of eigenvector corresponding to largest eigenvalue
    y = EIGvec(2,1,i); % y-comp.
    z = EIGvec(3,1,i); % z-comp.
    v = [x, y, z]';
    vn = v / sqrt(v'*v);
    v1x(i) = abs(FA_vec(i)*vn(1));
    v1y(i) = abs(FA_vec(i)*vn(2));
    v1z(i) = abs(FA_vec(i)*vn(3));
end
V1x = reshape(v1x,nr,nc);
V1y = reshape(v1y,nr,nc);
V1z = reshape(v1z,nr,nc);

if WIENER == 1
    [R, noise_r] = wiener2(V1x,3,3); % ./ max(max(V1x));
    [G, noise_g] = wiener2(V1y,3,3); %  ./ max(max(V1y));
    [B, noise_b] = wiener2(V1z,3,3); % ./ max(max(V1z));
else
    R = V1x; % ./ max(max(V1x));
    G = V1y; %  ./ max(max(V1y));
    B = V1z; % ./ max(max(V1z));
end

R_M = R .* M;
G_M = G .* M;
B_M = B .* M;

RGB(:,:,1) = R ./ max(max(R));
RGB(:,:,2) = G ./ max(max(G));
RGB(:,:,3) = B ./ max(max(B));

RGB_M(:,:,1) = R_M ./ max(max(R));
RGB_M(:,:,2) = G_M ./ max(max(G));
RGB_M(:,:,3) = B_M ./ max(max(B));

if DISP == 1
    figure(fno)
    imshow(RGB_M);
    if SMALL_SCREEN == 1
        set(gcf, 'Position', [141 41 862 658]);
    else
        set(gcf, 'Position', [485 265 840 687]);
    end
    txt2 = sprintf('%s  R = FA*|v1_x|, G = FA*|v1_y|, B = FA*|v1_z|', txt);
    title(txt2, 'FontSize', 14)
    pause(0.05)
end %DISP

return


%--------------------------------------------------------------------------
function [M] = lcl_make_brain_mask(D_slice, thr, DISP)

global SMALL_SCREEN

HSIZE = 5;
SIGMA = 3.0;
L_THRES = thr;

[nd, nr, nc] = size(D_slice);
im =zeros(nr,nc);
for d=1:nd
    im = im + reshape(D_slice(d,:,:), nr, nc);
end
im = im/nd;

H = fspecial('gaussian', HSIZE, SIGMA);
im1 = imfilter(im, H);

% 2-D order statistics filtering
%im2 = ordfilt2(im1, 1, ones(3,3));
im2 = im1;

mn = min(min(im2)); mx = max(max(im2));
M = roicolor(im2, L_THRES, mx);

% Outlined original image
im3 = bwperim(M);
im4 = im;
im4(im3) = max(max(im2)); % 255;

if DISP == 1
    fno = 101;
    figure(fno)
    if SMALL_SCREEN == 1
        set(gcf, 'Position', [15 36 687 660]);
    else
        set(gcf, 'Position', [485 265 840 687]);
    end
    subplot(1,2,1)
    imagesc(M, [0 1]), axis image, axis off, colormap(gray);
    txt = sprintf('ROI (for estimation of DTI)');
    title(txt, 'FontSize', 12)
    subplot(1,2,2)
    imagesc(im4, [mn mx]), axis image, axis off, colormap(gray);
    txt = sprintf('Brain outer contour:  min=%.2f, max=%.2f', mn, mx);
    title(txt, 'FontSize', 12)
end % DISP

return
