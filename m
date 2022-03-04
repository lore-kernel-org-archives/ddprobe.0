Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3236AAC
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646435485;
	h=To:Subject:From:Message-Id:Date;
	bh=915g7+G0n65KjJMTe2Y6Ho51NPdJmiB104whZsXaBHQ=;
	b=dTuWzlMnbdv5NVXzP4HzRQ2GNiGPbHF2VAegZM/5/PZEG8oqBvQkzM/OsItPbVOG
	qdeaWpPM9umWVBSMlUTadU5ncdzwyn66T2BDGckZhC45y3dU0xp75jAazux3+w6pMVz
	IoB3Uug0HULRoxHweGUEz/hiHkK33J29fYT9D3cQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646435485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=915g7+G0n65KjJMTe2Y6Ho51NPdJmiB104whZsXaBHQ=;
	b=i7tTJEDl7yHjDosqvk8ZlFrZr5KsaogI5CGG3f5m3afDcZA8yxHkEuxwAdOD4pi1
	1peQTxIuUGm0mgEC/mZ44bdFMiQnjFz8gZxZzd8VUp0AX+/lX2TXS/OBLhc9EcTTbR4
	cHSjfkrctZR4dJhoMaLspebaKEODp/12NJ0otomQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5733c44e-13a4795f-0a84-47e9-8e83-b7c3ab5c5ed9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7fd302c632527f9f8467c91c01e946503b6df11d0a2b206be2e74a31702a91f8
Date: Fri, 4 Mar 2022 23:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646435484
