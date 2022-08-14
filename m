Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3D5EDA
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660485052;
	h=To:Subject:From:Message-Id:Date;
	bh=6/wMF8LNTGasv7Nr/9Fee/crXOzz9IhccMFA1jlbLrE=;
	b=dOlTkS2O1Wu3ZqSLKNS7RRH3K719sCmbD4aGRxkjiJHAba5PQxNfgMH7blvR4y9k
	fyN0lXK9oB98pKXVNpbIAFFP8kqHYhRqY+oxX+uTDJ+VbIpYZWtyxlpaEQ3Uf5mWeOq
	8RnADCJvSs17NOV3U2zYjHxRDtLo3VcUhiEDaIp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660485052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6/wMF8LNTGasv7Nr/9Fee/crXOzz9IhccMFA1jlbLrE=;
	b=V0o9VeFWPrZ41gt5EsTLKc526vzzMPyCXPhN2p8Y0aH1pkQFdV3TZq5PlqN0kAAP
	HdVYG3XgH4Riu/p0x7Bv07yK666b7ui7v8xQd8pxZCf6pKgawaIYf2CRRp4WE3yejQS
	vVjJf44UtYRzO42gxMTV+3+6S7qDaW94o0vxgrqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829c9f285d-8083bf2f-4c19-4968-be4a-8048512033d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a71b85bb828ef1f08fe4ca1552b4a5b8fb1b5ebdb4c9a00f15169c49afe4e157
Date: Sun, 14 Aug 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660485052
