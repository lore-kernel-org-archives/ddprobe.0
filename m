Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F101848
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 06:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4A38C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 06:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678601765;
	bh=d0ybs2uf1hKD/xkM1cUl5zbOdNiW7wxboGB+G0sd7kA=;
	h=To:Subject:From:Date:From;
	b=OcpMuEDJVTLXSgTm4+hU3PWFwADSM2DDUIj14JmXO1GgwSbkdo7fmvpWgA1GziN6w
	 hyoyFFy2W01f+jinMDhqJBbN5r2WfGbk9l4JkLKQL1Jo4UdH0F2hWdKovYagPY88E1
	 ho0yirTYwsjGIwHzyvrwbEfIzUP1pYnigrrLed6LgKY1ddCWTzC85l+n2mGQ0zyTDl
	 /5UUDQNb1F/x/qYliRgoFytFiIfTEN8HgkMaNNpQYTBtadvspjTpM0NKh3FlPe/sUz
	 ZO1T+fNxXYcKJBaZj0mPP09y7253JTCxuP/b5lzjYxR9h5nGaVUU9a78JVsfP1cXhs
	 UajhHSdNWrgVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25EEC6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 06:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167860176576.31968.3216795149484484709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0b5eeab0bfb3d2df14e0e78ec3055f53ef8b1f8ed19b54c3fba7bb9efeffef
Date: Sun, 12 Mar 2023 06:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678601765
