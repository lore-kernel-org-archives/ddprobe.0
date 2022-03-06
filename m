Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B6B7C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646609184;
	h=To:Subject:From:Message-Id:Date;
	bh=l8BTfo6Nx9T1Bv0poyepMb5Ln7d87fxwD/yRGq9Hvxk=;
	b=bXUdhtxCEqgPz9Y1b4mFSCGaDntch1Pgdxa9v6xa8l3+rn0wuWnAEqLLAOaf3CQ9
	9XPgrcbJsQ0uVgPFPxbQ9MO99PVrxiO6CB9sqj0UqCIRdOUx7eZRhDP/5zAZykejfOR
	bcr6axz1q1w48zyGzfAgtnB8KBc0EgK2Kt/LluDM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646609184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l8BTfo6Nx9T1Bv0poyepMb5Ln7d87fxwD/yRGq9Hvxk=;
	b=Eme4k9fgr4BGjzZH8XFYsF5MiGh6STFcfWLOkAxKVEwwdWP7xDJrJbCcTIg9m70C
	Xv/v4ZLZ9o3+T+jPd+wmpapbCuhUwHQVUw0VVU8OrvJuuiAfQEo48JqaJWfJb0t6I7b
	KGw46ESnLTD6SrhxtspJN4PuI6vMNDNQ5VjRcAcU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f618e37ee-499691a6-7e20-44b3-b2ef-a77ddbc8bd6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c1e73f0262f987dd03c4555734c68540f29d77668aca5c141e687546d933d67
Date: Sun, 6 Mar 2022 23:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646609184
