Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD65386
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 04:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73BEC433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 04:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674274325;
	bh=MN14JoYFgN7GOvdS9AwgN3OCIsULEki35eEMdym18j8=;
	h=To:Subject:From:Date:From;
	b=fvE55DHtJn2ZD6QYEEBOMS8+rwsGb1pFG9qpcFYuSHnB/ltO6yaOGAciPcscesL7J
	 6JMKWbqDPxXyldVJnn24h69si1R5UF8dqrbKBWwXJsKYQAD3SnC5MiQDDhCCWS5U3O
	 4vyRqNrsjpV07ihQbcY/N98e73maT2/4iYCkDQfqkD7Git5CXveBLqIMU95kMBWcn7
	 LiHc3yWyAu49wojas+DvxNPW4KSS4wKaxc+ZTGrpUMzwHZHTpjzUf+KzPYq7j0ITTK
	 dkgIX7I2l+7U16lvrBXaPuTxig1VXAp/Lu8/Pv3NxQD8liuzuk+KGkFG/fl9LMkseb
	 t7CrMpW6oiJzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48A2C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 04:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167427432573.21241.726395466500217286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876b2d1131d9892b8492c8ff74af75808dff098650a153b2ae2898e04034a6dc
Date: Sat, 21 Jan 2023 04:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674274325
