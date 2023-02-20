Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDC363BB
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 14:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E940DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 14:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676903345;
	bh=5retw0EYf34UGkRR5MODM1SZ6RqhOE2keLnhH4WmsIo=;
	h=To:Subject:From:Date:From;
	b=couVCSnA4atmEwJQBPYik1jSMuSMjOS34FXdXAdw1LFidGTPt+YF1mWhYgQLoR+5d
	 EG7taq9MAmOkCzjH2xF/jLcBrVX3UhnseqEm2T5xAnJtdVvW2VDNMBa3l/FMqeB0hR
	 sKf/XLQz28Rr9p5YEpWT6dZ/aTCzd2OVzXBC9jzx0B0DLvxk/hcJuq6tz50t9FLjdv
	 tOSTa7z59IfLWaM//7qPLO7cSm63L9+SlmQLY2/PTN+ttyV4fl5l+Ft1l3PKBhPx2Q
	 06w9Pz6KwzAptCY93PBWsn2jXJjoiXhhsVU7EPkyai+Ld7Vr5nxFtq6smI5sDlGUQG
	 M2gkV+HPzz6yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6EAC636CC
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 14:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167690334575.22886.18141711415992783982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebb949e85a0b0a8634417952415b822933c1b169340003483285ededd5ff430
Date: Mon, 20 Feb 2023 14:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676903345
