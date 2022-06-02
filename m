Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7877F4
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 20:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654202399;
	h=To:Subject:From:Message-Id:Date;
	bh=neG5K/ffrrVHeDaDOPg1G6xWETQ1sP1qhDNvWJ1UziE=;
	b=BX2kDhILUJeowboknq38OBynYnRqNcI8KB0Kpmi5AZCN88hgQkNV4Q9KoW0vTGal
	otNpnwfzKaWCOkyYGCVf0AZX9nhgvrPvplkJnKWu6pMPnzSwy+16LhOzXgzqMXMQ7un
	cT8j1yBksKC44MPfOTUGnkUPPEQgR74/MybZH6sw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654202399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=neG5K/ffrrVHeDaDOPg1G6xWETQ1sP1qhDNvWJ1UziE=;
	b=j+A2LtfsERf/fkOpteFk3my2zJ5FlKJ+eXpatj2nziIqz9+yn1r0SU2LrRnoX1Ri
	pNEJZN3p99m6d0WGRsO9fepFJVPRQHqRkrLQGxd6emPnNZBgE2sy3Tv1yt5AjjHj/q3
	AI4W6DVd8qt0bN+PcGJouJPFYg+hkPmUnICoFtgw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018126257a91-fffdac6d-7cfe-4d40-b208-86fde9e31f87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 416a0eb633b58f9782ce6d5ce4370ea267cec45b320b1bfc1749877d1d3812e6
Date: Thu, 2 Jun 2022 20:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654202399
