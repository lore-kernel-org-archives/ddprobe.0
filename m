Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E4D12B61
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cF30PsuV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFD7C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705397896;
	bh=Wr2+GgoXcpBSvpiQO5roT9k0NbcOyLiEjDx8RbsK0ME=;
	h=To:Subject:From:Date:From;
	b=cF30PsuV6VvkIL+xgCucHqrwphS7Otafm3VGO8FHClv35wAH2yu8kyGmXStor/ZKo
	 YFBLkyMwbT2TxhXkfLVtzDirNwWYT0TnC1aKH/xCFLOUoMt+HNfAL0Kv0yJ1LUPehm
	 uQ60h6hG6WKNTRZkgv7dFnWHSo0iVwnXruLYLkH5I2+i7LWnND2ODOqZBAafi9OUca
	 9Oz/tsTh/gjHv3fNGsZSk6c1ucCr5sHHz273qwwV2Fyfal9vrGJPBK46vH7c0jNVR2
	 MmtSgj+rxEOQLEKgYqEBrr2lO9Dr6mGlPYmmdJ1qUsMRQRMlSiPwOmUZ9gYI+7szUe
	 LBDtu+wbZ4dLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63712C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170539789638.23261.13870982064309839289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a62b0aecc67bca20d95c505b814726e5307ef3236e1ba1310f167e85009cb05
Date: Tue, 16 Jan 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705397896
