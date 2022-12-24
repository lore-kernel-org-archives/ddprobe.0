Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3C07B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8542CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671841287;
	bh=467Jjsm7o6waKP0MKV5zNuzPfGmY+i3U+3rG9h7rbDY=;
	h=To:Subject:From:Date:From;
	b=AurAHmrWzPQUZHegCG0M2RokWgeW9NIajETEVqFW76kTYib8ziDe2r/+soW2TinYr
	 /5k0xGRoKfsSYLmw1MNBsg4EvpvwzOoUVNcSoLfhRpZHlrIi3Uerypsg4P+4LRVEJX
	 KvrPXqBjAsO5NC+cvsS8/YBOsdlz8wZFsU1LoxwlvZeU0Wrvh4sS4MuUQ9975YNuhU
	 Qmdw86u05TyCuxiKPchvqGLa4LejezCJA4J+VOwSl4T2WaZPFcLynlQywWwdR5rs41
	 g7OBrI+c+h5TXVGaWQBcxvSOf8ZmYvenbQYoEIPva1zgcOJ56CcxWitXuX9fgc+NhD
	 1o8M4jHAf5fHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66387C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167184128741.6163.12508023523724660416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d07df3ad948cf80e89c2ec415e9a204f8fad01599dc24d99484fce687f0225
Date: Sat, 24 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671841287
