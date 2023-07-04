Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7885D568A
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 12:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D753EC433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 12:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688472368;
	bh=NSXEXwq8oulMcPftpxNoM3qmbhSFqxAHNQzIkoXMF/E=;
	h=To:Subject:From:Date:From;
	b=HMzB0T3t4hABQeeo4ir2G35SuT0ryE5yw0OByFudBuHMGCsiC8KDdXEaWD3r3Bdx1
	 /ckFzpGZ3loqWTEKvn2T6aMij9g2YE5GmM3IUYlUW1KfcjMDRMr79QT6snqyxk81WK
	 +aDGLmM+YqS/ulVqZO/hRxPQ0JAvyh/KiC2AOLkUIi+B7fk+ZSIVeiboQAhJWGDTLJ
	 uTqzAxbbmyThs/YMb4LGAnYqiiW7h0LG5g408UdKehyyzGomDnp9WPqAZC1R43d6Cr
	 M/aZPyETe88tazXn8QAiWjYFXGLjRq7oAEbmoEhuJShVpIvr1W4xyhZD1sYmgDjSGc
	 FiKHLzDakorgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BA6EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 12:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168847236871.25622.12443005850986197740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7adf740672ca2dc9f5b9279fa158f081c4c3f1a3a8c75680044d059b0d01cd
Date: Tue, 04 Jul 2023 12:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688472368
