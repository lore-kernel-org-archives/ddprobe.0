Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D17376
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 03:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA9CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 03:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675048985;
	bh=xMDYvDEwZXobql9qEZQTsDQtCDsEK5mf0OvXoJ00s18=;
	h=To:Subject:From:Date:From;
	b=LXt98dHl2PxwilBeYqUu0cnzuBXCrDhfdecno2yB2eug+pUSK9DP7eSp/5M0j6zpg
	 k+R6y9+I5z3h8FkOI4EpKTl+CKR38q6aRcxHHOv/uaxiWvqhyiAOrRctcieDqeq57j
	 Ud4bi7q5h2hNliZLVbwSHhbw/evjgNqKclYepz3Y5dKzq9dZKK+A+R6xDU+xR8Yd9L
	 3WgdWbX9SSsse8YX0K2lWsppxM0QcEgq7Gf+oKW7yap99boHuqma9ebTwQhwLsyPeJ
	 PfhBcM11q2IIukMbnMIOxGGg+BCJs/Dy88jDjFkGb6rSsuTxFBkktMQWSnVBpix10U
	 WcyAUDWCID7og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC360C54EED
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 03:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167504898576.4864.5821822696796398919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90576cdee1673a8811ff9e2fae730dd497624bfe5557e8c74edaa0a2b203780b
Date: Mon, 30 Jan 2023 03:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675048985
