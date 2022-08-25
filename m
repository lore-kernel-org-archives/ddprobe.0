Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5672F47
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 16:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A11C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 16:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661446252;
	bh=CuZ87hiDayf/jkpxtX59rw+1DjYsdYg3bIwzN/zdI28=;
	h=To:Subject:From:Date:From;
	b=vKhkbeRTw4Xznl1LmiPdKNQDpVfPQoQgBtX1pjNiPcaWikJO/3ohf9F4T4qr+f7TY
	 Yy2ldMFOMVJEKt3etdOV/sNIiLQ6agi24FDMRqnlk67fMuRBqFPEPhVq2NG1XHF99j
	 LLGOtPLvTV0IsIOm221hTN23TVjPd7NfJgJpQuqg4paqX3CFbYqigaF0iw6bow+ne4
	 RQFRbSTUjdCSRa5v2B9J3lIoXYDomFusheuLHsa2/LrDyyS7sZQLO94npt6XA4z210
	 j5XWbjCbUbtzvvTMknh2LiOcyq52mK1Vlxic9+eOwq7cnykufsFizVcFqsodfTKoEv
	 0CiEiA22vl74Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C54ECAA24
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 16:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166144625233.32638.12685666970256510289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1035d4c8002cf61175b3fc9df5e73dcb67bb0ffd0aeb3e1207ec2b56f1e9b7b7
Date: Thu, 25 Aug 2022 16:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661446252
