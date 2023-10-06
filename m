Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0C73B28E
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 20:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feSpZeGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50DAC433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 20:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696622828;
	bh=jnTQY1me8RfBIFsuib2aFPE4CGuzBFugPzB44HugzZk=;
	h=To:Subject:From:Date:From;
	b=feSpZeGkAQVDVfuGCbsRbWwK3XbQbsNElFxxg9Fq5WY4zlVdBhig24wnsa0nQS5hc
	 R58r478Y+sX1G0ZaXW6z+Edli7lIlPG1OBS+rwIrHuiSmmFvwgMis6/u5WEyp7k3KN
	 gTHKRxK0UVV+mY7Gozsa1dTst6qWWXM3v7fOaQrAD0XjjDllbard/iwDjCWj8kxxJI
	 oc5GUqehN596zdtJF/ry11Pku+wYNC5vmXiR4E2XBgBtBFqi+yRYV1wlFFyCTiWP1m
	 9JXqaS3MM4TcgpOSXIfxFbNYblZC1GKtSt3dTGJ3+TuI51fnV6oa9AzraP19PZLHBm
	 0GnuVpATGyCOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B530AE94113
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 20:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169662282873.25944.8997526474417690714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 125622c1db951008441560a15bc06bac7a22b6bb46d74a5d0c091d393c40fc49
Date: Fri, 06 Oct 2023 20:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696622828
