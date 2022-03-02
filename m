Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8477E7A
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646235985;
	h=To:Subject:From:Message-Id:Date;
	bh=BTqf2hcJaUMDO9nGm26uEG+qwwK8t9v+2fDG7jx1498=;
	b=QFFCA221gNUYa+2nIvGQn7ZlGTctYOIlvVJ71nfR6Y1WBjDQBRG1TOGqsyaea9+u
	fqPZT8FKCtQYjvy57DGk6gJbfhk0ATP6TD9yUcEjjYDBaG6PzLfwVJI16YVSv8BkREd
	tpWoor9P/zkZDw3Pg/bSbhHKGDvn1J3uDyhJ9ob0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646235985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BTqf2hcJaUMDO9nGm26uEG+qwwK8t9v+2fDG7jx1498=;
	b=Ned1R3obp9Vz+dgRCq2nxpwZIbdEIHYHs+L+4e6bvut84dKTx6pcF0oevmKhNmxy
	PHkQWUag/YVkNmHP+OMw5X+/Jn9srTGBlSXzv4X22c6YLdB1ypbBRnR4qsl/aVTRZQd
	6X3T554pjOPyjnp77s+KikOx4blSXf180o7Vs554=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4b4fa3c8-8b5926d0-c084-4f26-a7c7-bb32c7dc5dcd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90e94ce4a2556138183e98288e4eb49bddf89cfe5e8d3066102bbf34e6eec750
Date: Wed, 2 Mar 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646235984
