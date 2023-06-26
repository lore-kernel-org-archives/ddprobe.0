Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4538B8C04
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 12:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD180C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 12:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687782188;
	bh=5M22Gnce4gGvqtW4tp0pR2Xt/joOFIWukinY3720t4Q=;
	h=To:Subject:From:Date:From;
	b=dRw+ZsKsxKo42MNf7OQyd4g2KNMls8p8wWRvkgxS6tunLMCsZYgbKoPV7XtQf4/9Z
	 Pa6lgE6Vy3Uncrh7TZYU44dXqyVEknqQPOsceS7ijq4cp6S9HU0hazxeGsVzFZzlzJ
	 E6RtM/BOoYnFpwe5p9Hzuv+tYzAmiBZSMAsYz52ZBNrVtIpYeZ9c2mNTqQFHbGnsIY
	 Us9+XUK6H0KVwu/6HDDNhaKGK9v7mxjTFO7O/hm2LLTfMliBBLXc1rjxA3IZhWzreO
	 PE1VRCtMv6/QukEycvMAKLfzgcdNPSpPwTxAaamyQJJnyXmfO0JkIJp7BqED6doaR0
	 h4X5T8v7/snpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3280EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 12:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168778218866.20116.2058235915550556492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348529a43ce001b9a1b65c199e6fbb72f3c5eda2b326d04dff70091286f260ba
Date: Mon, 26 Jun 2023 12:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687782188
