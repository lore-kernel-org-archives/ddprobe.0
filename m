Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430271C04
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 07:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC101C433D2
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 07:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683443285;
	bh=eDzzyE+sBZFRFjB2O3aG5KPJ/POLbEwgMLMGFxzKQUo=;
	h=To:Subject:From:Date:From;
	b=t4hLRjqBvc8H/3c9PKp8slC6XoTccM2G7NkVlHYHngzjTTGJPlWZ277nW7qarFGuM
	 QoqH1NO28R6e/alBacJsLMivVEFvUYWF+cHOhEOVEy3G17Qfp/b2cS2h23on6BRWdO
	 SARFldzY0QOqwNCn8IBmKRVgyv2X5WwDKdwatTRvirU1JY9sSU2qlgHO7CBt4X8/9v
	 ms7XvtRAndnl7AJm6AlX8kb1ePXNaBJU/GjGaiK/IHQ4rFxHtLNc1slHO6lZSzsk8L
	 ZPqzxHQ6nTyAd15nT/LQg6X4ss1/S7cP2ts2n+PoCKnplFknaOodJ/ll/fSlhWNbTp
	 hmVPSdkxaIYow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3B1C77B75
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 07:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168344328575.30083.14868963125604112587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a55d3614158f0745a21d5933d2e3664032b72a5e3a4dabda15e556216ae5867
Date: Sun, 07 May 2023 07:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683443285
