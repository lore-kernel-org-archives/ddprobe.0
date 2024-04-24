Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3616915699C
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 21:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713993683; cv=none; b=PB8MvQSa52UGgdobi22j88gXmX3uPb8CJkD3Pf4tyJoiWMR1bT7SeYDVzfSKVovpmxKFixIJLCrLsw52rMDw22uue/ROTBJfVT5/1rm1nNy2rlW4Iy4rXUVSz5FJtHCLql8dOUDCzrvyBd/KpSS99De+pYUgXtQMx3VEtcPUf08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713993683; c=relaxed/simple;
	bh=s8/tEzB2OHiiaGtyUPrbNcMe7s3m4hYSFKDzgS1qYDI=;
	h=To:Subject:From:Message-Id:Date; b=StcWJpGtOIGvgTFYkF3LNPkWxJjH5T+VLRxHvwQtGTF6ypeR1BNJPX9n84fcvL0I6VnDsLRD5ju/nago+UfjwhbE6hOBvFVp9Lsg8kJxLoeDuIsJs9kguQxyF5JX3c44BEsEJ9xNlqg02Kyn45drvZqU9YNZe5E+NU8viYd/B2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBDSxdC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBDSxdC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03E1AC113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 21:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713993683;
	bh=s8/tEzB2OHiiaGtyUPrbNcMe7s3m4hYSFKDzgS1qYDI=;
	h=To:Subject:From:Date:From;
	b=QBDSxdC3zK3nHyZJwb7hDprtj3YF3nuZNMbczgzIUy0YDscYbrnKmFIB0Av/iUH0d
	 B45DbF4RP3Ytuvvu7htcv/kb1TELykeIcJ0/2HnpKt7hNR6GFlkIBa0Exv57f5JlsS
	 ke5hVInW1aGx6s0qcKtfD02YETQ8WqmmTgDNwu+aV16l3vv4xVDEUYSRSFvZt0MnQB
	 EthWTda97KJcVfRYVfJN9CPOLTZXVuEpcmkr6uCXqiZS3l4PmXic8MsB1mroqiFurE
	 xQLXIMEQ7ItfezJpz16BGG4w/KaaODxFBZ1A61Is1iHP8xUrZQYAaA8uvLw33bND7p
	 N7aaF3/ffrgPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1293C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 21:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171399368291.28039.5130817929145806476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f559e53306320cc241cab99891f95de3885ef9f6bb44885286d00135ab1911a
Date: Wed, 24 Apr 2024 21:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713993682
