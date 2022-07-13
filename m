Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210547A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657698412;
	h=To:Subject:From:Message-Id:Date;
	bh=Xgmrs3K6p5I5cSJKJZBG5pX2aaozmx1bWSkvkMbGQTY=;
	b=WB0DGQ174qEdrDbZ2Uo5YM33csvwj5qQUUDB9Y7mk7G8EsubK8p6zUm99bo7191K
	BoNV5zoC7xmFgNJ2kEHIRsshRg1yiGZzOgXwfNCIojF17o3Rhy6vQGBhO4nJf4vzZFI
	zXBk/rzhLmMu+1Ov3SR8N8ynPufgX8EWpIue+21k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657698412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xgmrs3K6p5I5cSJKJZBG5pX2aaozmx1bWSkvkMbGQTY=;
	b=gc6YDOf/Rb9MaBwN6a0W/aznv+12g0okTZpOKV2bqlDVOXfiV6YU9NlMA1dmGjS8
	YgwgqWplatng/3BcWzqL0kMVxZgMaKC7vr14OXQquUgmBAC5ORktCAoR7H/TMaGssNk
	xNckk6gYirEbys/I+GSJO2tD2A+pDHCmKBOkPzWo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f6866706-857fbe57-9af7-4c3e-b89d-f7c951beaffb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a333c01f85dd834117dad109996f98bd363898316edf20662a4f6479eab713a
Date: Wed, 13 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657698412
