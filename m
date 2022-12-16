Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DE38818
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FFE0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671192687;
	bh=PevOZu8iw61qMyZUIuQwn3mJE2YxF5h2hpA7MBnPlH8=;
	h=To:Subject:From:Date:From;
	b=bC7/r2Cuz02ngLN4/cpFfCeNrvc2a3gDqI99n9MgP29BL45O6TaFM3nYxtcB3g9BZ
	 ezbF8Vd9L3KVMcqefdEXS+MTFGDEc5IcddJyBlOQBV/hrSstbsEjCB5ajf8MJvEoCy
	 3SrrAaYIAlQr0Y/lUkqD32pTbKIhC5pLRv+kSRJf5ADZ+A5D1HUtE0pW0ymNDPoG8J
	 nVFwUMY/yGIb8pgfUXXv+SJgZ5sAmutM6nd2/HkuRydaWAYulDVbKfHZQ4albwFbwm
	 WumRsm8/+PtP/Ez09ofn8u69dNMBVL35FYoe5r2NBsl+qQtVQyI1BSjtFuLyblFtek
	 yd+ZTSTfhn4/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62EE9C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167119268739.25865.13498760020317565828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7e8ffdf678909e877e1d0c48ae9cd6cf55c1b74dbc8fec5ec320edb202b96d
Date: Fri, 16 Dec 2022 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671192687
