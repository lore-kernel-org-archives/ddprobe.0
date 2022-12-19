Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F0C7E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94785C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671427287;
	bh=qjdACnsoE4JGLcRaf7xTVQJIl1omW2ImIgJ2l4fO88M=;
	h=To:Subject:From:Date:From;
	b=ucg/OOqHrD/YFCatcC+6K8ZYZi4Qpyk8+1eIe/GHwd/Q49kIQclV/I97avp5VSh6R
	 xO4c5YGuaGggEHimo2odx2B7+PHyLmHQuhJo1tEVTPhYj46a8EtUif7SvA+VhnWXZ5
	 e7fJnwtCMDVsp6UA0S8cCM/1qlShpD6n+HOgg6kTxBKRD6NhSCTw1yjHYHRxUXLivd
	 yb/CflLIFf9r56eVtcUO4Jr7o9JoxZXkUHffskpcEY45zDMoLMescstI8SBUTGl/4P
	 4BUol3Cx9Thxf9cZvJI2oaUVIEltwXjrqXDJjBZi+X/i7OitMcD4GZMMzEPGe87kTb
	 kFHpZpr/HwJ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73E0AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167142728741.27237.1597273146562877746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a44f1fd536bb0102af14a8d6183b8ca1591866a980e4dc0dd368aac24716c7b
Date: Mon, 19 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671427287
