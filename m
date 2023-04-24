Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6266E7C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 12:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 122EDC433EF
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 12:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682340126;
	bh=0VSlP0HvW05vwZg6cHXkGixvnjYBm7Xo3hd93Gockd8=;
	h=To:Subject:From:Date:From;
	b=NJILeKHia0oLiarPmL+DJ+Exo3qWtYT6vcd8Bd8ldoN+fPW9YUeK6DacqYNmlsd4q
	 YJqhomdvEipEYvLdbXaHmW8tnY/lVlcNzWB+U9Z8YTu41H8pXadT7sN3f5fXy6OK1F
	 hPNE+0dDe3meuq4hQV2Dd6sygcQXJRoHujXNNhwQhk+lUthB8Vy5vavDjkkv9hdPpc
	 hktxOTgPKzFC2uLYNj7bwabs4UDm6iKfff4x99fo/27wJrLZoDBUe1o1nFzoRkHfKm
	 B5mV9IeNof5O4jYB+r9Mbrn/WDEbMUWOfg+vPnlzCML19NvzaP7pDS9UvjE3QZNfNT
	 WFtxkaqWtEzgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFDECC77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 12:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168234012589.6624.16919604392494786797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e182781fc571161433a3f19fc6d0f94241ce5d3ee16f2cdb0445846c508877e
Date: Mon, 24 Apr 2023 12:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682340125
