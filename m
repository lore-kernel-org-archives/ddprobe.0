Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347FA632
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 12:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E043FC4339B
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 12:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682253065;
	bh=2tgKXj/KrQ2I0mR3VSjaXmB1yAguxEg8RWCS2DQ0Q5M=;
	h=To:Subject:From:Date:From;
	b=WUTxJnAoLmiS9UmKElA8lZjjBBKMcX73wPVtbn2by0/wK7D3fCqQ+KtYyGKIsc3nc
	 oiIygYJEaPHPbd5VuwdpiJQhz5vcPWVrH32dRXkPY2TR28kOMSqrdZDqdW4MKxZC4W
	 uWWm2787v0TS4CjJZLIN70YlyGnbxp3k+AX4glzRtaScDgobgG8c1xeuG7q1kGFDvf
	 nK2UQbRcPCj4NpzUYr6esMuJ9Z8549pIqLtvXaiEaMZK4X8DTA7/0K1RlMiZVycO1C
	 7ofz5e89g3X21dF/8o43tcJXaWWgK6Zhf/nu6X46OlOAkK8kZ1SiCZ1yWYARO2Zcfb
	 GBSf9Tj6tBQAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6507C77B76
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 12:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168225306580.8179.16424262115626951424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fce1496bbec605e61d91d5d6997a18827f539042c55f1ff4bc0f51b0b36b69cb
Date: Sun, 23 Apr 2023 12:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682253065
