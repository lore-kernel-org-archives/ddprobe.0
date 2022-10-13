Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2E317C9
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74DD5C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665657053;
	bh=o0cr8xhjZUGBXtXF+jhnL2C0KSF5B92/v1vhl7810uU=;
	h=To:Subject:From:Date:From;
	b=EeVskRCf1ycKY1HoviVE53zbZvvWiBelIiUnBV0vy/wt4gSCQLDZcS0s2bYQaZU0f
	 Hm2uJfWDwpk6lfIoXhesjgu7HmByjZL+A2n5xSb2Zb6thHVguy/DFmKdfUkVyMegiq
	 XxtVmFdaubDQDRp8L04vWbR//CjDpghWvgct4vOhCzgTGglNTI9nYHuT4RaLy2HIWj
	 I3xo5pFGfvzSfA9c/STpEdK/Ux241sdAHGCN3S5FO4oJyyV0MPFExK3qbI/qwIqT1T
	 LhP8+8Z8WjUarL5Hh0HusqAPUcKPrVhW5gHLD9+UByJrHeLPaTv0vUbxbsyGr4yumu
	 a53qECLO8ngOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 598C9C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166565705335.3959.17168975250836968614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dfe556e8c9b6c9d7362eb01bd888c0e8f4ddad12b3dd1e18cf1fd26fecd1b29
Date: Thu, 13 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665657053
