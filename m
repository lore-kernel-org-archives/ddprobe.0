Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A31FF33F4
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645479385;
	h=To:Subject:From:Message-Id:Date;
	bh=cTbQ3uyX1RCiF3+udXKfGSL0tBZ7t8fnXFxrYRcvGoI=;
	b=YgL50jGZbwZW/c8el1u9FoRn6sUcwmNNAgwMxmTRfgwni/bDYE8rGklb9ARoo2Vk
	t8Z9RTQAswVysF2+2IXdMLpV6u8Vh1f0ZkvNoAqXrvrN1c4T/Q4cMJ8+K7fYpERc/Yp
	t90EevCjReH3skW580+GA2R4iftF1eXu39cJZoVU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645479385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cTbQ3uyX1RCiF3+udXKfGSL0tBZ7t8fnXFxrYRcvGoI=;
	b=S6UA+DHSrwEyjR8oowluWOtt4chFA6CycUDVBBYzHaRCypv2udeINkMC7GFe8oQn
	RXddxzDVC+jGvbNQBtPtqv1Rhj4wErsNCD1pk6hst3Uvl0fgix/xJ3YRwJIdtg2STFr
	JzCd49KM82mwoph65RKzHeXLxxX6BCvQixyCjds0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1e36d6ba-1b364156-665b-4f76-8e21-be9274f38f49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fad2feeb2e928f1681b40f4ed23e986d5a750d11f7d7ae09ffb946836a55ad82
Date: Mon, 21 Feb 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645479384
