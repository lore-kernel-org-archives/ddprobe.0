Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A2D30F81
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 19:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF207C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 19:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694199848;
	bh=Q8GJFK680zKO2IUd5NcsH9WB+wKj6+YvyB5h/PNs9Hw=;
	h=To:Subject:From:Date:From;
	b=fG1VXz+GBo7WDwPaf8fIo4bYP7DhD2wUG0qddhwYwz+kfKZynnXJYZftys908apAC
	 6WqbxuJjoNwqPkYQ2YrDQSKARqBedg4DN6QGW9Tjyty4Cds6f/yNHlCfifppBcJLkB
	 ivYXMQX1q4AJ9+Y575nKX/XF3AwVol8Un+0FuehlCNPAGt7CS5LrcxHNdXVkoIwAbi
	 LRWsWKy2DkpTmcTBzet/j/rnGtsC4qwL7Ine/4vAlKfh9828gCYwS3jHbIrdSABimI
	 hxthC1SdcyHjJU3hUZ4z1hV2OdmZp5+bgzjDe5PUz9CpHORBcSr1r2da7GMkMPOOMj
	 CQvyGKwpFHILA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0045EEB560
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 19:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169419984871.21841.17394610011429887197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c83696e94e2b7dba4a88410f57369cc8317d2fefd5c4889303974f885ccb53
Date: Fri, 08 Sep 2023 19:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694199848
