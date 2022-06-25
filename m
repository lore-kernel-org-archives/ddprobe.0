Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0362D17C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656147412;
	h=To:Subject:From:Message-Id:Date;
	bh=N18LhCX+/NJTbKILMDZ9GEOT4TDpKaC1yDR1eOevKpY=;
	b=GisrHCDT3yFoKAEHpaOO+xLgssdB7Mr1PhZW1pCN6C8cjzxVOa03zvlrbYWD6cPn
	v8u2nKU+kTZtZ0o3KmYEQ8KOCEsKAnCTvipZkTbM0/aRiiGZIe0OimpQ+mFSCEdZLsQ
	eZAI5jqvl9Vxhf2LAc+kCbuv6vmNgmZu2+hjqf08=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656147412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N18LhCX+/NJTbKILMDZ9GEOT4TDpKaC1yDR1eOevKpY=;
	b=KoiZRtTy00KaVW3kF2fgb2H+mWkZmro63Ch/fO+wHcg8Bs6RyKu9lkpccvBTN9Dw
	vJK8hf1sGNNf3vzlxgda0v8ho7wppeHQzMBDhHFw6b4nPv18kBbGnsYAUaYTE9p1DwU
	xHI2CJb8qw9xRkP+muM//qtFXKDCBAAxtH3AT/dc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819a14053c-c3576fa1-a7c4-474d-b8c0-5a165abea5ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94e4c96432a827bbad68042a0f03069b61a15dff6d2ec9c0126b58a25a898cd4
Date: Sat, 25 Jun 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656147412
