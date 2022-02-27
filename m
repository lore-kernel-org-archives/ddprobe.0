Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 990F87C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645940485;
	h=To:Subject:From:Message-Id:Date;
	bh=eHKNDAq6rnQkHKR3jT3STNnlH+pFd6yIURuOgQbmO/g=;
	b=XnPkPRyVw9GuJZe+w0FySQ3NDdxjznKwVkOIBlwYQqiV4EjjRMi1KNR77tPCsYY7
	6SqKHnQ1ok6AAfLjfbyw3LEgGS68/P8m3BmfQahkNbVLNNDkMUVcbd/QCGhipbnmdZP
	C6FufjiajaDfX4gxaTqs9LCOD3a438pjuYjd0kew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645940485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eHKNDAq6rnQkHKR3jT3STNnlH+pFd6yIURuOgQbmO/g=;
	b=dKPcqRBrHPSehYgXjbPCwSPyE2srwYE09KCTRR+EOixFil+G03yTTVVlN5ArXGmK
	XKQtZoRtm3SW1Xh2PtlwOTEOrNKLXCbPvcbUEd9mchRpHROHpPv4t2s7Z2pqr8au43e
	uR9f3CS0rveMj7pgPtv4V9OhkPyqZj/KNLa7pzpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39b2aac3-5bb5e279-d798-40eb-ae24-26c66eab3a24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8c9c3a9a65d2d8df585e80469f33c1e212f8cd53541acbe242a32fe921fd32f
Date: Sun, 27 Feb 2022 05:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645940484
