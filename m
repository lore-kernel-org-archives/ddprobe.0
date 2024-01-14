Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11EFE7E
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8oIF3VY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85643C433F1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705208296;
	bh=AkB7tZfAek+CZA2BPnTMKOWnrw2wcAqgJNOJy1jtDLc=;
	h=To:Subject:From:Date:From;
	b=n8oIF3VYZtD8mRsTLlpl4THK6HAlPYzUGx+uiPrhhdiBN0VrW4QL+OP9iJET3mOsr
	 DnG1SnCpnBqNKuW47eN1Tfi0OE8oc3kLajT7piZQ3DMXh4qLdgfPIXuzh45t6bB6Bc
	 kjmSDgE+eENrwZAGV3g5IuZscqgagP6+JQ/vSabGcMUYZZH7c0houMWteuyYwYO5XR
	 rUfoQPal6CQR8TeuCvdgJgUjmzTcYGA4/m0KU1cjoB0dHgu10AyPMdYPL8hi/fOGJw
	 9CrMEgv1zZtCNqpWkyMSl5B1LuuSb4lQ1NhiLi8qthIRvRKq29LvazFAZXg3NHzfzY
	 QruBGDfbanBlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68395C47077
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170520829637.22456.16531930840965116434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a887c5e5e2b6002b145335d5966d745cd6b35a4b60132873289054773d99761e
Date: Sun, 14 Jan 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705208296
