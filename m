Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE4A97B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E583C43470
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666411853;
	bh=n2zSjTvyK/J/xYPfjhLgpkcaHhSV8mhqAmxYoluDg/o=;
	h=To:Subject:From:Date:From;
	b=Qs6gKknKd5KaAt6iuV4Yo5YwN5Vp6Sz3z+msM28B0w4FSWBopac2Uxo2GeKhH0qjF
	 qRlSGCFyIeB/h3+2Y2FHzaVisNs9uLX/DxrqoDFmrRAMGmH1sTO5s7u4Ktsr8Kp+2I
	 LKIWzpeogHV/B3xwA1jNYABXg6HR7fQTVy0kZTlY3D8mfZ8biExzZUNkZfrY1aCEy9
	 N81xxRbeJJQjAO02i4c84eQzMS3eMjA7XOhCBQRTMFn6qg3HEm+mHDxcFxDbbd7s8k
	 0+CIMh7G0xcUB3Kk56dAHtg/Jg/pblUov4OxBuCKtNZd8N09kUrMXyOOkgLeFEDuCd
	 FA/oiEIa3xLCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58225C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166641185335.16059.6368572578804817478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07feb82aac0bb7984494fa37460c1cb80ba151cda5119aa10604f927eca37e5
Date: Sat, 22 Oct 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666411853
