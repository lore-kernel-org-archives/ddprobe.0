Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC7E7E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660378252;
	h=To:Subject:From:Message-Id:Date;
	bh=H4QFQKauQdMXO5j4rbZxX1JgclIQiijrPCs+IYbxeos=;
	b=C+hDuPFowbWBqSD9Q4fkolpRUh0xRTb0itlwLkbW2TWZ+uQxfvK2KZr8rig2cfH9
	1dKN2yHCjbu5zcQtKF0UztPPknlMMk9mGfLVZL2sK3mbCgTC0tkvTUbbaU1VYpJTnEA
	eRAaCWgVWERFrCpGBY1Tn1XUtrV02pcJC5ttDtRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660378252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H4QFQKauQdMXO5j4rbZxX1JgclIQiijrPCs+IYbxeos=;
	b=DFhJfy1dlEVXLf7wkMja7NeM6kelScosDFymWMHjLtBEww/THsG/EswXL82sQUkt
	h7h8unpvs6rAFdceeHsThnFcImvRWwJv4eCiEK/tvIFcVI9ruS1BJCUGFmAKU8qWwB0
	dXD4j6NETwT+m8WJnNTVA+0w0gVXzT++VnRdnGtw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018296418529-0411a64b-5aa4-4ab9-96df-68c6361d5bf7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ab51d286ab4b1e197f516c2548bad7dd0a897fdab06cd8de265c70d9410b713
Date: Sat, 13 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660378252
