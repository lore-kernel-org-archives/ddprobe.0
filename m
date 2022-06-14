Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14A57C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 10:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655203559;
	h=To:Subject:From:Message-Id:Date;
	bh=Bw5u4YfCw3NR2ywrd4Bov0uuCN9niPXLUm2EesQ0epo=;
	b=EWeJABL0JdPyw+v0pplHkuBHLnq2wYvT6ek0lD+pIHNmSSxpHfr5Ol3IV2dkmXnO
	q14nRgH76FQRKe+duAvLtjl6nAeGd9AgK8OkcjrDNiRThPl31fQt9OvaV/QxQUu9KMn
	tryx78elz8MBCEdHptzA2RSFKubmyIEy7Zta7Src=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655203559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bw5u4YfCw3NR2ywrd4Bov0uuCN9niPXLUm2EesQ0epo=;
	b=QzCy4Uz/vGeSrouyTq3LmTmy+bKoWZTZkIoG9KM9MeZy51G0DzEFX6Z8o82mBtHD
	4ElU5jVEJeWHm6J4Gr0M12B7CEQvqugD/Lgh3YZwlxphpiiMw1sIFDBTWt5sjM0/LpZ
	2xWzXxnhbUAE6YXwRvSlTtLQedyN/Ly2Q3zJ6ueY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018161d1f743-09e02053-0698-44b8-a934-7f773faf797c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d69c5ff82a773e43eb473f1b1424778b112f4d3df0b34515667c890fd4a5d9e
Date: Tue, 14 Jun 2022 10:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655203559
