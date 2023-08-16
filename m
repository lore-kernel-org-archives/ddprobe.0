Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61232D521
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 09:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE89C433C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 09:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692177188;
	bh=ZcKNvS/8TVZzziGRfrUoNH4qtIf1OfaXBL60nB5oxVw=;
	h=To:Subject:From:Date:From;
	b=eX7YVbqCbnXB+zChp4V5fsDKnBCqsWbpfc/ChbXO1YNFMRL4h5WcKP4XofeC7Agm0
	 9HuzbsI/zf/EzC5ao7hTO48wen3qRVLpXN4lPfDXTrNzLEmtc8gEIxELMd4XcMfNed
	 JaZrLQcgptLGoPnzbXVb/h/unfCJaL2RErYE48Yx4dDBMnw04IDvb8SPm+gXXmblcc
	 dPQu0dpjFVrWIZMcpbEwe8NaEXMQjvf7DvUuod68inS7zYRg3s2wnJo6NMkCSfYxW7
	 7hV6rWrAbanZJAfMkYkDQgM0zo7buZ+neX+qjg3Q2OoiXKy1/8WEkm5ziiKaiv664n
	 W1t20v+OVjzWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE678C001E0
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 09:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169217718870.29102.4710017881025746095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd9151ed446d392bd5d11c31782b84bcea5f51c38a6329f0a419f6f98fec3497
Date: Wed, 16 Aug 2023 09:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692177188
