Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F360257D
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 17:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48BBC433C8
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 17:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691946788;
	bh=VNe2ReTAizM0qdVzCzYlVyWwRDfoJdUFyo5LQOhB1n0=;
	h=To:Subject:From:Date:From;
	b=U25KOUTIJg+iZYZuWmcqKeobcYnT3mOkQTrqjnC3t+2MRGlCHz09kIqpFG4u6HIH2
	 3EwrYGN9rYD+7+NaqMrka0mDxxL3/iR7eKPX/upvyS59wpXxAnIT77aoJL8zjmb1jp
	 a6+KC487vX2M+D7sZBNGFGKHgRWFpLjDXBNdjuJ2IF7wGIiHPUHkulEBgkephOC/fS
	 ZHhM7kdPhQAsbfl8+o7sQZCsSwfPXdQTt5ELnejB191kYzWGR2qPZSPyULiJ8AcGJC
	 +0KNhqEXxQPvttEPX5s9Zi8xw+52cdh1RGY+JdCDYp0lt/Hp+YKlkYpakLBzpvATD5
	 L4Gkab6kCrySQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B9CC001DB
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 17:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169194678867.5808.4548403424153725886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 976bcb50b4f8477c753f28e118fe01e52de260e153510a1defba39646e9fc718
Date: Sun, 13 Aug 2023 17:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691946788
