Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06094134DA
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSbXbALF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E237C433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700423296;
	bh=SEvU1vneqNDDEiUlF6rBHe4yqTslArw/QO8SQS6IgP4=;
	h=To:Subject:From:Date:From;
	b=RSbXbALFjCBqMi1kZ/L6DHLdA9p2VxegUr4roiJ7IkTzr0/I97pO0iCYiF6gPtRU9
	 hYuYxxS9DVvuGDO7QxQorA+ai92X4pLPvLu8WPSK9GtB+lb5bSYtDsbcVlongOL4uX
	 5K0hkQPdbFrh6u+GYBOSpjZWqZoHlVp7FmFL9nt23xNPHUf4+wFZ5yBV9lwCxtXX+s
	 G53sSggwIZuiEyEVOHFgXEs+vYyL8DQgmQON60HQ4tyGtju+r+avqJndWixaFpX3bP
	 bCs4yVeKcvMZtic53or2AA9yBIzOO8QlolMmSci1Xmbj+89Iqj/z4Cr74sB5QZWqF5
	 o/NYWDrgkMulQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620C5C5AE5B
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170042329639.25562.5917301689893660696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca19ab5c17ee611bbb618407a5e052c5017539907e161e9e8132a4be15e5bf69
Date: Sun, 19 Nov 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700423296
