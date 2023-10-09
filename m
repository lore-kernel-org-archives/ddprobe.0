Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B0B3D380
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 20:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBDxbJ+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2F2C433C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 20:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696883228;
	bh=yN19kYqWW8eS5qHvvno8/5jVgbI9jrik91BPLAi6IY0=;
	h=To:Subject:From:Date:From;
	b=JBDxbJ+a203mJQLqVWmeNo+tT9NJ+mIj2+sCnTg6Am87dwzTty+fHjVIHEgkdLCHw
	 tqTG6hx6GrlCeqI9TGRIm6+a3+YDSdGwZ4r35i9Wh41VcgZ6VBlcGzWxnQAvH8HFwe
	 mAXHwHHgvQ6jMuKJk9H70Ni1hOyS4+M4tykJlPaXw5SOAbSqF5cQnuGGhZB8lWaD1+
	 chCWOwJ6ibmxVC8syF4JlEnyUzrT13+y6+G3R8xFFNHUqbP7P7IGhBNMjYzdFau59A
	 QH1VfiyftuEOJgDNo3TRZDjbM6o1Tml6pWRnY3wZMx6IDXSt17ryEDCm3ZtuyW5QSZ
	 6Tnbi8ZZREikQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD786CD612F
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 20:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169688322870.27936.4434284235614351508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb50f43e81ecfe31aed0c238b6f6844cdbf2d8102d0a2109c2d493b8e209497
Date: Mon, 09 Oct 2023 20:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696883228
