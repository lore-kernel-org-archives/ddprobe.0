Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A23A42F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 11:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645182985;
	h=To:Subject:From:Message-Id:Date;
	bh=qeo6HQfNXJKZI/85Hhfiph9S4KzDBgdZfCOZw2WZYF8=;
	b=gpucvkIvGdUH0GEtg0ZMtE7oFx5ieOl0KYnDN4h2B0bX/lZwdVlzqlfrYrv7on07
	VHTBFWr653fdIeGq2rcGexXkp6gEJskHdUHsJ88BL33/lmQX4UFR37lvm7UsZ7BgKB1
	uTrP7hQpMsUuGosA58qAsk4IlvDgwE3m9wYvujh8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645182985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qeo6HQfNXJKZI/85Hhfiph9S4KzDBgdZfCOZw2WZYF8=;
	b=gewGHhSJqgLx9PQp1zkSf+/SYcBDd4gxygQfSOGUk7P1lq4xvAwixZD2I+nEA/63
	YUYAAdfTpVTWnbypP6uu4cVvtizwwEchmJXZcqHCTgGMMMs3zQt8SSQ1rwvAzkPBvNH
	UvQ0/YOXwk5yukNG8c+nX+sl1kh6sivplS+rJWyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c8c2269-944d1e9f-b737-4d76-b09f-fa5e0ce90a01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7449c1fe7ad6a1508fcf6eab9dc2a355868807a922075aa19ad2664afd67c40
Date: Fri, 18 Feb 2022 11:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645182984
