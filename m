Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E2D7A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 06:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658041012;
	h=To:Subject:From:Message-Id:Date;
	bh=aNt/ZgU8TXjP4ySlGXJ8NHycGsFR8a+fDAjD53nM5gw=;
	b=X4XvjCJd1IdrC1xaIMrky6h8huYHG4YtvvqFK9/UZH/X5HiCqC4804KDxCJFfqxG
	YOLDzcwsqIPVT9JctzmQvELT0d/YncplzpMNG49cZZ+wifj8dx23mGl6VMu3ega4huo
	WDytX3EG5XNjP+d90PzZhk27ypUJvz9e9OXe/qts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658041012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aNt/ZgU8TXjP4ySlGXJ8NHycGsFR8a+fDAjD53nM5gw=;
	b=ctnjnaNedO+5dO4/twSArhQp9XNkTbDiOWaL7fgIddynUG9LKxyoQM/NYAHMO2Mr
	byvvl6EEUj7HFsxzvil22SPwpdLBnjAWt54kz6jz83o2DkP6iSwtxJpxcLgYxtMhbXE
	uv3NJpv7vmd3qp3F8pF2eSzJfYLEv4V9vSSyTPQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820af21066-9c1cd848-a367-41c5-92f0-64720bae9318-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c3634d5d41f4be6a0452a2221f6058f6e3119a4ece095595a47f78a68334923
Date: Sun, 17 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658041012
