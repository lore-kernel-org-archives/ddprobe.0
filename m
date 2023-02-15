Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DF86FC2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 16:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5B55C433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 16:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676478485;
	bh=JxiamQG0KlbC3KRqh+cu1JmJfmXy3Mws1IJKPhZUsaA=;
	h=To:Subject:From:Date:From;
	b=olO5k0QM5UeAuxNXj8x3KDQDGiTq7wNzKFIlOp1PYPgTseXGSERN7KxkBNBGkwZ3G
	 NUIoVhgmJNTr3Rd0khjNE7CP2KywgQKp5XVnauvQhgjFH/QOYISf6e60Ff2mFVNsde
	 5kBCH5ke87XkZXX9HpS+gfrfbKPh1xIrn43hPd3sDB7Mryi3F9cbhYsWr4dboXiqz/
	 V9YsGBeIvHCOzrPgPLVhw3cIgn91GytuusVSRngtMeDPFqm5cnBF7PxZzrWsaJbbfx
	 nEzlPIlnyqhiTrVsLMFjxe3x87LiLIHpT5raMZ6fCMQ4SdHRjJJf8Yrv4g7lnaPkTU
	 0IZabOxn/HX+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F49C636D4
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 16:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167647848579.13032.6198304583816886659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9ccc2215dd6bf30c52be2afd45049ca488caeeb882b794447930b01827c8f7
Date: Wed, 15 Feb 2023 16:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676478485
