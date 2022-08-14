Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435C4A4E
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660464652;
	h=To:Subject:From:Message-Id:Date;
	bh=HmmHMUcuA+3ormk/CfTf05Tqdc1T6/Dzo8ATiCi9TFc=;
	b=QKm+ZKFXwmyvECnmuGtY5rc5FjRZjZp/DC6Cr6ZRcbP/Kh8HYeBsgdEvHIan+66F
	Pf52m1Uc6CwefpjfT92/Nn8yCIbPKzZCfWBFZWTLNQCcJc92dF4S6I+K2xIzO3rbxcu
	rHOMnl2bcPfy9vfO/ZOLqSd8MNyMzpkV5SDz5zPk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660464652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HmmHMUcuA+3ormk/CfTf05Tqdc1T6/Dzo8ATiCi9TFc=;
	b=DfODcPuRh1+cTINeEMuhTrn3HS0ORph1UVs/m6S9D/XLDNsSeLfep4XUUy5J74a5
	6kGAsxV65qACSHHFpt1hTnUP7YrdZySZ5ZyV0EQjF6utBZIT4VQPmeDdEDcntVtUagL
	hPgmTRSJS2uMBdLw7iK0mBIJjGWHKnXRovgVLHnk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829b67e116-c0440d0c-f473-4daa-b154-0d377e24808a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1383780d5e8fa8faf69101cfada40d3aa72351a245fe475f95c412c159f31424
Date: Sun, 14 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660464652
