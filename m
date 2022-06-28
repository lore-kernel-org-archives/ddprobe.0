Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E897367
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 05:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656395212;
	h=To:Subject:From:Message-Id:Date;
	bh=b8TbKQS1VB0kfz1jxuMN8zOGhilbvkpLqJad1EsZiHc=;
	b=HqLQ/uYDTxmtO4EwDbpeX0zNHKStNeDBYUFVE3tabbqClzbU+ueKnNo0AAzD3PNa
	BlkZZKHpXzEJYMgYh+z8EirOsKANY67Y+5fyxB81hIWJ+mdhG7lITn01s0wrqlvTVQB
	TRNErkX5czMkeh57kCZ+e7VrZEjOjphwz3x1huN0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656395212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b8TbKQS1VB0kfz1jxuMN8zOGhilbvkpLqJad1EsZiHc=;
	b=S3vlBWauZTfdCC38gbCjWjbcPvIxtWi6mprdNsCXtICGkrhE8dz2luFq+bI+FFLm
	anUgKaB1PoBcbJ+eSh1/e9a9I2dmYtUbrHEUx5mX7B9Pr7gG0KHwS0dlmLEL4UnFQr7
	n6U1ptVzZ/E9x8vgIJXyV/9MVESsd6nfjCW8hpas=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a8d9267d-b46de633-d73a-4620-b279-0ea1349b1c8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c3a6fb3d02d6f6097e0ec4f23516e2e098b8dacd263081fbd2198de16658f22
Date: Tue, 28 Jun 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656395212
