Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BE615A5
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 00:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15B9C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 00:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688949428;
	bh=ZP0Ck7fotedEeGSq/rG4bvR9f+KlpWFL8Fp6/VPv0gs=;
	h=To:Subject:From:Date:From;
	b=JzY/Oj6ZBndqUSCg0cd/9QT+kXixQiequW1fKTv2Z5EmnFsLY0xy3Yuz1lVZvJd/S
	 T+cxvo1pKxfX2nH/A1kwbbwYI07AohADyVTHeyrpdinKMyZ2w23qECRJl3K+5y4t2A
	 S2/0+4oHrWG+lT9OcWb5QRTx8Tp1OqapYTyaVSLkGxBLnjrd9lJeNZLByxK3aT6udb
	 QNCbJQzItGUQQJeffaYMGkXDkbk9SbPPifX+QVSjapwzmNsnR9Yatkc3ZZslDQBaba
	 L3vt60su5epq/e+aeMSHtFHjAV/+XNR1C61USoCoQDMXbVfNPyIbHe89vFfyN3xCVp
	 ZWBiWdfuprsZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B472DEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 00:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168894942867.27095.1847020700813929994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b5852696c6b475718b29e2d33d1b514ac1e39eacf533c4557beb6f626fb50d
Date: Mon, 10 Jul 2023 00:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688949428
