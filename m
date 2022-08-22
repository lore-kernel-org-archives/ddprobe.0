Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C817D256C
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661179852;
	h=To:Subject:From:Message-Id:Date;
	bh=qg/3lVJt3x6qpMbnJeHyuj/Cg2NqDlJAofkRji2E2KQ=;
	b=HGo89r7PI6c1NuUQVKBlRV6D/QXE6Wn5f1EXkZZG3BCo/sFqv/wowolgnoH2p3Sj
	n/kRVKWODQ4+SbRylYMx2yGZS2KM+JjUw3bAJCt6X27jY8uGAWSA6DBsofvRm9ZJrnR
	sayRVS9OK11dlf5VokO+qnc1jL8GBsWgvZvQQACg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661179852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qg/3lVJt3x6qpMbnJeHyuj/Cg2NqDlJAofkRji2E2KQ=;
	b=i1BLc5wPnN5Fe0E8UowrY5JIGbP2Ny9mLHhsy8Lyqd13RVHt+ZRERD5Ncgq/UBdH
	CG6cDNbfguEy9w4hK39PaioqIQO7yUwlasKvd0uY11LkEAhS3x7XHeLNwhaqczg5xzd
	Q+kyOHNKSV+BXJ0OA9gPBmRoLpHVIeGrNvaeScpY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c608f74c-668fc443-8d84-43c6-88e1-afbec308f48e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e382b4e494433a89bfc9451708d1e83faf69c6c4de20708b8d3701e23e70c511
Date: Mon, 22 Aug 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661179852
