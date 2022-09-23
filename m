Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D9E2F23
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68357C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663958453;
	bh=6fGQG6uIyLU61zcKOwYzxY7I8dAnvc6JcucvbIvWXvE=;
	h=To:Subject:From:Date:From;
	b=ESrLTIvand5nP41C17hCT4s9MoLjrUSL7eZ0PwYLmBpVu9rp4/zlExWBcT6R0JKHX
	 XBcYvC2QU3tISVr4sfIi5t/y0E7L1FnGtXbo+vbTfsKriD/KmkOpJ+z8AQ/KjBcuYV
	 G1P4UsgLl+SFUR2dJBV+Mxl8213C2h+7rBXUZX/PVcTONNFhmyaa7zQmrTTQoXygMU
	 RIQm8W06jSKs1yi7SAUs0VjljBi6PgWHoPfSOnrzGW5zdrb3q9+DsMD1s6oH0PC2kY
	 niE8n/N1vXqPCGV+bVItgkLXCRHpXef7KZCirsZYXJi9lo6eOmz21IEwdcRJCQ/4wU
	 BJ9wQBFSNUlyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F21DC07E9D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166395845331.28523.9870530517498239463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c8dcd952414b2b4e0df66f09466b47e1da1d2df10c45b3259b27823c2bd3539
Date: Fri, 23 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663958453
