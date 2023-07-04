Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6660717E6
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 07:16:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8CDC433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 07:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688454968;
	bh=ItJYW/G3PaJ05v6No2fCqqpqM7B0w+JMsxcy/gd22RY=;
	h=To:Subject:From:Date:From;
	b=o89Gx+J2kN0AEPW26+QQvdfIU3olgxqKNjpPJPPR2i/FDRRAwGL8EoVHVNBSwLH+f
	 NPOmgbAuLPMcJcNdcCHDymUNwzWKIOV+9JCzprusE68W6Ap24BSEM5W/dNHl7tgjz1
	 RtTlxFufN9vfAr93cPY5yHgRmSdt0JVIGeK+afM7quksbGByYenRlaT/SSj/THSgLm
	 Dyx1SqQveNIIGntpf0WOogPswuIKQebyKVT2lXqlShuqyEyUXAEnnGfrhRtTRpfZ7s
	 9gVKv0cZmf+it0DCMGhMRgqrwYCQT8HpTasVJE9rTJ5GWoqtWE0CAtWKy0Fjq6dtM6
	 90+vMjvvrnSBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1808EB64DA
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 07:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168845496870.3863.12698152364732851161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383a28275cd1f81b6fb4380864bdc20e9a042a9908fd6ad981461f4e130c607e
Date: Tue, 04 Jul 2023 07:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688454968
