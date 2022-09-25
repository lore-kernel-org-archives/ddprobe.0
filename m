Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC0DC4422
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BBFEC433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664142653;
	bh=dDjAT6rGp72kLaw2h3Ac3IMOdXDn128IXWzNQdtfAvA=;
	h=To:Subject:From:Date:From;
	b=KjsjSzff1a1zH5pR0Fyl6vTplLyvJobp7ZYK8dQbsIYLt3H1mzmOWfycbYrTwcHoF
	 5mE7XkbI/73ipJ0slyWsV2NjYs9KauZl8FBIB0h8R50U1Orh1A2FDR9NLO7S+bpuHd
	 JSTfZRz2hMeqYJDEKeqmNOVj30pRBngJKhFmaePSkYWp4bbT9nqSFg+KlpgTBRhwMV
	 Yl+sPRcQpV5OxHzxdJQOuzJxcn/F1RTDD3svxHoSx1UaLL5cuzBAgyBP/LLlOSaUyk
	 SrimJuzHVQnTVcTV0y9teO8v8YP8GJR9qxmGi4eQxwmWoPCnK0QroarlkcARwraJ8k
	 MKFmNoz2518Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AC6C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166414265333.22830.2389231209154212172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50cc2bc3dcd39371ede8653ca6aa35b9612d0bd9c2779ac7914b25cad2f468ee
Date: Sun, 25 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664142653
