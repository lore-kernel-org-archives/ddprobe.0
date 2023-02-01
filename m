Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCB73207
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 13:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11F29C433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 13:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675259646;
	bh=jbQOxgSRqt2u3khSUW13jzhFCS27tqpPjeJbZaWPYQo=;
	h=To:Subject:From:Date:From;
	b=szPcSsXWKaVdhPrdZrKuympskj/xkqFVLDlAUqrGr/BJALjklxPFS5GKdXTTRsNHe
	 UzK7sleXDUmhNjDSgmDktFaRo1+9uHmuxijU3ETW9YCRq1jb9hKw2V726TmJyB3uDi
	 +GmowPqSGKuny7WenoSo7VUHasSEGgnvj7NyYRf6K9isM7c7fJOUUXpQKaj0+nBgYa
	 Y4Y6gMcZl/e9bgAOTVL3EiaesmrbBCHv6k1Ipfax4aNxmTxa+OxPHv99NqNjYwjwrA
	 X+Jv7o2D6xvDiwRQBuqJ+05NpJRtQlitSyj/ot/heizDqg4dXOrMUdwfCfyEV89bsQ
	 dhTpgeXhgbLWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7DE5C05027
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 13:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167525964592.21054.8085306284662594234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e1db7358801254bdbd0ac7cee19e7dd1c83096b5211104bd25284f72a0fd1f
Date: Wed, 01 Feb 2023 13:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675259645
