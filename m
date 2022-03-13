Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4747E
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647181584;
	h=To:Subject:From:Message-Id:Date;
	bh=0Xfc7SlxvEiqd0n3j+d7F1P8CBtfGN3pIuz/GEcgqc4=;
	b=YBlCfSvh3LgH5f+z5C3GJRrLRo0qKXxpVCQZhit4E2QPag08wzNAeXmSR5zIdNzB
	//gfBgkXrKAURzol1i4gdtan50UZqCH6++nWzC0eae7ihzq/XEVCXzd0vvdLr1b5Oj/
	YvuGCCVeqG8xbovXEwbrzDg4Ks6MHRNGPQ0T/k2Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647181584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Xfc7SlxvEiqd0n3j+d7F1P8CBtfGN3pIuz/GEcgqc4=;
	b=ACaTNPv3q4QkRoPZ7P6wHXvUuEMDvW5JBq6R34esX7YuX3GOpFdWD9RxU45GU2qY
	ftRjxvvMCACRbMu3mlzi5ALF4zPfxZz+aQEnxVhADhngW3iiISQcJu3ibBHPMe1BoLt
	sOg+zv1QBKiBzXdQ7p6HTBxYWP/5uC+svyoggHpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f83ac59a2-a84fea9c-297f-460e-bb9a-28d587eaf0c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1528274953c9bc094e4bbc981a03f888c25317e11d0d3e2e6477cd4ea352af0
Date: Sun, 13 Mar 2022 14:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647181584
