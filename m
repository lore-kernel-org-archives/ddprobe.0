Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039BBC2E3
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 08:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6779C433CB
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 08:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691395388;
	bh=cOMuOQBtaf8rjtPs7ZANusJ8I0RU940OU8XXho9G0xM=;
	h=To:Subject:From:Date:From;
	b=I2PW4xQzoL2k/JAqMKApivCSjXFtG0yD7WMuYjQKw7eFf9TKJnTT2UGlFth459qAK
	 on30SMPfkQdRuGlJtwm38km9n4L5h8k/nQOC7bZ8sIVDIChIfc8OEgpxs/804sxDJl
	 RZdo50yw/NutoeSVcj2Hk2zcY2ZQkbgWwfXvQtGTtnDLGdcN82YJwvUZXBT3PhIHYq
	 81OrrxTnCuNPWUyH/AGvrrBF501kaTtqCdeC9YdsByIxqRSjEzAwbdX3DDxpxpnmI6
	 XKaBkl8bB3ID5AJg5fcvKdMhjf8sJuyjzaHAY8any2z1Y4r0NlvsH/TxLd0U2n9Z/W
	 L8kB+Hs/K6Rug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADD8EB64DD
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 08:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169139538869.5056.2506067049629390045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0bf790593d50a58b45b6445633c4b8e242bf5883e0c1483a02d983f80d0beee
Date: Mon, 07 Aug 2023 08:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691395388
