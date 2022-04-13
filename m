Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C2C28EE
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 12:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649851438;
	h=To:Subject:From:Message-Id:Date;
	bh=zRAT4wOflpqNKWrZZIxzRXbAXg9pf0+AEIJ7Newvaps=;
	b=iV+2HalHdmv0uZQKBDP4Vs4h8lTYQ0XDx7GKFTVhRXcaBjZF/npW0C754mRLtwDd
	nIgYl9Vk7ehtREkUkpuGJGCcCsgDpkEq2QQjNYOMbF+i9OgMaI3c57n7uESpo3N7lEm
	ZOgNVHJJ2vgtfe3utAJXu1HwxhOZRHqZmmXT/oDU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649851438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zRAT4wOflpqNKWrZZIxzRXbAXg9pf0+AEIJ7Newvaps=;
	b=AFFDwwMHiSRJfgmArTg2b5/SVvuaez+aH/iBuXD/323pZAjmUi5OzERZmjt7cAgU
	/BoiXd0zwSCNuuNNpbvbY/XBvP7LsZuMuTQLrQg2xfTeot5q7vo+Tbu/kbcn0B9obxA
	nRJahr7TRhPHd+/Qze5SAQGVIl1cCnoOX35CmonI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018022cf14ce-a2bfd646-98a0-45f4-97cb-ee46a9e74ad3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7b184c554434137e7ffbcb1e4aa112f64f23fae5a03e7b6ec91ea382d2806de
Date: Wed, 13 Apr 2022 12:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649851438
