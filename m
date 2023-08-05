Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694E42CA6
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 19:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DB4C433C8
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 19:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691263388;
	bh=oW63Nh7Y4gLYsOaqanrapnF1FKFoxIPWbVf02B7B99Y=;
	h=To:Subject:From:Date:From;
	b=LZUT0k7P7PI1xjNESpTxOTDPMwk/6qeQw4HKD/lvCWfzZ8DUK5tqY+7R3IqClY7mI
	 k5BgOyLVgwBSlKDv66sOebZNdplP/A+8k5G1xE2MRCqZCYidztdKXrInFspjRaNHYU
	 PWE6xANOtxksQHwGpWebVYquYHRZKLeTm5NCLc7jbCxaeqR57dRm3is72+oAOjiqZy
	 aA68TYa3/YoXA5TC9xYhffDY5ko1PxYo9dLRtH4p2kxYQyNBSSXgCGeIEKOBJsbUUY
	 4kfpRp4QOeZZ40Um04fHOpxcQc97IDAmaU2zgidZreOA5shAPcL/40RcXy3Wdt9VXe
	 3WBnJuCaGTaRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D03C0015E
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 19:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169126338868.5625.4910053640052745235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d963691884cc97fb28987c4935d199b213fc39d031abf86612eb36983487448b
Date: Sat, 05 Aug 2023 19:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691263388
