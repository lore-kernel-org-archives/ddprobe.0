Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61253629
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 03:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyaMOKMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C997BC433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 03:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696564628;
	bh=i1aE9Ihte3qTe2M20AE1SGcDx6xGpj/KquW9p0cGJzc=;
	h=To:Subject:From:Date:From;
	b=LyaMOKMjQnG6Ql/yQ51pyEj1hXJvQn4JMmh1au5cS5KV/mAbeXRdZ9naUwXPQ3skB
	 dl5e3xX69KzbRqQY2Udcaa7qLZw4ohulAwVrHW63U5bO9zo4rDa97XNv4bp/5Nt+KC
	 uwF/MkvbEOY86780h6A2JL8tKrcQQ+tkBN2mYLhemUoRxzZNSaVwhuVA7ynZQc/TAi
	 5AQmuxGI/G1MjhB3Y6bPCOJLTBXm1gq8I5vOti4N3za70wu3Jiqtbmj6VWVLn5Petz
	 hAlw60xDhZ6GB4bW1A93vWZ4+CCMZlr/DC3eqPaYHGj8ox1qxb5zewws3gOhpy/PhF
	 B0ifzmaNzFgzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA436E92FCD
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 03:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169656462868.24599.202770863120621931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bbfa0a12c23c1469d43dacb97eb41c6848a8f360bd73b2dd89798b72173464b
Date: Fri, 06 Oct 2023 03:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696564628
