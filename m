Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701F014F92
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 05:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0A1C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 05:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694583248;
	bh=jZOvBrxoLU6I9RB0ot3v+v+dAlawPWtvyHA3FU5yZLE=;
	h=To:Subject:From:Date:From;
	b=o+5LSq0QIpdzInop7uNjMvbojvCHdx9KR8f/IQBWFnllZdkWXrBBTqoOmURM97LbH
	 OjJBl6pLtzNEf56u7EYChr2TE6POYy+ccKSWWNXlBVSRyFFmpxBuiyzLCFfQzcqawD
	 /OwdsgiqeR8T/zNsEntPU3UNHYwX9uiKJ+in6yHlRxj8pMmSEgyRDg3E3Dd1fWFlC6
	 9jr0CV4whOxI2zJ98kxw+ObpTpJQ76NPHIENq112qqxI+dvNUfxLaJh48B+FaUB9ts
	 R41dF4JRPG08pgdV5wNT0052M/GZeIU27ibgFntBFoIkGnkg2GtUG/Gl6oMniLGCbA
	 1yG1nVlRFhyMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9395EEB593
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 05:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169458324874.24364.3105472127293536770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a8c462e96568a837961056e6854bce005e28d06f41dffbefed8c1b0f0e4c7d4
Date: Wed, 13 Sep 2023 05:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694583248
