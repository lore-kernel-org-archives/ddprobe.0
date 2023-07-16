Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3A58F75
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 20:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4E0C433C7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 20:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689538268;
	bh=wsgq2wajaD/dCzPZp44UR/RlqPpiuMcDPrH6oszJmDQ=;
	h=To:Subject:From:Date:From;
	b=QrtP7ufHBusdbUEdrT5J9fZbQjSCSGN6dCFdX7M5OGre6IQbidZWC5+w+DJ0dZO0U
	 1vO3B00pldX+zQeS5NzzVQ/9gUPCsEG21dRcmfYUbOFOeK2IWZCjRvwGCwk0qIuXrv
	 Jx0xbwpKCHIkiPWEmZUuJoe8MXJ2MXRd7MLUigiDsBzc254GYY3SyetltfEH9OoTle
	 NwnnVW69s88aJNGOBoLsCVQ89sqRX30peXrRwQrUbZBD0KaX28NEz7jSMtM9c0phIU
	 3sbEUN2bYEAgMu8Sih+hB0XJtHR07RV1Ox/LZ62ient5BwuxHGTikDFlWBTgEQkxEs
	 zV0yTc9skFejg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE88DC001B0
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 20:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168953826870.5550.14468010199591610607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57d9a743e77233416a4c0eae5eb0dcc587213ee7fff97221cda9b14a3cd7f1e
Date: Sun, 16 Jul 2023 20:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689538268
