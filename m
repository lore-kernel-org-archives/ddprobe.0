Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B3B23AC
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645079484;
	h=To:Subject:From:Message-Id:Date;
	bh=jLm2iudGZ4JBv0YHAoiFZo7Tmuyck4daAfg2LmMmWms=;
	b=X6qyQ0jLrtxBtgaR95GvKfAsrIrPlBcSApBkNlAyz+TlMkOw+xH/92t0WukiGDPZ
	93q2h36pq6v8XjE8cAluNsRDXWYKHDrXcLvzyNuSDfZk0vHMezjhkw6LN5Dtr/3KxZX
	caXB9NmumxpZsdTExNNFi2rfgdJiNrgYP04kF6n0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645079484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jLm2iudGZ4JBv0YHAoiFZo7Tmuyck4daAfg2LmMmWms=;
	b=ZzNPlw8fRj4N2HP2/fzEH7Zk/boDabrX8haXhg5GysCwx65aDkl8/tUsglbbdXeN
	Ksu+qhl5Z2tRQBoe4LYyt3nT8rnah1Bpn5m5442wSiD9xeUGvD898E4Y/kKrCVqoSqB
	qUoYQIcL3GgMxKK22WhHYfooEdT8zbhLpSsYN38c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0660d966-ff8c0f9b-88f2-4d83-8393-c99cc6398d12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e601a673ec810f246504f3ad2657971b5f41efc3d7e805cd37f8881d82875d2
Date: Thu, 17 Feb 2022 06:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645079484
