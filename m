Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F3D4430
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 889A8C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672672887;
	bh=kweOBB9S9hCxSz1wyCS8vDf0ZkDcDcUDtL6LRuQcHzk=;
	h=To:Subject:From:Date:From;
	b=ivqncri2AOQU+97Ryvq8Rj6tTox8d2JBLoYHzqcLQTZCJqIj2iAwptZvnX2N6LnTh
	 Om9zv94OycocIr6opRrlNsmipFDjpUV7sv2K2YfxbysRs4HSfk0KjLZTnKQMxS4z/C
	 +8rzMk08/ACENl1yBLXqa6g6XylVCBPB2BrdoCLILCf5b09QUPuLbvCyH+ooCVvEfA
	 o3kYP6PNp8F44oeIQAsa/qg0xJzHJX2Z8ZbZIxpUxQPDn8E+1l2WS5CdQO3X2MPFrP
	 VAgbWeWU0DcYmg56W88FslCu3B7MGf3bgbecsq7LOs4GiAkCy5iCU2+aQjrzdz0Ama
	 0m/zTFddO9JgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EF7EC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167267288744.12155.3089698438965964561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fbab5a60bf4d4b34b2deef32167ae1b562c3554263bb85b01b5cc5c90e6e858
Date: Mon, 02 Jan 2023 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672672887
