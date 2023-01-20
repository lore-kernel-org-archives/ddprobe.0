Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDCDA198
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 883D6C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674184287;
	bh=5dkGAf7feet7P/YmoDVIr6bl/D/XNgYjFOWLZOBKqLM=;
	h=To:Subject:From:Date:From;
	b=ejHkPk1CemfoNZM1QucYCQ/TP8tpIbGk0xAMCrcpMsbfhsLEXSxZaGDHCigsef14W
	 bOQnJdJODXNPT00dDpyCIayb7pa5CcjvA6a7CIl662AdWGlbGeoAnuu5hsfF/FQFU4
	 iNICKGvEwOMT2PoweWrhkfZfaafXz2CcacZkRPO6TBDZpQ5JXiLCAUV4DRSlas14LN
	 xXOJpB94bQ19zN/9H8wxL5fl4HdPGa3rU51tM9WW0W6CDZFQL/BRjoM8Viz+9I7lwI
	 5VX6va3z5Gj8LmDU1oLzoKguY63o/VwkBXV8KwVcM1ryWfG3v7coeZ0v+82fn0rmNp
	 UyTv1RMIHSCmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69A9AC38142
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167418428742.4243.4466429738741142152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3668cd0d0e7f56a9c18da74ab6a4a325a91b2bdec87cb73cbdfa3f747854dbc9
Date: Fri, 20 Jan 2023 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674184287
