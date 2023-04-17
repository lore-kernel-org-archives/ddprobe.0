Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD951847
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 03:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB69C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 03:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681703885;
	bh=m33XXaSMp5LgeUqLfWZghOsBLEGyuCCbRnadGbRSLsY=;
	h=To:Subject:From:Date:From;
	b=NO3Ny/AvDN8UQ5vzkRIaRtTWsm9biZDEfveExyl6IeQTtDZBTmAdI/ivXjkFCHnLw
	 Cjdz2M+qSAlZ6Y186QZQcu0k707RwvarfpRpqn4ZAVIOMbBQs5c1OtAOgbwaZvIYQu
	 QUrhHxMKrrH1+YVVZwZpXRaXT7fVud5YoBzMj0U1p60HqI4YKbjJ6ItbbmyhauYalr
	 E1ZcRdHzle99v1L8dZCdCjIYvovoarviGjdymnz0n/yJSx3B1Vyvpp+ZOZzSeoMjSC
	 9jc36PEmvSNXAelu+wqkQxfRW8FgXUkB62+oSz0Grc/ENvBvDBWnUHCCC9i8nxMtiQ
	 0qs1541GqJ/nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8B2C77B61
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 03:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168170388576.18578.4240587533477042056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f99541dff612f2c8265f5645054f2860662c2e785700bf9913bc4da615cd8eb
Date: Mon, 17 Apr 2023 03:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681703885
