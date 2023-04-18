Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D6110E6
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 04:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E88BCC433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 04:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681793345;
	bh=/uAO52hE1Hn0owtAyl7tZrUuroLjkLdWuQExNmpZcS0=;
	h=To:Subject:From:Date:From;
	b=F5tysONynlxOBKUPG56X100jKf8W4srB83OEdRzLoFu/aCHv0yDwLLhtl2NtOIIab
	 0My1NwvbvY4a3rl6E7JBpc0gEmut4B/lBJ4sJIl7zw9N8LN0b7sfxRNcpnLzVf65QE
	 MeVAd0lNx7m25g9kgaEN8B1crF3rD9tGmGau+r+GsQWwA6HHfbvRaVpBSGhf2MIVVq
	 1wIheIsAX0D++jZkCkuhZhJad8wKpV/iNoDT4u7iIJdXjW8uxpG+8pxouxZDPQ4Cvy
	 RoiXbs038JeBE4J+ywzT6nhdoXVDTC+dgfU/LyXfIIvCxMcxF9hHfpJ1xS4YyLTWRP
	 9AvQTYxJ6qrwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C82ADC77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 04:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168179334576.5701.4733532985526351501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5801e6e81161b1512cc6980e495ff3e9d246acacbc67a74917ac3e2bb666f0c8
Date: Tue, 18 Apr 2023 04:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681793345
