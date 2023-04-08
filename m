Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB91110A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 07:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0764EC433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 07:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680937266;
	bh=p6nE/WamIWGTVh5xsjxEPPydR8wQDfumMG1sggtzn50=;
	h=To:Subject:From:Date:From;
	b=WJOkpm+sLgDqtOmqRYF8SaZw6CA7ienXNYilB70QZ93gvqouTumD30m0D6FRREU4C
	 BifBT/ubSsKfbT6VqSVjX/mIb21CFd01YpD4LG7COwTopfxk2a4tBuy0+G6ocLIbxW
	 3VLm34GU41zPlP2mwji0n1Aa2qYRKxpw/B95Lp/QbA8zmvQsJivFukYLajQlzPku9s
	 GF4fEOsWXDCc5C1RWuimCxrvC7sFjWJA82XNn1X1SyY9Z3Ra5vPRPvfBJ2PqiGGEZf
	 vekGS/fwfGkoBQwQgdrxk+VmFXXNu0TevljLdGksg2Wgu85DC1qnIsHE2va4PpAKZl
	 au2a85ANcFVZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3C62C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 07:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168093726579.4678.6860914835913457253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2713eb16ea4efa12ef1ae7ef5ff9f0112ab820c6cff1eb3f737073ab5bf04d3
Date: Sat, 08 Apr 2023 07:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680937265
