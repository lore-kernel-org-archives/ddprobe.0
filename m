Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FC4C141
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 13:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB86CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 13:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690378328;
	bh=sNEJF3c7RLhUAfua3TrmV5akH1ytVtURNY5ZmEqv46A=;
	h=To:Subject:From:Date:From;
	b=psqKqPZr83EukDc6Klcm47jmLvr0YtcwZzKgY0JarM+M0YEJ7YTY/wAYDU87DWcb/
	 +GYJ0HaXcRvyGzdg08YmFHW+vif/wmRKn5iR8qI2WL0LqmrC0MazmgfRSm/rnGqVuX
	 ioh6uHPhBrxeSRka3ZMnB5ErDLDqAPkZo5yowpWgocSRWLbeI7lp9LFQuytxJ0jhID
	 kSSnCnk3KTEEfmEikrUpV6IIzh1j8eZNS0HuPSbeXyQzclXRG2hRjWN5Ygj/Top2b9
	 LBo+SFnsGLiDfCL5Uaek2p/RnicFR0WWyk+oJpg7z3gwdn422MW5m9Y3ZhQUlEAWlh
	 clUVdyJ4aQ97Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03C2C001DC
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 13:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169037832871.31600.6191882652513519766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f24919b6a451d14b07074de171d457627f83d0f5ee6c59188402a6958ee33f65
Date: Wed, 26 Jul 2023 13:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690378328
