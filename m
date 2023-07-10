Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 817ADFC09
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 19:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 054EFC433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 19:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689016629;
	bh=ghzhW9RA8fPiHxxNAH53k4bXqNfUWqAU5QpLcmtIeZ0=;
	h=To:Subject:From:Date:From;
	b=DABsP5F78YGIMMeZqUIev4DZEIfDX94OBvn0BLTVDiKmiCOcd4lfqnN6JoAfcnc6b
	 fDGE6ytqTTVhunfJWkgdPPuaSpvM6Z4+0erT58qwty0YggqHUCdR+vfGvNuMDb3ixl
	 PWkKpRTBKIVI+ZA68pSJ/2k0hn0Zv/PomdmSaSWCjT84//SmJS4mk+dxxcwfpQg1bR
	 aMyf2kSJgWzAK651kCcFblOxp+9J8uV40zCH8RE5jgYwBb5c2sNLodbtzqKdYm8fU0
	 GsUDStCgI4C0EEmEVt+Rtw/nMbFmpvQO1/8w+M/BR4cq5gC+jV00JYQgCX4cFRMMY7
	 g6IM36+Ccipjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C5EEB64DA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 19:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168901662877.19587.17288087191845471446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea3aa12b262fe54c9e5ebdb7cf383b75ed31da21797176d8d87f741596c25ce1
Date: Mon, 10 Jul 2023 19:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689016628
