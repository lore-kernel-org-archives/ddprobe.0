Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A137B361
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 20:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647203485;
	h=To:Subject:From:Message-Id:Date;
	bh=xWY4WXiciFP/pLiGyV2Tp/zIeEtI29Mv0RAmXd6mBAc=;
	b=jO5Yp5jZ0nGrqynb90YH7hdGGao8BEpuDUBwFvATtD/hdiOSHxTqLOUgP7EKYJxi
	NNShewAxBSFBvbAU5cCsXYnRNM5H7Kk0pcUnIab2tLDYeJz//G1MSUM1coaBjkOEKcJ
	bRvmxFIqLfPSPpjBKN1cKe+yzS9lYCvdnLt8PCds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647203485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xWY4WXiciFP/pLiGyV2Tp/zIeEtI29Mv0RAmXd6mBAc=;
	b=DvZfAaMuMC80iWSeukf0VyE7fAViUMl88h9V/zu315r7293jFb1jTo/dDKp9xI0f
	ipW4Qq1Md3WScDDmKkz9fOgiXForihVGiMwMIkk3s4NOLDhoLmQUa8JdFXCVPKlML9c
	WM/sP5cKQN1HJpTdKHwC+0vAYkim3IAhwE3HPmw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84fa8474-49bc2435-34c9-42e9-ac25-ddf71f9ec22c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b9b2479f2a1c94ee10a9409dae1169bc54df9af2daa96b4bd936cbe6a41fade
Date: Sun, 13 Mar 2022 20:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647203484
