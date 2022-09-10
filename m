Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5B81858
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 777F7C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662831653;
	bh=UyKrvUHbaL/XZz0zrPcAJf8WMw2MtcgnnoRfa5nhdZU=;
	h=To:Subject:From:Date:From;
	b=oUK99zOb4BNOa7IQPlXrghlOEWqzLp7oZFMoO3tD6OMX32CcGDneVWPkL/w7HHcsU
	 XKJ7sfM8NUNojiysg/8oIPyoCketQkYRqbUpTO28WFn/XBQTCeDtmQz2T/ZJOfNnQf
	 MpbRke24/H4Cu2Lrg3adLYtdmmLuPouXG3yBXSM82QsdEDF7yE/iRez/kNijqBrrG4
	 N3drYzVCuHFrsQLhpRAz8rcW+EHhyQ7XJ9sME0Zv0E8ERiYE1tkeu17Da/4N3jBJ4F
	 KEfg5qfDvFMQCUeC7VM6w35e1A/UPS8F9+ga5G/Bwo0qg524Z7noRU+LS8Lt9+pv4v
	 7bp1Ys5o2ELpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B6F2C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166283165335.15978.17101766613600660495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8871e2b96d53d03c2b0c8e61ab0ac82be0b1dc373560cd2a924a3517a824ee90
Date: Sat, 10 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662831653
