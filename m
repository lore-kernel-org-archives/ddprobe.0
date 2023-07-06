Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AA47F
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 00:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC4BC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 00:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688605028;
	bh=0Cs1pcWKLtPMJQZE0GWx3FOoBlRqnHRCEXGbwznKxrQ=;
	h=To:Subject:From:Date:From;
	b=QwREsvEn5wSSzc73k4Rvgr3nhGhfLKd0Tw+6kyp6JoqHWNHH8I5Tny6IfeutHYKH7
	 i8oAuCwI8rHwlwcUYd1jqol/XCfs/Q+sUvBY7ZvTMACREpADTZ2DGmGFH22K5IFRCZ
	 KYPnXA9z4ZsRZQEZaO0eyvB+vGjqPRvGSFyiJ7vupT+LUZ7OhDfehsMBaEbaiiQv0/
	 tJPsXwpGMu+QhYmB8D3Al9VvFuEpNld+OUhwspGXhjmdK8YkhAuCOPwtK+MGcr2KFn
	 9/voVJa+N4APZYBLVF5cBddTRqV2FeZFPgQOeGIYsea3K/h/qmwr40P4m8Hgc4oKPv
	 SnWezFN1Th16g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C37EB64DA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 00:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168860502866.29367.10825776368108029229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f738968bcdc71c3002298d05103697a0935b929f614506b240f8629139124376
Date: Thu, 06 Jul 2023 00:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688605028
