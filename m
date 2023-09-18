Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671861D6B0
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 17:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6413C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 17:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695059108;
	bh=aJkTVYzT3ajRS5Q0ynZHi7vUdayDXMpW4SxiO0HjJAA=;
	h=To:Subject:From:Date:From;
	b=gqXc0OlhF1Oxl5lOD6720nJYy+9n2Beyizugq4LTBW3CEDlPsVpMxAttn6n886P++
	 SHJ0GDq4uMqjZLQuf1SRvuug16w4m9RR6B6Lqn5mQgc3IjdY6QicUPlWsgHM+aEMQH
	 fOWx2HE8AWYi1LZUs3EZ5iIgMbf+pxsy5yp36AGGW84/645W32sy/f+7NmtKaHw3Pq
	 geY7XDr/SOfMuGSVZxBCm5DNKuMNBnFLFOTIOiUDwzZIJrqZXwYBfQtdDOtEMtRV45
	 8yo2J/f3tU3CTPLRnl3Mb+I6VfnVRtVAD4R/mJ2pfLSF3fDIw9TvsC6uvPCpNV5S96
	 gGMgsfTpJ5t7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FC3CD37B0
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 17:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169505910866.24119.6865903228845012631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1203a10671a5f3064e6c9271b73987bd462254cfb3b1c294ac905d8cead7f186
Date: Mon, 18 Sep 2023 17:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695059108
