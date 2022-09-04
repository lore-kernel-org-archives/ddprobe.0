Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5067E
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73FFBC433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662284453;
	bh=DVumRdOK/6iSH3mCzAQ+QuZKcP5HHzgubH7rtIfYCNo=;
	h=To:Subject:From:Date:From;
	b=h/hAeyhoF5sMLTrpSpTbn4nbD3R4pE4Opkeut0WJcQJ2UB16hTRupfNdmApqmQPi6
	 DtFfnTKEzZe5P3q/zsunxbofz8JSZE1yCQQAT2nV8gYSTNO1vQZluWF9vJkJuLWtCk
	 gfJWn84ZTvtP2/lqXCRROk5V4Pa4JGHgaOEpuhlbzZq5K1E2FJqEjsDHhgtgel33Kd
	 2xfgv5XHVAkJ9NBBXCSrTYAYtW0E3sMeOTtGdebX2LDkDxJlN2Pg4ihdElPLDepfiO
	 sxSMA9L4iBiYwuBvRd3ZtPWpWAcWHnPS1p2vJmnbaF9ifLt+gO6R6cxFL8v4iHM3wE
	 wlttQBowz0RAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5658AECAAD4
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166228445332.3253.6975666442248709859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b1601078e3bc1ef7a2ac49e3ceccf5c1793b77289d8646d6aa7f479df0e926
Date: Sun, 04 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662284453
