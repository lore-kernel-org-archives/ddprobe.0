Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B3D4692
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660071053;
	h=To:Subject:From:Message-Id:Date;
	bh=mbII1d9oLDtpmm55SLrKtRr+QvPCe9RAGHco6gdlDfg=;
	b=DX/STgnRikjWqetaLLU8Ow7Mee1axnqzi0RW/W21/GCeyewSbGHR9TmcYpnRS+fw
	pVyKZeH3YbvxI8xW3esTinv6sqqhNVpZlGv/1jVvUVEqwGiYyd7LjHsOwZeAIT8Scro
	iUQ/NzeLv+iAjt/8hn0HmPo5ZIisXXn8ACkfg1rM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660071053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mbII1d9oLDtpmm55SLrKtRr+QvPCe9RAGHco6gdlDfg=;
	b=FrIyFNHL+CeA+/HY0Fokudjo+YCQyFLWcR5yNHyddZ0M+MOzEA+1RfKim7ttnqpK
	xQwvpmpZNLQhQK89hatZFoyK8arn8VFlMhpvQwV8PLF1XvpjiNyq3Q3aHbdj4JPrFvE
	0SNiw1PPtHqTXrViJzlJAcRNK9PmknGVT7DKbLi8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018283f2055b-0e5f163a-436c-460d-b90b-52c32adfc44b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8054595429e1706c8ecc1d2b092ebb2aad110ab1ea8ec295e31c6e6dfc6796c2
Date: Tue, 9 Aug 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660071052
