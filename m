Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F250C258E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647038185;
	h=To:Subject:From:Message-Id:Date;
	bh=9428uHcM9lKSbWX3u/ULJkwgruMF0YxcDr+Nlcr0ISc=;
	b=INrnAcyAKW/rCA9/f72vYBpDMrR3a+7OatQa6r8dE8bfcFLP8absIS8uHxvyvDbj
	Av3/V3mKV+pmUFcvQ1h+4Yy1sVFnFazdAlf1pbjMRrJbkzZRXLpaAB4MAYH6oxsgrW/
	WZ9DWi/NSnJiSp7IZHeqKsZxzhLCLMJ08BqTLY8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647038185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9428uHcM9lKSbWX3u/ULJkwgruMF0YxcDr+Nlcr0ISc=;
	b=JZk2k2AtlfsUeNFDvtZ91JdWmxSyWJHWMID11lTKcAswXO/+0ndcbBO20l1r2Q1j
	M9IJtXSViYMDhzQIW4C3GPjOxhEkfx3+AdW7C1zyALp40MLnVG11Rn7oXtOz+uXrC8S
	+kjXQaNPSDJFrc6PorZ1LttY/6RxzRnBTiZ7d4Zg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b203db1-e2defd85-eb48-4a2e-85a5-0f0aa4987250-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dabcbb6148695b4c1ea44f1d82f3d09c157014822490f6f529a2768c9f250c08
Date: Fri, 11 Mar 2022 22:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647038184
