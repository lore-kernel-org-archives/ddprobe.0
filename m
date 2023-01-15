Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24E6EC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DC8EC433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673768487;
	bh=zXeTyqbmj899/iTnsZI1q6waDjttN3DzMWMk+A9wKm0=;
	h=To:Subject:From:Date:From;
	b=jt73KlJYHpJyPrQratPfoY+ouYHSHWajGvrVfVUHoF2LqkhE6uYUOAHC4TkNWMOpR
	 +sbXoSa0Z/O+en1P8uOkGDYAdyakTYmrMrnUWNq5iY6Zvpuv+r87uvL9KZTHfrwoGW
	 oKO+LZpda4ue8U67AlwfpCBgKt2mIqggQSFJYTSOTTunwnFrzRKphovUy1q0qHhclC
	 lh5va7ZMVeXlVpxTX1lhM/YJ1t+LW562sz7qPZBPcjVNBvhky/riGpAUTdu741gJw7
	 6L5AC745bFiPFE4k2j5uFVQidcfo3vFwDs6Yo45Opzxq9cBmlwyZzciA/Cjg8d3rmf
	 rcyjzk9I2qxsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 724C9C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167376848743.16766.9819637850409039892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b59f1fde44d89d6fa415d624c2534008e4bf021e72668f06e1a5c7e96d9ed6
Date: Sun, 15 Jan 2023 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673768487
