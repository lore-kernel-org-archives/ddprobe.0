Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5D57B
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 08:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652086798;
	h=To:Subject:From:Message-Id:Date;
	bh=SJVebKHcA6VhB3B5iHgVx8ket6/6LHWsmURqBVZl080=;
	b=ic9P2sxWaZDJ295zlzdX26Gqj10FlWBsLdsLFboRchD/dqg6jkMOZ+WXGXNVG9yh
	g5iMeyDUtP0+hw+O6uRgr20zHNn6SixrYrioQJeodZNBh5axFwR78XZgssNNIiKLsLu
	fbj7/vH+xu0HqSZ1smkgh/KE+yEiz6lGkKT2hwCw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652086798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SJVebKHcA6VhB3B5iHgVx8ket6/6LHWsmURqBVZl080=;
	b=H5XP6mdOWn0LBbe2XXEb/D5ccOfsuSnaNBlnBZKsmAfBEmr8Qi3p2c8e5wuSX3tb
	HwAy3TB+89rbTK/JwxJLAH+M2f1zUl2FnDoxL7g02Jl2PUVykVfYS4EZCm+OzPTDVlT
	MHgK6/hLytxDv6MuSHY3GngkOd5Qq71yBAnMfJqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a80bf7b4-5c5c9d5a-efab-4661-acb6-3442a072d9bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d644b404ef3e49ddfd733d5d879d15e1cc29a977532b4a8ef1ec4bde589af7f
Date: Mon, 9 May 2022 08:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652086798
