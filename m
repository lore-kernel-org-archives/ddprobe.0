Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFED829B2
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68C93C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668763854;
	bh=WHhty3ydz9CnYEUsovGSzhfF9o7NxE0PGPtM2M2WIdo=;
	h=To:Subject:From:Date:From;
	b=lhoj5UaAVb5dZDMSWxWMYyB4ujXIx/+52ERaXiC13OIIKQMXlH7W8Rpge8PvV4Bpe
	 X97QnXTuMbCrMEDg4XfrA0YN8ohT7KYm4rq1a2TpZcjWtQ4EdKuP6CMXkMzwt68FPn
	 KGHZJm2OZwDkP4DOma1dPGZGefWw84fTgt0jnsQAm99dZRrHTnCKD4gmO4SDYShHOs
	 OEl3olXwxfXvC3uhUgIrOV2MT78pn3lUjWYgc+sTDbNoDUFc5rDNirfzV6/nKvO55p
	 SNK+UOS+spfoBrTjGfv6e0vtjZCVsgRlsPMEAPjePmqZQf62VrnUEX9eYt4pGhcgML
	 Y4SRjaQswatvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521BBC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166876385432.5100.8095778635602684031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb28db944a5c03eb3506fc23717adb31ec382baa25bddfb01dd635a6abb2ffd
Date: Fri, 18 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668763854
