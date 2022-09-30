Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC701C05
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3C4C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664517653;
	bh=csWxD+gVdRcc6h2qgnX136t6RaS3HG98jGpXHmccNX8=;
	h=To:Subject:From:Date:From;
	b=uvvRnLjcHlHD64z8xC1S/g4B8oRZy2Y/qh+CGticHuo+eOcAz5q0xhQtt2xjrrMGr
	 P/T4uUOWsZ1gawJXfBAdomxT6BrLctc9Uej98chel+rLAtnyKfGbERwXQ1y0D+V70+
	 CZ97C9BUp9Fv/KLzETQOIgd9KxoI7nZrpuVARLJldkqv9KxAEpYa39kmdASqFLVPtT
	 8OUrjm5XyENkxESR++IAFM2Lq6IGg14bjwv4gOCCCVzWB6GbqXZzdxRL+b2ukOoF+l
	 MmaGKOlYpLT3t40uhorg5W5I/ua7B7K9t/u0NATcdmJkEKmz/wTnTE16PY5JeyiElO
	 VzOvsUMd/6Hcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53ADBC433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166451765333.12297.2605277440628992543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e740c52458b2acb6b160726feea2741d138cdc4fb0a8b03725e792902b7423
Date: Fri, 30 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664517653
