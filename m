Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC457E2
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D578C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665901853;
	bh=NOGMqYlXDPY1f4omvY+m8qkERmcvVroFxuFMpr9Rwmk=;
	h=To:Subject:From:Date:From;
	b=Fw46Oy0zwxVgfCsih2Cl7ovJePNyZ2IdKVyj0KO3WpRCEHxm9x9UhqmjulMztloYS
	 vFwXk+vv85AjHAhjsxj2zn2tU1aFxMEClaqjCLtcePHfd6+ulsXl9+kaC8EgD2uAq9
	 LUmdBMuteGm2rGdoJHod5imfZXKucWyOHsF3Pz7J9qbByICFmJieZ5kMpPeDy7W8n+
	 XpylX1Fm1AVgHDZoVzb5dZ+AUoQwVh+ih+NM5J6HyW/lk8+Nq4xboAWPRSWFeWQ0Cj
	 j0HLMLouL8AGo6Ks5Tb81nQhERxmhoUa2aOfZHSKBkOazRKTF52zdstUTVZFoXvUEa
	 EzxffQKLosf0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50DA5C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166590185332.5668.9958515061473002538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86863bcb2e553896e32458791ecbf32c99321a6730e4828f1c0019c840458f00
Date: Sun, 16 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665901853
