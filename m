Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454BA3FDF
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 19:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656097612;
	h=To:Subject:From:Message-Id:Date;
	bh=pUjMdk9hgo7w9OlFniMuh7X7jLtiqEjjam6a4TXj37Q=;
	b=lK5Peevs8PRo6NcNVXMhj03tqA4OaS8ERUafe1tENeFB8FG6mj2iaTuHh80iIV3S
	NNEHi5IfR4v4XWSLgFlUtMTfI2siSfc1XoE0W6/plWdGHZC1rtuyQ061dGXAICNusB7
	LlujU7pejS9OcfABnSCdj2qRBxo5P23Q0LJ/8RgQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656097612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pUjMdk9hgo7w9OlFniMuh7X7jLtiqEjjam6a4TXj37Q=;
	b=C/zdGukw228A3tMw3fBtq1tFhkoMTBUPWXtwVqdUrZXdUHUHCPUR8nHAddDwuBJD
	ArLfdXtD9tvG7hRCh+QyOrXW7bYfqQgRDDjcT145m7eEonyEQpsWFOwoLTHR8MP2lsZ
	XpeO/BYwCa6XGRVxYDMB916oqGUYlEPZdLmIReh8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181971c2224-c22fa9a2-e9cf-4fb2-8333-b0d3e1462290-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f192235da237354648caa1717c41e762f22b439ea5d7a94f3428a2cd0787d46e
Date: Fri, 24 Jun 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656097612
