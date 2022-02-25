Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA04610EF
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645806984;
	h=To:Subject:From:Message-Id:Date;
	bh=rPwXuoyNtX4DILwho41gUjLZomFdx1HPwq1TR7Xu6u0=;
	b=GDvgIMN6wlqpb96aOFvCwQNmqQ5lPUV8QoSA5nyXVnnGc6mwgP0hQ0CDfRDBKB6r
	t2eCI2NOnLuOIKi5tugMVpq+30yulEE1x9BdhDh3kVqtgyyIeSGjXamGNpOXE53daC4
	Sn2vmBTQCSYpiEkerQHC8ex9zefk7vDN9gwiM2eg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645806984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rPwXuoyNtX4DILwho41gUjLZomFdx1HPwq1TR7Xu6u0=;
	b=jDRX+5gUY2DlnaLNs/t1wuyxkr73o8CK/7RLlfthJpkO/Vji507Bx08SBZQiv5MH
	QGx23VKH9Vh6OvGZZhYo4FeL82astYy3ekthho8GUm5XJfxL7ByaT1N9rzrWii/hBmt
	KBTk3kR4HnYnoRAGm4+nYX8u9e/LqtCIQAL9krKM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31bd9e57-7a94d188-89ef-475a-bcfb-04803e817e35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5adaf385346c3dde34d3a7f5b3e69c7215eb524ad53ab4dc79a40f9138f6826d
Date: Fri, 25 Feb 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645806984
