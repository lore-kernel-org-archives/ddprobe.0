Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B68F847B
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 19:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC413C433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 19:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691867588;
	bh=Ciu59aWAedNzq9hwFI6DhawEf2hEHaz8KyHEqxm0vp0=;
	h=To:Subject:From:Date:From;
	b=H3aS6Pj3RxPXm0GtQhRp9QK3hL5jyEgCdFQBD9aPM4fwcVfCfvgxPjykonH5DL4Rh
	 Tf3kIkK3to+t0SPmGJvZf68tvTD7ghaFCPjmOF2ec+luGCYpbVGyvIzuGpmpbnvAzH
	 B/DjMIXGIr9M4GBCs6N7DGvdpKlJxwwPb8W9w/hCaVX1dtav7VM/zNEnm99AJigyqj
	 +gGsN+qgZSCqDuthbURYp3cD2Cb8+VMgAvV78I+QgnznjNUCVVP75Hlg37Ct0LXWEK
	 0K/cRw7bv8XPBsgliZhhtF+wTPBNq5K0qsY2vuh4ocg9H5CppzYk/dkFk2J8VGwoos
	 s+7+qtEI+mJbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA0C0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 19:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169186758867.13815.4375802682274744760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8142035b2e1e5bef5019137abec106e728c8ba09773c609d951d79d3b8955a
Date: Sat, 12 Aug 2023 19:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691867588
