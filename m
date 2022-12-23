Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D398473
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F260C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671798087;
	bh=6+0Yp+VJcHlUw6jmdEZcscU8tIxasHQwuvrmbh7O6cM=;
	h=To:Subject:From:Date:From;
	b=VXT1mKnVM5hlAS+yEaiGXgrKs/FP/jdqvxpSc0+n+AVGEa1bl3H0daFoYLurR9MsB
	 ZUNJXJb1oeIJu6aK5P6uWv54kLeE9KutUeWLO/056ZA83AmJAehWT+dXiqHasxcsqW
	 ZTGKU7grH7Ci6WaFNS3GstPj9N6npeC96mgYs7ifiE+7BIStj1dIVynaf9KC2dbdLm
	 8MhNRvEpT01DY87PPWREdY408WF9sTvW1TfZFDC6S5vdtu/EEj1dd4T4OVb6aLXIqe
	 JWQ4p3iKHx8/ikDAWAdJESDsU5X3Ew/WeF1xunHVexc2VMUyefEXUvyO5DEXxLmdH2
	 dvXHryG2bGt8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 727DAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167179808744.32446.5480532863320508390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 671ae0a45cd9223079d8cd0e7ddbd2687d62a316b3ba86fe7442ceb325ecafdd
Date: Fri, 23 Dec 2022 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671798087
