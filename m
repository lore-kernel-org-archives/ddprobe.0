Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3BF717F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DC5C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663293653;
	bh=mFo0TxJUANepzD/ehRw2W4W5jlFJ3pvExhg62T3Mm9o=;
	h=To:Subject:From:Date:From;
	b=YXT2oNPuYD+6DJRCcuoFt2gxXeTzBNJgYv4bETFZ5qmoQW/pZAncRtRz6mbDqLbHx
	 Uk/oLGtwckXN2y8snwu6By1rBs7XTFOTroAdD78Zey6Wmh0zflbcIGukAWbjNBJsWH
	 xSz56vdXBvO4GKnKJPN5C9zEwQp1lZYzzZMny6IU61op+/XbcEtQzRNS6jZgeHINk9
	 wqGTF6pACtPhuyDkY0ZatzQKrtne+bKTQVydsMvJ6eIlKJx4Lojk9/ifp05/1Faa7I
	 +Xg7IDAQTuMetFt4oc1sGSjoxyoCJ2qYWne/3bgFITeDB4WDfZT33YcUceDK9lRKZO
	 N7Fn+hOSi1c3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55CB3C32771
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166329365334.19067.5815169408828309264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 675a27055fa9a49296275851ac02f1d32eb697dcab3d0cc8b5157fda706f3d8a
Date: Fri, 16 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663293653
