Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52494366
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659516052;
	h=To:Subject:From:Message-Id:Date;
	bh=TFJ2sghV3hxOP0PvTUfboXag1EvS5ucv1YB0xovCyAk=;
	b=E9Oo97dVKQPN5bHovsy+0SSs8syV4Uc5FinzVpgNZWZO3lYhxjAZNUzy/nEZLdUp
	ac1pKyYU3sySegztFR0t3HoZOCPP5RRFn8DtO1U6As34UyPIGD+B6TkCkS8I7GvojUS
	9Myz59U8WYakPYEfMSv3v3odxGkv+/1ZQlQgK3LY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659516052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TFJ2sghV3hxOP0PvTUfboXag1EvS5ucv1YB0xovCyAk=;
	b=d7m7Mqx7e5HnOC1DlznP1fRY9kodJqvE22qrRzR6q4ciKliMKXStcjU4tWoIoykB
	o0BxCqKOkzTjt2GF54ZOA3Cvx2lCE1PvHTiJwVs4SOlXpBoVZX+r9YEZHklKdnnDj6d
	YZiecMh01+jOO9PVvB1lkfzJiQywRqA+R3sbN9DI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018262dd6462-c000b748-5a43-4bd8-922b-0332684d6e02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9269e929b224e6e0639146cb2715393a08c847c128d867abc39579d35f782784
Date: Wed, 3 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659516052
