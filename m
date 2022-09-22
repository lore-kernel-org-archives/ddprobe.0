Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2BB3844A
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A41C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663821053;
	bh=TbjQL/FhNk+TP0lP6duzX3Ma9ujNiK8LMvi/3lt2aZ0=;
	h=To:Subject:From:Date:From;
	b=ZfPUS1+j2Et+hVrorlrvxjVvLWp/qfSpJxa19KUH8itjyh1piNbWyUN396oQkRUUQ
	 bT7/+GnZe8WXt4fAyfEFMVh8rHjAUZo/CeWf1I6XKjTRvIWQ+R3TmMCovQOd28ZinU
	 8CSofyzbgQCq6+KonZd+njZP+Bziw/psWHkt+tdb//pPZpP9Hbqu7wZX570vO19V68
	 hFimC5LvnPRMAsdaL12YVRKAiGUwe1299+Fafe0BQjp48AEWopZrtaQ/+Hzz5+6a0/
	 Y/n+7QdrxO/fppd9nLKlqIItO2OCCEud3QjjCanTf9p/mYLXostG0KOtQKRLrWJKv0
	 A1AVqaeKtnCOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521C9C6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166382105332.6660.17028900012206665850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fafee839f908b3b52c82964c237c44d3fc2e3e3edeccd83af75338ad866dca02
Date: Thu, 22 Sep 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663821053
