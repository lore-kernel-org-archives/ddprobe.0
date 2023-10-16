Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595796FA2
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 05:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6PfH8Iv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E90C433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 05:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697435828;
	bh=jAUpkK3siy8Po2E16FGSO/ZsPMg3GSSCPJJC+PkGZmg=;
	h=To:Subject:From:Date:From;
	b=M6PfH8IvlRYOvVY6qnvO7YsDwJYdvCjiCwzAARBRTdLQeeFGNIHNg0ur7qp4W1le4
	 O9nTv0kt1+2ueiGLssavWCSf4g6hRt1dMPVeh1ted9CqNLR3adrGm4SZ3L3NMRUomt
	 uhJNBiVEJl4sQFaQBbIv1/7DRj7l/1Jn7ZZCgqSM0QwG0KVgapAhWlW5x94nsQSOuy
	 i7bg8SJ2E27obUYtxzz8u8iWqfF1k/nRDk+9+V9zPZaOCZWRXZMcWDUOGbQ1Y5Ydgq
	 BI3ukso/N4g6yjOD6LjBCo7Jm+mCXrWCQXu+4Bwig3CrzLJ0SDGQSfn1KW078v51Mg
	 8TxOA86jH5UeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A62EECDB474
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 05:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169743582867.27731.7211553847774667624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ac1ce2389acad9c8723da1b0ee53d4fe4a16bde3b627e6b96708ea0a606062
Date: Mon, 16 Oct 2023 05:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697435828
