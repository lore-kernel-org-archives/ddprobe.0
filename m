Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD3F17C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87FC8C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671682887;
	bh=XtDBRlEEXqiqD1nmqsYpBGTCN28rvVeQ/dJ6uDt8eNo=;
	h=To:Subject:From:Date:From;
	b=VLql/lJ2ejBFCyZWaiWHC9sSlY0nWNHCTZQrE9Np1enfQkoFu6ez6adDG22vAx0Zi
	 odZytfkOLAdM8maPR6Dx0rWFBWcS/r/OlqyL0Wk0dmD999ORUoDvxHSloUnhat9RNI
	 wT+YuZS21CoxxHABU9fb+eAh3744gFCdT0b2bsHHRysSYo5YJ/5hhRlkqqlnYzZ1BC
	 1EiS2OemmGT86hTvaMD5epm9TWFpPqlvc7S3KRHG9/SrCXg4ezhR8FitLFPvDBDL4n
	 sqiL3h/sejqSUezzDk5MVcwpDA1MSiTueuHYU9HkZWtidJWMQmThZpdlbVTo05zMlK
	 dQ2qKcH1I0dZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64958C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167168288740.29641.8481501616688858205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fcf6ad7d32c624b7ce7439112f96fb861e0561050a2a0c7312e3bd9aa27fae0
Date: Thu, 22 Dec 2022 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671682887
