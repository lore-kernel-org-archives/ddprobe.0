Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44243802
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 01:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0E1C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 01:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678412045;
	bh=2YdPvhgQvCLlz+E7RnJnYnwH3FYgMrBpwS6xPnbgtJo=;
	h=To:Subject:From:Date:From;
	b=AGRzjeQSlsNBARfI4U4x7c2oo81S/5Wg8UOPbh1OHRG2rc3vbzrY15fyeRRyFg+F5
	 nTbrr/8ZHCcK3iCOAsRd5njKOmztND5R2hsJ2TInlrrfFuZlByGbKIE9D69OfsRlNB
	 MX0qSHhD0fJ4jmEYuWU+THO8ZpuqH+HOsxmFyz0pgbBKs78ymEB6sUwBns2SzVPUAF
	 +Y2nRYZrMF5IAuVZ+kKMdlimBE3xdS9cPWIkfFl2KGn5A1chko++VwEIuWq918LMTu
	 V5hN++5AGfF3qt9NF8CHQWsA6g6wJ0kMm8l2pOmOsCoU8gOCj08u/96wLE9ahXoHb2
	 AwnC64WoNslbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD22EC64EC4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 01:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167841204576.5629.1836197373872069479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c3b4237220f01628d270f5becb9e98ce146b381094bc11a988a4e1d11fc53f
Date: Fri, 10 Mar 2023 01:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678412045
