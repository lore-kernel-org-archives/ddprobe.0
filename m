Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4DC679DB
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 787C3C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671487887;
	bh=b9kP9runIKnKFIU3XN+wSJljj6pKTFepB8Ft8st4GOE=;
	h=To:Subject:From:Date:From;
	b=r/nI/xqdDQo74yWgMpxwPzrcxQ6wNi0MiHqaHZ3TRROtHfO59onyt2CYjinJiQ2PK
	 pBl6Hfe1h2oZtB5XY3A0vn/6i4iKX9pdcoxmaGl87/7wPP3+vZb1DEf6PkCNr71UFm
	 ZJmGxEth7ZTC7kBv2UGCP4O7ZtFSO2crgL5JEGx5YaRQNKkK2SsNJWGW4pnJhcLrYx
	 RSpbjrHBE9SQWOTsUyjo+HKdtn3ELyo/44Frlsjs0gS9eX0k+9XicMYYeNZHSx9fYu
	 1YmERNnl1iPl4Pe7TYPAVCfpYCZ/ZGehCpLrdUT5gCpn++53N6qSor/IQCQVnQbGSw
	 oz2AyqccIb3EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61369C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167148788739.7699.523756928646005483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba20d456ac689eac853563521a66d2611923671a0d75a460a1e1c9f6d1e07031
Date: Mon, 19 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671487887
