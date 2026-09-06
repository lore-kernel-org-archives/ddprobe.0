Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49434378833
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788733834; cv=none; b=HlS1fpzOD5Ibz8574bjftvx/Ab4fPcxQY1oCWx0IdyTEz6rUYaPfrjh/nOtT5T9NLut6+7aOcOKZmhX2MHIW9coGKKKUPcyy6WdVADON6Kkua/IWwiBtgRrw5cWQinCyr303iWv8oro2ZZZj9Yko5cAUMe41bnL9UhrrJeD+Gek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788733834; c=relaxed/simple;
	bh=BIM7d8tUcl655/KxZiBlLMEu7/YvLNZN2soT5eTrAd4=;
	h=To:Subject:From:Message-Id:Date; b=AIKt087D299OrkPPujs0RGZA3S4DfN/ZRM07CRjDxUu1sS/ifnNCRUgGzf0p4S6zEPSsyD1PhCxZncFmLUUobwdwkJk70sEmsX6RztWK5Fb3HH3o5h9c+qVmj54hm2V+rSvHgUCdptBuVL3uxvpqriI1VdFKde0nAi/9WogYxH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8C6v+Wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8C6v+Wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C26C2BCFA
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788733833;
	bh=BIM7d8tUcl655/KxZiBlLMEu7/YvLNZN2soT5eTrAd4=;
	h=To:Subject:From:Date:From;
	b=l8C6v+WmYUC/cekFffkJUA9grwMqzVm+w5922mudFOvYCJCqvSAONDNgTHphTWWRX
	 PpJeJuOCx6utsPgCD1Pz6LWnOt/AFFWzSE1q0vvbGR8JdXJkFHY5jb5txIDQcEDYcz
	 je7a63z3PSK1ttW5eRDEm8D6xFaOvFT4HHceGjFdPu0YVvw0aNBgkW380LshlqNEas
	 aFcHQ2D+ekopA7GB5/N/wtgmT0cGs9J7MvgbiDhXx3fpfLJpPnBwXgbI5wTfGisYgt
	 8+3PTNEKO6sEVmdHK4A2d4jiJJkqp67Hee1H86Yj9VasD9MRhtI1sGFix1SmxRqDiE
	 JhQdHBBAcLEHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65C8C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873383373.12812.6295741046140051936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce938feaa41470257aac6dd873bd6b5659d88d3a905737b3f5cb36258be27bc1
Date: Sun, 06 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788733833
