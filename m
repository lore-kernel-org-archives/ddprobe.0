Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160927F7
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7148C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671271287;
	bh=CKJR/WzADslSQr++EiZZVEIJDCaeqrYhsoSTAZKeRBs=;
	h=To:Subject:From:Date:From;
	b=ddp4dOqGvAPaT3k6ro4TybGqGrgLPa1DmuhGvKKLA8LYtATFR6MaX+htJSROsehOQ
	 bxMgPIZAhoGO/RrLuvUFN59GzTT3WekA5MI5pSk1oRKSSgw2mFg8mNYH+e8XoFvm4K
	 DAejjzJ8C7oi0Am/ZldbFUOVc0cZRQ8LBbCuqFIhtEM2/CpB0YtyG8NKZqxsQlbAQL
	 QC2nTtCuxI53hTGYjYvqUVUGI4RHMARMPOJlqquo41C6bUwklBuGJWhC1CbEdNr4JD
	 mqEV4StFgDDwH53vLxXRLNdXZxDq3KKup/oam4vtzimHAlpt76bRWKwQh4LLZ0Bphz
	 RIWWmTj6Zz2GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FEB6C4167B
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167127128744.17119.5719917158898926254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f45f12089345373c5ac13ea64b58a4c4db0b9d550bc9a9927eea0be2e8520e2
Date: Sat, 17 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671271287
