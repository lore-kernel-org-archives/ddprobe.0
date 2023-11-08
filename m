Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12041374C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euGXIL57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84408C433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699478296;
	bh=xx2MUiAEzNt+X6u44/K+bEVF2d8Nef+WA7Xtt04Iaa4=;
	h=To:Subject:From:Date:From;
	b=euGXIL57ybL+KEEqPycLPo4e2/Fd0vPEM5AOyvHrpHBbz43cVauDK57LQdTTW8S8F
	 iuPrkW04U8C2qeG3uNOnganU0/q7BSHaegnZGTRRSo+zuApPeiHalIyR3YPalv4u+I
	 ZJnVy3gy4hGhPfmPH/XRrStmjDntf5S1coGPIjvGILO+ocGPZnqOr5gBlnziVftFXa
	 U4vDTei/Z/I1ueWWeW2i7MC3BsUnI18ByEzYqNG8up2QSgL9Qe64DBXcb+C6BKSCv0
	 6SVCTPneD+20l8NmlxecSp8tJwQtsgdFUFWaiIuIDsVNDUVL4sg6i0M3cjZXpsrtfW
	 +eMl8pGAnQTZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E4CC4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169947829641.28421.9985377810162255926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22fc21a6ddc742caeb325d09d2aa9a39fee292b118839c018ef12bca5dae7738
Date: Wed, 08 Nov 2023 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699478296
