Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9BF7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8678AC433F0
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670980887;
	bh=DypTtayX573jCrai6/ItMRMl6rjksF4vGF5lFpaUgmY=;
	h=To:Subject:From:Date:From;
	b=eO1iahCzu5G5dK5taBo5jo70FnTxIcjlnTThqifSyZcwL6iLcmo8K6Z1N3o8X/kWw
	 43JEBDEloINvi3oRTI/vKd/VMY6k4Wu8C2w/9AXb2Gm8ZT3gWNRr+PnRlgr7XlsWta
	 KPOYe7aH1KvsEoHHWIAOFSES1wlOxMcqH/HnQHiEwzlUYStXv64/c5+U8gjJNEzp/C
	 kMwRl4otofpJCsm9nJlWOgmS12Q2yEA56LupAW06OklacrhGBqCX+XGO/IJ/U++fFQ
	 zzrLWTtAwBoXuQ/oUOXmC/FPDLN/3zyfpBk9NbN8Vfb08MMJfQeeR4K1+cFjb08kDB
	 njcApcanZv2Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68AE7C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167098088739.5868.13569861886426803784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2b1d8f6d39855323bf1f1ed3bc8a2c898cf70b89d6d1a1bf27bc014f78064c
Date: Wed, 14 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670980887
