Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67658490
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D3AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671219687;
	bh=ICF3vBARV7oa34/3RWHjvY2jm1CHFm19inFBgPjIU6k=;
	h=To:Subject:From:Date:From;
	b=nn/lFiRwCrrDaXNNTMmd9cSgLZGK/Spod6eSIKtKtyB/r4JRJ5ivVP5TE57QWpe6V
	 BupfmQrRBu/UAwJn3CgeOhAppb7tU+NGiDkLWFeY42tnVS1tJBlhukYwblEKW28OuF
	 C8qXpv9w1LPGCvT3Nxc70zIy5nrTXdgx1Btl55tuJ09WuFNBG5GsGU/yk1Ubq4zit4
	 7nhJFzmdnqCjXBvT6URQeFrZKM/IDKFqlOy0UU6fzDFAITWYdPMFB9pJvncOcym3U1
	 UQIi0IocF46TMvI8Ru5Cme8NRCSCf/ROM5qhR5Z8D6y19qbUHVT5DecEGfJ2P7s89Y
	 Gtkl6UhRnrOtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E03AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167121968737.18408.3787209457751905919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aec57846312d4a4955ce4a09ff4665f7c815e44f5e5459c10e434ef762f9465
Date: Fri, 16 Dec 2022 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671219687
