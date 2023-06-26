Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779631C2E
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 07:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07470C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 07:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687764189;
	bh=1oOh/5cuZ6ldxzHccre/P8xii/sjrLwTzW/aVgFgJHc=;
	h=To:Subject:From:Date:From;
	b=KU4A1G1tPpIjXjkuBC7ZZerhLxkmJXWLPMcH0NO0ZRdmF0TDZ/2/SdgZyNGOUnOIu
	 fIL6tTxLctLFzqEb77j2rurrV7gxXMntucP91/Gw+vkKmCD4TDiPz2WzMELBBKf5wP
	 ClNCaIe7MpncHwEq4u2PwZN3PbWqBR9LQGhsHRcyE+vVzJvKS0te9hoMJv6rMacx/w
	 8GnQXNYxGwCXaFekFLpluBUdAzsQHIGth+SdcdNb0LhbkPQZpwsKbEaKHItXRr6bEP
	 kj6qP9woU2UxQoKzSbSHrID+PEmfGKKCNWqPiW3iwLTCODvTDy9YoIpXO3WQFPGc4l
	 qjR2dcAKFcd5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8B0AEB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 07:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168776418884.30877.8131971737716631657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c3eeeb8d835719f09edb3b968c344c2fcd9dfc30daeadb3a4069ba1905e625f
Date: Mon, 26 Jun 2023 07:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687764188
