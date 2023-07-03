Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56451A34
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 06:46:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB85BC433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 06:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688366768;
	bh=6oE1i4t+xlvOY/aUn/XGlExoHLPajsTMUyY4MAfOWHs=;
	h=To:Subject:From:Date:From;
	b=CcFPG5tMCsgejT2ZS401wR6SfuXJcm4rjgHitTKhn57X4CB36d0OG4kCXTQl1ZB8R
	 nKFE5Rmtt/Xvl9aQutCM5zRa1oPdxc2gXYClGtCQHZhCLKA1yiKrWU35pWby3w4Er4
	 J7CgUtekxzWGtXIpO1OyC4BAwbDvWc45Vbr/c1Xrbs/iwwQ6sNZmRl9QhtikMrDh3U
	 i6b4/JP65/sU+LD98bS7NFTZSp0XdTVuirJnvh4kSZbaInVxtfYeXpMOwjRVSSx7nb
	 w8/PegLLQ41AvgXrchNil7E0QeS8btRNA/vaYBOnUeMZU0uGdzpcXJ9yxpAIxwt5Jb
	 UTmBUnfmL70VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD7DEB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 06:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168836676869.24420.13378802655971986677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c419846b81ee29d704190f4f67abdbaea9243998d24e4833f81fca758bc3a879
Date: Mon, 03 Jul 2023 06:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688366768
