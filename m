Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3134645
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 717E5C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663511453;
	bh=h2iMwNGbqoy0ejnXMRpZw7wN9l0ueKWPGZMrqEx6iF4=;
	h=To:Subject:From:Date:From;
	b=FCcT5prblZSyfrjuoYjCnZwz1+DaP3SUdilpDN5hcA7gDKW1fkp9km6UH14U6VEWs
	 2PVE+IyHNKzgJgATU45L8HCCd4dvKinWaeN15YBepWBQJE7Wx+GodERWhzdId0aX26
	 ZbzQTT2W9tFg/SEpT2TASY1YR4CNOwGQtXNQuOf4V7qSW2SWYLd/4rrnzS6lGfcwMd
	 gT7G/4dm2GIdqLZ1A2ViIZtniKXOf4cYstYXyx3bJBRilpuDoh/bxc8d1lPWzr2xYr
	 pGeCcbQteCo0+iOA6hGTVpfoPdbd3wV03SzNlDUezqUcUUTuMBH0pokOP4hjQDOLKA
	 HOtEEigjab1qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A648C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166351145332.6765.812774049593673247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9a195fe3ed77a54c5d5bb9195a89087bd6c1754054d6e6dab70fb8b99fba058
Date: Sun, 18 Sep 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663511453
