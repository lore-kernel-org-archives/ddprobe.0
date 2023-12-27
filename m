Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C473C0C
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+RdgSNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA01C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703648896;
	bh=7c/zuTXNRXCOwikz64+gBYw4mRe58HPK0iUyDe1DOxQ=;
	h=To:Subject:From:Date:From;
	b=L+RdgSNIZlAULSkvK792hAQodGPp0lT6/EbdtKwx1o75hvRelWRVReXj4i5dDknQL
	 swVNLa9P69mEFTQXrZvSLUW+ts8L55/ZLkyhv+mptClMTVGKaJM2Ok24ghSJnb62m5
	 t32BevrZIz8VDLVALxx9RozU5hWh3bpD+ehGvCJkxHTNoZF2atLc05TZU4YIjWKvoH
	 Q31c1skMPIFgPiG7UMQIcifOIYh7IhPKMf5pNim1lD5S9ZkKTkwEM2HAVjXLvHQeK5
	 J4iUhVfGzA93kiQZTGxHNFNYV6C/oC0/BbfZ7gUvZZFm3HHruv73gpJMSOCaUwmwzl
	 jFQZYkl8a2y4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AC11C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170364889646.7456.9920348709366445621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68cc54dbc72f07366ce3b3f81b1ade6c99f2f2b57870cd5dc4ed8065457acefe
Date: Wed, 27 Dec 2023 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703648896
