Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A5D10FA
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 08:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE8CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 08:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684054685;
	bh=ynyCtqJc3xxyuDb/H0+hMpwmNcZJUrNxT1E1xLCYytM=;
	h=To:Subject:From:Date:From;
	b=d7KD0uPoGr3OG4y9z7+Thj68qKdbvYdbnI0shAIUCabGKSPM5qUnrMY9PVxJD2Knb
	 QGo21D/dowK61VW2hKU+E0eOy8jAxBN5RAIdq3cUcou5bVkGfwjxsnB4ZYbSAgsjGv
	 5PsZuQqv9WwbfA0ASiYQM3mp3OpaCbbGLN+PSvLcjJl3BacOScUXqbKp5yCSRMRdzf
	 ivSsLWeMAOp5wSZGkDHrma+RXHdMD+CmgZbfQLAuEVsUZqc9LgNbvG+NPnr5Ydu6hl
	 sMLQCWD4nu0c6ZE2E9pPc4q0PaoM9AB3M43RxSmQ/nMl4wvwTpVLC1X2Q7jPwUfwVE
	 3BWq3cfx5C/NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE717C77B7F
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 08:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168405468575.26273.14659138753942856297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b6556ee2272369d3ff5d5a83c3e3117e1418af88f94cd905f6fd298e79be0a
Date: Sun, 14 May 2023 08:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684054685
