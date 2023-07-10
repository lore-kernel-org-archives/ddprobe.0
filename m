Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E53D5239
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 07:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F25FDC433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 07:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688972829;
	bh=H+B2bFCpv2HvATzkwxHjhvEpGVG8hOhjt0wSRETK3eg=;
	h=To:Subject:From:Date:From;
	b=AzmdlN7ND3ObuI6VF/xXaoDcalSO38BHYldxdRjkRazLCQddelw1aQybIfSZzsdQ2
	 PDXC6GG9sPVfa6SJoHkxGhN8nZaAiIlki/UtDO9ID6J4rMFmHm/ihJLA5VvdHEywam
	 iIm55GCZwn7XR6jCtgvFVUMsrO2Qxm98fTEcqmv/TAx7azeN4JbPnrlnBPYdA99Y9l
	 +0Cb6hawAmAIPLeHkRyTLkh1YCgqHBdLOecHOzEFEpjAXUZ8/XSrcctrJg6S1xoDfH
	 oXrRpOgKo7hr64iXmRBOjxsxCFPbOknj2ywF1vC4oyQ8ZAzvLFbO9EaHobx1Hiovxv
	 xVIuy6sRbAvkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFC8EEB64DA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 07:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168897282883.12927.17351547972100449111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36893e115bc2c9c8a7e0efb5105813b6b93a9cb8da82a15cdab786eba4f0351
Date: Mon, 10 Jul 2023 07:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688972828
