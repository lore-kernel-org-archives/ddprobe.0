Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECCB7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B950C433B5
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663791653;
	bh=Kt70B1+5ShRI6rHpCb7vUGNRq1IGhKXG2SH3K9hoJrA=;
	h=To:Subject:From:Date:From;
	b=fDuarnC2qdPGM1ErOXc3c+BHIBI+IoMTKq3TevOOMdqvqukzDJ/Kxc/NphWC4jlBN
	 j8erbc/JQYTRhz43k9p612BsqMAcGOD22HFSQcf87aD9vNr+gJqia1B6yRdD7HLDul
	 wDXbZ8H38bMKFXlUoEOMbSGTDUgZonP1gkZN2AeIH8RTOn7mH+FoqQJySOVLszZef8
	 fVwvkel956njaKVy2VoVNAlHy/NWXW32fvkKfB1p/SNu67jPx0osuusvJGCZ5pF6BN
	 5Q05JrZTzeyTWz74YqC5mT3bLpVCOf7NeHTZjYlod5k27ni7e1aQwmln1ON7oWoyUh
	 z3WaE4tEynmHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56CE3ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166379165334.6767.13037937953671166776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282747f4b5c20a19fb16077ec4957a3931030fd25088aae199df427ea0769cdd
Date: Wed, 21 Sep 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663791653
