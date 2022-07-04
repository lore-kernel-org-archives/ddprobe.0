Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1EB3D99
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656947212;
	h=To:Subject:From:Message-Id:Date;
	bh=w8BABZJFesUYyJZusK9ULpG8/VN4bceY8N3J5+oK4tk=;
	b=GlPRTBlUOoQTDB5ioAbK+0oIu4GAE6v5gfzfGSeZ1Nj23CDOYnPyvNxfqzSmMG5m
	Jubgp/V/BGmLzgbWmRFTOVqiZfkrnG7k92nRCtlhO12qUE80pBEn1lkXLYL8QZ3RyP/
	hIcf814MaJKkFxaV3f6mKaDChoasf2K9O+55wkFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656947212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w8BABZJFesUYyJZusK9ULpG8/VN4bceY8N3J5+oK4tk=;
	b=iRliZs0QbpS4FEWfT7eYGEaENBL2jZJFmjIX1UPbnP6OQOwTWf60WMKbQT73jEuU
	Rbi5QWDKT0mc5Q305acuREeLmI80ZaeAYYFPgblo+w83GEUaAMR4vSO+5IlQhr6gAUw
	hUgP1I+UxtSWCLS88uOMw73r03c5gYJWg0kKe7CE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c9bfffde-b0515c15-94d7-40df-89e0-3c6fc4085cf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a55c7b7c2bf43023c0da5580228cced6c6681d68aa820cddf31b06b1ac1f98c7
Date: Mon, 4 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656947212
