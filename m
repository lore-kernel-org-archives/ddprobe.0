Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C06B639
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659583252;
	h=To:Subject:From:Message-Id:Date;
	bh=lvjjztMfCCYuh/TtbWPvMy/l/Y+rOS+HLU8xn6KlR6Q=;
	b=VALqSO3YjCq/axynVqk7/utkyur3dgAF60zgaDLiaftpS0Q6azLxk8+X7jKQ7DDW
	CsCp0tSEXPlLBtfH3V5doDx5b4q/DxL2JsmLFIBeh47oAm8ig3rSzp4FA4xaDe2981z
	Pjc7ZjdeMpBZJgSG91X+6mnBTIpSxMWp7328qkRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659583252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lvjjztMfCCYuh/TtbWPvMy/l/Y+rOS+HLU8xn6KlR6Q=;
	b=R92Pdvd0TvWgHtD4WxeZF/xWqJo0BCe6JSRP2eIwfYtaR9oBOBpm279si3YSsx7F
	NvERd/ditueG+/mvcFEVKBfLiMYrTzy+GEh8ndMo/6quA1dE/2rNcuCpTqrZcQs7zZb
	VbNSUIo/Lejx2lzyQ3YBa8nE20aI//q3aGbMDJX0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018266dec857-26eaec8b-ad8f-4e33-ac05-737a3e04efaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ea5e28a0fa62b40b3c7818e0cca31debdd83ddff097121c4533ca78e968ee00
Date: Thu, 4 Aug 2022 03:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659583252
