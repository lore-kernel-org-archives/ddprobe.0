Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E637631
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93E0C433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689816128;
	bh=eQBZKIzkriHN5XZ6b+y2ByzdK5McqrzE8tTdWhuuD3c=;
	h=To:Subject:From:Date:From;
	b=r+6HoocLN7BdW7vnodleLWYLBdlICEQbIxThoaLnMnyHnMDoSAtRguj3MQ2RyBddt
	 0Udh8e8y1YHltGRNmemUpEa09wrvSxNYGXsY/kZn8hJn/2U52cbV/4XOkFMcvb0iz4
	 tpw/RTA4e6nBf6xfOaRuhM/cAotDZLJwLFT3Q8lqzij8kkg0D4xMX+9m4MBCqELt0S
	 WQ+I9QZaCoYJ5ldEdRYv7izVmEi64SSvCqPNNvm05DYGOOSIGsT8Bbi+FD13Mvbd+3
	 1A8Z576oK7kEgRmSwa2rEzP8OTaspOHW73z7QzGoZ6/GIODYEBBqy0V7+rG08viong
	 acXSm5Dj/j59A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B300AC0015E
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168981612872.24026.12715088732611986880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde3991ae3684b2870469e799cf87d61b0bab172639011f014818907dc099ef3
Date: Thu, 20 Jul 2023 01:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689816128
