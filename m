Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3F779C9
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89BEEC433F0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670958087;
	bh=C5l/O8WL7gSQKCpSPDGAr2IZEWmlXqKxKwNOkMmc65I=;
	h=To:Subject:From:Date:From;
	b=QCuz70jw26MUSc14Ow/G6xVDOJvbtRkhzAV81bCDkIwzVpS2TyusIMqL1fZi9cZok
	 0wEOQkO0oo7yOZCqTcFfw3Jk4Hv9KhssiDlAhBr7H1TWI4/8LAypkoqRweUNAQZIeo
	 7YzqPUOzcVkOxq/Tt+Tvv0od0ICdViGXsnxaYX7zVLwTfGfMz8rL7sA5HTG85kkz4b
	 riCf3TpUcuXycVLSrpapqSNuDiwWn4sAe1c+8RcHB2tJ+2Y8nyE3519XGKCVVdJvzl
	 EQAVxVek95xQgfgw4HyibEkEoNtsz8oPAFOAyn6yMarLMOQe8/a7PtrBbuJeNQg8Kk
	 zZioBcMIznDHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C281C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167095808743.12314.3078090985773364343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714e300a51057cbef5d848df90e3ff023bdca85ec63468160ffa64778eada44f
Date: Tue, 13 Dec 2022 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670958087
