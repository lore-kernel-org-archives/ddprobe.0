Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EDD10A09
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 14:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC7CC433CB
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 14:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694787308;
	bh=47sMBTRRcCK2VDbtwWnooQQDI4uyuAgOsB3tm77egSA=;
	h=To:Subject:From:Date:From;
	b=CL0pt7qULOF8nhtA7nCbJscbuZ6a75a37VSGtIzapU8yG6nGFSxB/n0Dca+Kf0cBe
	 1Pc8e+Ynr+TsPcaoHeS2W6F3eqjhZ1xcKLoAGc1mKcNX4Mwi6Y66RerQT1n98YSBeG
	 ZGHUPsWUIuXygE4Cqo5GB0bblhmdPdNgKxm2baazh+zTuxHm8mubZ3opkHVyk1Xh7u
	 8MyUvE0DBQF3RchwT1gfXg6YekbJKfIIzSwZEnCcCtLHNXcL6mbL/vz4qgN3xWdq4N
	 wrINpzjub48b6lgN9wZfxLDdCmSEmJDka2XNt8VdTinbOumGgQiR1mJrn1HsI7ppI7
	 RY1tRh4aLAy1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B079EEE6457
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 14:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169478730871.1621.13460831125233045359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a11ed702858228490036729f5cfdb2601b7e857bd90b12f1a11623815e94d10
Date: Fri, 15 Sep 2023 14:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694787308
