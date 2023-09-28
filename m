Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A0E53AE
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 11:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35E7C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 11:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695900368;
	bh=D9OJFmYE/TBbzrw4BcQiHfXZlvQcEF7uDRZb+pkG5zI=;
	h=To:Subject:From:Date:From;
	b=d8NBl9x/bdfXsJd+Ktairv7MhaxqP2bmXWP3HOhAOHf0NSW3TlZKjMRynKqfNJEH6
	 rHO1Q5rQyqQMZRxs+JdlUePjRBRtgohhT7ZhU4leuIAtY9PcMyexJDohtBR0+x/3tK
	 +wdMwl3gQxgiPJLMj12zu01gygccNs2aiRwiyKQnTGAlCBEsXtkcQXPaWLGzfc9tXC
	 q0rhdOC+eaTgQ9D34z4cy0O5FHKgpkYs9GAa/se9iqVKK2zq4FyaqD1v+03alJGzmz
	 /FKvyBf7EXBIebdX1NCSF5clNr/0xBbm7Q+BdVJhYKi008LV9qE4t+A8JxI+OQuBzd
	 ffWHPoKMKAeag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A772AE732C0
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 11:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169590036867.2079.10505188459973600872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6008818092d874db70a1a89d2ad082a30a0b50271d5aeea0ecdeee8cfe443434
Date: Thu, 28 Sep 2023 11:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695900368
