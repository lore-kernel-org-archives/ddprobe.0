Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB69B23C3
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8874CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670774487;
	bh=h4QU5EEty94ZGKCLrI8BhdY2gyX+vHFagh3QNSR/TC0=;
	h=To:Subject:From:Date:From;
	b=dVx2U4lUvEZ98yWURUWVS93RwfhFgJWRAUiVj5R6q100i7Fx1f/qSyQh9jUZsT7mG
	 dTN6B+St8WmyuaJ9oOVm9MmW68Ff1ahyqfkKFUvPpqp+7vwj9KHdbgDJf+xySEtkm/
	 8f840iuJ/T4xcJJf0aOgm6gizlFl3y4VMDHNi6oXaPRH0VU/+LcMwNfNaQv0x9ZcG5
	 7gkocZE4BPnGo8p9zMF0HoUfwOfTyX9pPnnIPrEzw0m+Kks+crsVOwFlRnV4o9kjP5
	 kRoSsf0kUoRkRfwApaMnIDoPgPuR15wN1/UIBVI3/AeVoMOJ1nuM1BJscz9ece/IF6
	 KrEyGUNUsSGcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69017C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167077448740.29809.10652932129105113576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eb93478d3ecf1cdd19e6cf34f844fb489c91fef8a7f488708a11ddbd2d4de61
Date: Sun, 11 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670774487
