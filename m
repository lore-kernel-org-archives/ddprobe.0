Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F9933D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8482CC433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673459487;
	bh=EEwqP8hFje045eDkyCsNlzM8o7/pSgiANeIo9bX1f74=;
	h=To:Subject:From:Date:From;
	b=TPntDrVDlsqI2hYTp9pMlNqOuHuvwqYoF96ybxNVey3w6g0X5TT3633CtTYt81woB
	 EG18vDTtx5vihYl6jd+LGm7JFaPxcnxohTbwq/lNzfgqrTNXP0DVddeDz3CZezzX9c
	 A8g9gvov+bD2wWih3+Dqo+uB9AtmeEr06zQsWMp8EOzqn9VjCuO1HBpWr1oLseHLOc
	 FejadUeYcv1Y+SoOWTWUgR3kMOMeytUzuFE47M51Yv2U/RfwSGWxS8+P9oCbrDPry9
	 txTVQ7ufIUMnJlkTC0r/xuwTEEi0Mi2e6k+dYMRo0Syc94haJujhGlHIQTKyyvoEt9
	 1iHQkfDlesEwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 675F7C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167345948741.24907.3505614625930815061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e237a71e2fbcc88631eba717583e98c614cab537423a329760929660e40c0a52
Date: Wed, 11 Jan 2023 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673459487
