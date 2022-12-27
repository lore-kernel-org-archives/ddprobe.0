Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D732B6ADB
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B6C6C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672179087;
	bh=EbdWwvyKGaI5C+rwebVQ0Kk5N02ZJVCMQz0XsBHghQg=;
	h=To:Subject:From:Date:From;
	b=m09497p7c4Qii35p68D/UfueQqXF69wgNXVgu9aGwEoV3+64/+ovxYd62g8Y6gLeh
	 WEvc0qtJ4QdUNjZMfZq0ID4NpD3g6Lkq3DxRsoKCHxujH/KHFWHXWI3ce0fRvFfTJy
	 fuVkQKyro46fkXRqLUAAPaKuLmNXt2HThgZCDk1Q1vZ0LIhJLx/k7PuANs/clidly0
	 2DnZdj++RVU1fYi/07jR7y9Icq87kvq/dFK/LW/7SmZ58W7xDftCdJZyW7hPYLMDxn
	 UWaunmumcbypCURCATkc7EEUNujRIl4O8GNdQs5vCO41RcI2dEUmuCXmkYTRxhAIPM
	 TKbbRNkQT4KaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D484C4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167217908741.19250.9067973585701988969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898a31b348c01e6d9b06d4368f710fdcceb8b228d082b21f165d8df3a157b815
Date: Tue, 27 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672179087
