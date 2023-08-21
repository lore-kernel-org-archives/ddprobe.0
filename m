Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 822D97F
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 00:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8685C433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 00:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692577448;
	bh=9w7jaoeJk8Pz0UfXrK8PtRcQGM+92l6g6D+4yP30r8M=;
	h=To:Subject:From:Date:From;
	b=JlpiYBiJX48Tozkd3ALIDlE9AjS0KWgkq7RSRvHiWXWtICG9LYKn+KAGo9/SIZcvR
	 gmDYlgwl0OutauG5P6Xlm78WTXdMsp2lRZLzrnmFYDuUF8L2YVU1hiC+owy6X1eLNi
	 mg4EEbyiMMUR9R7Q2qXqCyVbL+QLNGiQazo+yB2iW0+gnR6AE9Q2t8bBCh31Au2vfg
	 MDO9NY69qOBgBgkqjHjRoQqcWhk7fpYEUIXihVU3eA1Ax9KqEOvBkAduM+8YzxVDEg
	 Ef3y8SAQ6TNhlLPRp+tM5fyk9WG9UI0ngV0WOXjZ9KG+c+Wpu4KZsBn7bg90SH5koA
	 Q253Noae4SIGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8451EE49A4
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 00:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169257744872.24707.9472785721682626753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ab98a9fab9a0558b4efe9ff5e1439b8f0ca9fe6271650b2faba36a63b27fa2
Date: Mon, 21 Aug 2023 00:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692577448
