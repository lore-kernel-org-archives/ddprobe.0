Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F6F33C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7636FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671661287;
	bh=sNUcbDWGcGb1FAQHCU1JmNxO1JOHecpHlCWQI1rqZKA=;
	h=To:Subject:From:Date:From;
	b=mfHU66ZCcpC5fzN0wdZSKigkZ6wD09XdznwzWEqBpVK6EecQ95OOB0PfMUy2FmgB2
	 nux47T3KdQ1PEGhLPl2bKEr6BdqCcBqLfRx2ShqgSvODKhxZ9dtSL1Kv6wDAd6oso1
	 1VPY3nkS0SwJKE7F3pIS2oVlsmZf9+fay1MCAHQom1TzwZ+LBwjeJ0ujyCfrQBUQuI
	 T3r/pPTtHUfa/1H8zBIYpzF+R4oVbKA5Zx+2GA8Hyt4645kVdBA8mHCUx28ncy+1BR
	 Dy/hzDluurSZBFkgJVJEranc1OKkRxjR0EdfDNASfUtlS/MVBtvXq7QIicq6FQ6/FZ
	 g6BA6p1RAuADw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DBFDC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167166128737.5854.17274810693655669804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df42cd1ff9b9715d35df255ddd09ee5551fcf07737ba41249353e49f34e0d19
Date: Wed, 21 Dec 2022 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671661287
