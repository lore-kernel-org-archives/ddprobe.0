Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1D62561
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660717252;
	h=To:Subject:From:Message-Id:Date;
	bh=H29QmGPFxiYSmvt4bWNzOJF6k8Tj3erwqEUiITMVFJo=;
	b=PXrAuhlPWq7TDPs7Kd0CJ54lZMZWeow+XiHOfvVKO5V3gHPnRsdl0Lc4tBxqCFGs
	WMCJlDr9BwAkUjeSTvP7hBx3wZyKO0fmFNDh4hYohZjgDt7mUMvM6PgklBtq+cUEVgs
	ej7TAuUYXQ3cEhacMdhvBo2qgjHg13RmqFic6ueQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660717252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H29QmGPFxiYSmvt4bWNzOJF6k8Tj3erwqEUiITMVFJo=;
	b=VJbOh1jvmnCRbla2RmrDAXKgI78Ubl6j/QT2gYXSELdnLKF2OqFz91P4x4B8TSUI
	5+AEZwlpbPIWZ1r8pXPsb0GGLRdvwAKr4WsozLz5E4Mf8QEKZhPyZGhzKXnnlBgX48c
	1jWhYGaIFcj10gFrwrrGeEDfttzjSgszaglWnlHE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aa764001-98af50ef-d349-4fa6-9cfe-33599f08e8f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95a0d8f04628102ec761717e18c6bece11d4eddc41480342975b1ec71872c16a
Date: Wed, 17 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660717252
