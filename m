Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F441FCE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F604C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668415254;
	bh=OyroBty4eIVQB9qftjsZY2DgkK2VUHHjihvUG+OqP/k=;
	h=To:Subject:From:Date:From;
	b=Z/yvnkPhpof7ZG1sBoxLFSdN2KFkUpBGngbJxMYoC3qwaYQT+c43izHYCW3mwvPgz
	 zYGw5KeVm0IUWbqxk/POWXav8zT2fc3q7ZSHWbjwVA9cJLe85Nx4819iQCd+A8aWAA
	 2EDwqM/2aS6Bj38NhDDW/LTu2/2s9NI7H+e4rcjb2PAJHoJula2m+gJTVKjrbUt8gz
	 YZAlzveaG4SE8xmpAB1V1IxOSHUDLWY+XVsepKY+gMeRqQq+7ZFyy0ID5xkDdpwCku
	 bNitSIFiBVY2nCv5BB09YwaFf8utpTX5DDykTJdDHKbDRX6hGx/kKa5jj76LYHb6RI
	 nxwOtIqWqo7Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64368C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166841525440.8269.6615153250491516013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7cdf65ccbfa1d872840b95c851734ee3f0955567cf04d46774db7cfd4de4f0c
Date: Mon, 14 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668415254
