Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEBFA33CF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A61AC433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672606887;
	bh=MVeFN8Y455SNusHNFRerOr5LjXz7vpOFVEOKiA3nZb8=;
	h=To:Subject:From:Date:From;
	b=Tf5EceO9qS1gxc2F0HShf1W5f9IvYglwy/Amq6TdlY926J8dqRwA4sku+IufqNYYA
	 4bGjvN9kWvGoQd+vQbUCNwN50EHEtbt4b/QnW8Nxhkz1cmUMXLk2mstmgDgDhMmx3x
	 4hXC1z3KsEM6Q/dkvD2Rt0f6HuQsXmU10co9hT1tRap9JAL/pCQvNrDc98ea9C5VVr
	 j5j2NT0+u3nQKo90EKSPLVZTbCE0k7+yTBT8PgGbDct94KQkR4BA9v6cystwC9Vg/Z
	 /BKKSxJ1kzrPh0eyi3s+HzjJ4bFyCh9fu10ys6pS4wRETxCnwNzPneczxRsC5bfLDM
	 EnpWrRUXu7y7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A394C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167260688739.28412.12075502510444573323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355ed318a5715737f6781d06c574fcc5fdd979644c113d84eb1a85e4527ef2df
Date: Sun, 01 Jan 2023 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672606887
