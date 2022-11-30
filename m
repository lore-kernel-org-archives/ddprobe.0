Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5B1A2D
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B1E6C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669793454;
	bh=2330c4dSGDcdj4aAPTzyKHb21Km11+EgqYDMTS468gs=;
	h=To:Subject:From:Date:From;
	b=PPYt6dBEDaNTaDqQnaVVP8V7w3sf+VLc6SgaBBATSjuDGWQZFdC8BkJinz/9pcmCC
	 vQ0omvWZBY/8Zt6UoQ7UjoVCiQF+DjRqPzU6PmiEdxNW361LcKWufGOGlJOu+JiNEW
	 qDFu5oEDpkM3Tx7sjMHYglSCogIo5rLeY7mTWevgzVTAQ5zoH6ZVce/XDG9jM1DBGk
	 mZvXcRMDukAlkMbcTYVSIOrNbl2BplxccondqSve52D/o322rqMXCTplnVZsiXED5V
	 F9freD2QKrfwApfsOi4CVbEgA07HaWeqpevHgP5MzE4/EYLf1Y884+0GVilv/W8CD4
	 DPepjsfTBb/LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52034C4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166979345432.28352.13028267438967209704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c453450829e12eba4f365d5f17cd3faad97c4c203dc497a0d929084d017d090
Date: Wed, 30 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669793454
