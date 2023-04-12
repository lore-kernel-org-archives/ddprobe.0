Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F743C00
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 11:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6CEC433EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 11:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681297325;
	bh=gu+/vxGSgSPBk6BYfmZI1IfPIaVT9zzmk/zGFB+6wPs=;
	h=To:Subject:From:Date:From;
	b=aGnpUBQUXYIphgHJw8AAB/pesbxquqFgP4tLRgFywp5OgO/xyGJHL+pvMnftZ23wB
	 Tp9KLG5wf+tcYmts4lKUAbRoIFhIFiGcxszTzUf7xhHvQBSUezkxpCncrzdGQcZMZl
	 wIhs0+7ocl8voINtPeUiqpnBsI5D+eAdAfK5Wn5TZ6B56YfXQRo7o9y0kZ71HphNtE
	 xAFCwCHJ4uTf2xXhyUxjN029DfJ5nTop4Ikz8/FqP/2fz8uhgRvKvrOEeIU7N/UncG
	 u9F7eJVR4fcErmGvGeO8zDdOQQ6rQCZevB6SJW8mwJJ4qqAfbAd3TIJucsk1Loullx
	 CdluVcVuPdkBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D1AC7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 11:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168129732578.10131.14329522799462708817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59700ee616b6dda1c197756f897e09369231440ee27689d5291049b2700ff0e7
Date: Wed, 12 Apr 2023 11:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681297325
