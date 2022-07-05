Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE3E2917
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 22:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657061813;
	h=To:Subject:From:Message-Id:Date;
	bh=5EMoqyuYH7mgFCqt5fep7n44PcSEQJCnqbdk+g2jn/w=;
	b=kdezBSw4FSOuLQpUHPBIyGPoD3YbvjjXoUNKaMcx5tejloWaXLhcstVx+CbZQ8UC
	2vUgYlc6cXxPr5ieaZo6JbPiYoe7bnecYHbrtJyddSE+ra06/ziNniU/r+1Zebg7xvW
	g0mPUra1PR0bw+Q9S5ZZghsbcWjsO4oJq7tUGllI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657061813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5EMoqyuYH7mgFCqt5fep7n44PcSEQJCnqbdk+g2jn/w=;
	b=dfJDVzJJMup90jt6W4EwkHGHb5lVdwWLaHdMVUiUHNqlCHbg1QASWhCXMjo5I+7t
	eckDvwJGCHWh5KZwvVwpkI7s1Vj36QxeGjvnT3EPmneKuteYxKUoq27TAzzQiVYYYUv
	/nDX0w6vpWXNpw3SL/PD45WzTqBL2RjwsvHX4SUk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d094a846-1898d8a0-bb4d-494b-a364-ff8d05e0b06d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1c6efeae22c6a565b67624f67d06c2c8c78a5175e29dd5a909a46874ec85e31
Date: Tue, 5 Jul 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657061812
