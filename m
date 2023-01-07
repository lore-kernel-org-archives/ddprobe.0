Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9949A47
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B78BC433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673120487;
	bh=BDTOxvt/qpNOXB5zj2JnasPTevEkT/RgKr10c3dsjEU=;
	h=To:Subject:From:Date:From;
	b=OX0B3DKn5laQTr+hXFjxAqUkYR9u47DITRQTzEE0M7NwjAyTiR5dtvYZ4eoPfseDH
	 V/vkbH3L3jPThSAuhZ+pLr1ijYUGKgDkzCJOStc8fUhvx0F7pguTNTFYSVpip6vgmR
	 xlRmPNzFLCu1T74R2Iw8N3t4YBH4B7YUHTM0BXdyAVS2vavDHiZvvaaiAVjz4It45y
	 EiOmWbbgk2i1+ZQRUTAW4eoFtxr+TegViaDDvQtA3dEw2zjcZ3zZ9D32a+NQo+HIpl
	 EbDEm23nOOcN7kwHQj+BtL7hPMoAaYWasIkShqPaBYoJZcndtFDjaP2gRp/y5yZ3yA
	 g2UsgMImPaUuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FD6EC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167312048743.21923.9526288799448402728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687d12b0a5f0898ae17d3aa01f7e8bb01ff0eec52079d602497271798afbe1a1
Date: Sat, 07 Jan 2023 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673120487
