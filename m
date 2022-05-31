Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DB17E
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 17:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654016639;
	h=To:Subject:From:Message-Id:Date;
	bh=9qoVUKs80borMCzcNEPHBvBX3aJPME832eacvq8bt+o=;
	b=hSgc9B6z5fgTCmRMj3Zk6cUV2USd3gKOdNSlkJyDftFmRYmUJrqjSmNKjUYko69S
	4KYL1N+kgVegobwaUXRZbCDuuy7/49dGR62/g1PVXtwavOcaSGNFgSv9SGXI/1puASN
	OkfSmTzmT/eq1Mo0+K7+41LNAK5WUKbIh64vMI4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654016639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9qoVUKs80borMCzcNEPHBvBX3aJPME832eacvq8bt+o=;
	b=HwHkGI4ADbIsUojAQ1/xm7jbZWzc7J9Q8Niv1AVLl1QlvXsZicL2fCJ1zO7H//yP
	ZQK/ep1NCoNUkJEnWR/4jCOGmK4ihLqIj7qqHRwRQ7wr3LaZNAnGEy3fPK/4/JLCXFs
	XCWAvdvwvwFLiew9FxEiepSRER0RuXNmdeyO9W9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811b130118-e806d508-7220-4a1e-a176-0192bb4ee3ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d243f1752a08d8c52b655517df085e7583df789ddb12aedc800edcc2e947eda8
Date: Tue, 31 May 2022 17:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654016639
