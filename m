Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E803110F2
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 768C5C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668389454;
	bh=OHCrdRi8eti3koY97Rpu1n/j53qOpAJYWNuLZfFzZEM=;
	h=To:Subject:From:Date:From;
	b=a80bkTyuyX/spJAWKA7J8oa5s/fic6IBnXV3Fq4a9YSCi7rMfPqobIWBQk+0BxbXk
	 k3LqlkCETCqjAanuaH40gX7mC0lyqaq/UcA+y2q2iU0Iejtl/gdjdX3xiU7QMHxt8W
	 kC9puTeVmkEqA5lQEePQ2YW8/M7uchpzXbqht1B2Ljk8XsaCNjf0Bw1d0eNNCqO4gR
	 5ioJ+bqYcL7GM3Uwc4YC1UULRi3D4oW4LpQlsWvqBtuafbWH5CzFlxN8rUduh4p5nW
	 z6Ma2ekdI0v4r3bZ2LLbiGQ9OZZ89qkFXleZFEV/X2UkTa7EUw+ydE4yM64fPuUvXQ
	 OaiwtBzq39lCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FA8C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166838945432.22285.12341491257401699210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3063bde8729ba5a984ed987e1795ae6a1d5ca39d193305ba84c60a8a7b28bcb9
Date: Mon, 14 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668389454
